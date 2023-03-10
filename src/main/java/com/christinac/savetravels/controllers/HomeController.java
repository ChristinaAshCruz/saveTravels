package com.christinac.savetravels.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;

import com.christinac.savetravels.models.Expense;
import com.christinac.savetravels.services.ExpenseService;

@Controller
public class HomeController {
	
	@Autowired
	private ExpenseService expenseServ;
	
	@GetMapping("/")
	public String index(Model model, @ModelAttribute("newExpense") Expense newExpense) {
		List<Expense> allExpenses = expenseServ.findAll();
		model.addAttribute("allExpenses", allExpenses);
		return "index.jsp";
	}
	
	@PostMapping("/expense/new")
	public String createExpense(@Valid @ModelAttribute("newExpense") Expense newExpense, BindingResult result, Model model) {
		if(result.hasErrors()) {
			List<Expense> allExpenses = expenseServ.findAll();
			model.addAttribute("allExpenses", allExpenses);
			return "index.jsp";
		}
		expenseServ.create(newExpense);
		return "redirect:/";
	}
	
	@GetMapping("/expense/{id}/edit")
	public String editExpense(@PathVariable("id") Long id, Model model) {
		Expense thisExpense = expenseServ.findById(id);
		model.addAttribute("thisExpense", thisExpense);
		return "editExpense.jsp";
	}
	
	@PutMapping("/expense/{id}/edit")
	public String updateExpense(@Valid @ModelAttribute("thisExpense") Expense thisExpense, BindingResult result, @PathVariable("id") Long id) {
		if(result.hasErrors()) {
			return "editExpense.jsp";
		} else {
			thisExpense.setId(id);
			expenseServ.update(thisExpense);
			return "redirect:/";
		}
	}
	
	@GetMapping("/expense/{id}/delete")
	public String deleteExpense(@PathVariable("id") Long id) {
		expenseServ.delete(id);
		return "redirect:/";
		
	}
	
	@GetMapping("/expense/{id}")
	public String viewExpense(@PathVariable("id") Long id, @ModelAttribute("expense") Expense expense, Model model) {
		//use repo to findbyid 
		Expense thisExpense = expenseServ.findById(id);
		model.addAttribute("thisExpense", thisExpense);
		return "viewExpense.jsp";
		//return the view
	}
	
	
	
	
	
}