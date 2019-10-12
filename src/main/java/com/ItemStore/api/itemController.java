package com.ItemStore.api;


import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class itemController {
	
	/* Create data */
	List<Item> items = new ArrayList<>(Arrays.asList(
	        new Item("001", "Snack", 1),
	        new Item("002", "Lollipop", 1)
	    ));
	
	/* Index view */
	@RequestMapping("/index")
    public String index() {
        return "index";
    }
	
	/* Form for adding item */
	@RequestMapping("/addingForm")
    public String addingForm() {
        return "add";
    }
	
	/* Return all item */
    public List<Item> getAllItems() {
        return items;
    }
    
    /* Find target item by Id */
    public Item findItem(String id) {
    	Item targetItem = new Item();
		
		for(int i = 0; i < items.size(); i++) {
    		if(items.get(i).getId().equals(id)) {
    			targetItem = items.get(i);
    			break;
    		}
    	}
		
    	return targetItem;
    }
    
    /* Delete target item by name */
    public boolean delete(String name) {
    	
    	for(int i = 0; i < items.size(); i++) {
    		if(items.get(i).getName().equals(name)) {
    			items.remove(i);
    			break;
    		}
    	}
    	
    	return true;
    }
    
    /* Receive item's name from user */
    @RequestMapping(value = "/delete", method=RequestMethod.POST)
    public String deleteItems(@RequestParam("t1") String name) {
    	delete(name);
    	return "redirect:/index";
    }
    
    /* Add new item */
    @RequestMapping(value = "/add", method=RequestMethod.POST)
    public String addItems(@RequestParam("id") String id, @RequestParam("name") String name, @RequestParam("amount") int amount) {
    	
    	Item newItem = new Item(id,name,amount);
    	items.add(newItem);

    	return "redirect:/showAll";
    }
	
    /* Show all items */
	@RequestMapping("/showAll")
	public ModelAndView callList() {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/showAll");
		mv.addObject("items", items);
		
		return mv;
	}
	
	/* Show detail of target item */
	@RequestMapping(value = "/display/{id}", method=RequestMethod.GET)
    public ModelAndView display(@PathVariable("id") String id) {
		Item targetItem = findItem(id);
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("display");
		mv.addObject("items", targetItem);
		
		return mv;
    }
	
	/* Update data */
    @RequestMapping(value = "/update", method=RequestMethod.POST)
    public String update(@RequestParam("oldId") String oldId, @RequestParam("itemId") String id, @RequestParam("itemName") String name, @RequestParam("itemAmount") int amount) {
    	    	
    	Item targetItem = new Item();
    	
    	targetItem = findItem(oldId);
    	
    	targetItem.setId(id);
    	targetItem.setName(name);
    	targetItem.setAmount(amount);

    	return "redirect:/display/"+id;
    }
	
}
