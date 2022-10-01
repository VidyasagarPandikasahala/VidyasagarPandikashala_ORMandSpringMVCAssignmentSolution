package customerrelationmanager.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import customerrelationmanager.dao.CustomerRelationManagerDao;
import customerrelationmanager.model.CustomerRelationManager;

@Controller
public class CustomerRelationManagerController {
	
	//bean is created for Dao interface through autowired annotation
	@Autowired
	CustomerRelationManagerDao crmdao;
	
	//Mapped to the home page
	@GetMapping("/")
	public String home() {
		return "home";

	}
	//mapped to the customer list
	@GetMapping("customerlist")
	public String showCustomers(Model model) {
		List<CustomerRelationManager> customer = crmdao.getList();
		model.addAttribute("customers", customer);
		return "showlist";
	}
	
	//mapped to add page 
	@GetMapping("add")
	public String addCustomer(Model model) {
		
		CustomerRelationManager customer = new CustomerRelationManager();
		model.addAttribute("customer", customer);
		return"form";
	}
	
	//update operation is done in the .jsp using model class and redirected to the form.jsp
	@GetMapping("edit")
	public String updateCustomer(Model model,@RequestParam("id")int id) {
		CustomerRelationManager customer = crmdao.getCustomer(id);
	
		model.addAttribute("customer",customer);
		return "form";
	}
	
	//after deleting it is redirected to the customerlist page
	@GetMapping("delete")
	public String deleteCustomer(Model model,@RequestParam("id")int id) {
		crmdao.deleteCustomer(id);
		return  "redirect:/customerlist";
	}
	
	//after clicking the save button it is redirected to the customerlist page
	@PostMapping("save")
	public String saveCustomer(Model model, @ModelAttribute("customer") CustomerRelationManager customerRelationManager) {
		System.out.println(customerRelationManager);
		crmdao.createCustomer(customerRelationManager);
		return "redirect:/customerlist";
	}
}