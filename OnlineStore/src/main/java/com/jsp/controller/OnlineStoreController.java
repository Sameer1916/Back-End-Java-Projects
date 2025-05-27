package com.jsp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import com.jsp.dao.OnlineStoreDao;
import com.jsp.dto.OnlineStore;

@Controller
public class OnlineStoreController {

	@Autowired
	OnlineStoreDao dao;

	// to check if server is running successfully
	@RequestMapping("/test")
	@ResponseBody
	public String testSpring() {
		System.out.println("working request test mapping...");
		return "<h1>SPRING IS WORKING.....!</h1>";
	}

	// to display the form to add a new product
	@RequestMapping("/products")
	public ModelAndView getOnlineGroceryForm() {
		ModelAndView mv = new ModelAndView();
		mv.addObject("onlinestore", new OnlineStore());
		mv.setViewName("create");
		return mv;
	}

	// to save the product to database
	@RequestMapping("/save")
	public ModelAndView saveOnlineStore(@ModelAttribute OnlineStore onlinestore) {
	    dao.addOnlineGroceryStore(onlinestore);
	    ModelAndView mv = new ModelAndView();
	    mv.addObject("msg", "Product added successfully!");
	    mv.setViewName("success");
	    return mv;
	}

	// to display all products in the database
	@RequestMapping("/allproducts")
	public ModelAndView displayALLProducts() {
		List<OnlineStore> onlineStore = dao.getAllOnlinestore();
		ModelAndView mv = new ModelAndView();
		mv.addObject("allonlinestore", onlineStore);
		mv.setViewName("allproductlist");
		System.out.println("Found products: " + onlineStore.size());
		return mv;
	}

	// to search product by name or category
	@RequestMapping("/searchprdt")
	public ModelAndView findProduct(@RequestParam("name") String name, @RequestParam("category") String category) {
		List<OnlineStore> foundProducts = dao.findProductByNameCategory(name, category);

		if (name != null && !foundProducts.isEmpty()) {
			ModelAndView mv = new ModelAndView();
			mv.addObject("onlinestore", foundProducts);
			mv.setViewName("search");
			return mv;
		} else {
			ModelAndView mv = new ModelAndView();
			mv.addObject("message", "No product found matching your search.");
			mv.setViewName("error");
			return mv;
		}
	}

	// to load the product search form page
	@RequestMapping("/loadSearchForm")
	public String loadSearchForm() {
	    return "findprdt";
	}

	// to show the form to buy a product
	@RequestMapping("/buy")
	public ModelAndView buyProduct(@RequestParam(name = "name", required = false, defaultValue = "") String name,
			@RequestParam(name = "stockQty", required = false, defaultValue = "1") int stockQty) {
		ModelAndView mv = new ModelAndView();
		System.out.println("Name: " + name);
		System.out.println("Stock Qty: " + stockQty);
		mv.addObject("onlinestore", new OnlineStore());
		mv.setViewName("buyproduct");
		return mv;
	}

	// to handle product purchase and update stock
	@RequestMapping("/buyproduct")
	public ModelAndView updateProduct(@RequestParam String name, @RequestParam int stockQty) {
		OnlineStore updated = dao.purchaseProduct(name,  stockQty);
		ModelAndView mv = new ModelAndView();

		if (updated != null) {
			double totalCost = updated.getPrice() * stockQty;
			mv.addObject("msg", "Purchased Product successfully...");
			mv.addObject("purchaseName", updated.getName());
			mv.addObject("purchaseStockQnty", stockQty);
			mv.addObject("purchasePrice", updated.getPrice());
			mv.addObject("totalCost", totalCost);
			mv.addObject("remainingStock", updated.getStockQuantity());
			mv.setViewName("showmsg");
		} else {
			mv.addObject("message", "Product doesn't exist or insufficient stock...");
			mv.setViewName("error");
		}
		return mv;
	}

	// to show the payment or billing page
	@RequestMapping("/sell")
	public ModelAndView payBill() {
		ModelAndView mv = new ModelAndView();
		mv.addObject("amountmsg", "Scan the QR Code");
		mv.setViewName("amount");
		return mv;
	}

}
