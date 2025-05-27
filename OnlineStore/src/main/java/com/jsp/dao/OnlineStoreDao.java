package com.jsp.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.jsp.dto.OnlineStore;

@Repository
public class OnlineStoreDao {

	@Autowired
	EntityManager manager;

	@Autowired
	EntityTransaction transaction;
	
	// method to insert a product into the database
	public void addOnlineGroceryStore(OnlineStore onlinestore) {
		transaction.begin();
		manager.persist(onlinestore);
		transaction.commit();
	}
	
	// method to search product by name or category
	public List<OnlineStore> findProductByNameCategory(String name, String category) {
		String jpql = "SELECT p FROM OnlineStore p WHERE p.name = :name OR p.category = :category";
		return manager.createQuery(jpql, OnlineStore.class)
		             .setParameter("name", name)
		             .setParameter("category", category)
		             .getResultList();
	}
	
	// method to get all products from the database
	public List<OnlineStore> getAllOnlinestore(){
		Query qry = manager.createQuery("select onlStr from OnlineStore onlStr");
		return qry.getResultList();
	}
	
	// method to purchase a product and update the stock quantity
	public OnlineStore purchaseProduct(String name, int qty) {
		Query q = manager.createQuery("SELECT o FROM OnlineStore o WHERE o.name = :name");
		q.setParameter("name", name);
		List<OnlineStore> results = q.getResultList();
		
		if (!results.isEmpty()) {
			OnlineStore product = results.get(0);
			if (product.getStockQuantity() >= qty) {
				product.setStockQuantity(product.getStockQuantity() - qty);
				transaction.begin();
				manager.merge(product);
				transaction.commit();
				return product;
			}
		}
		return null;
	}
}
