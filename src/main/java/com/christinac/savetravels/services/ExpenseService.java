package com.christinac.savetravels.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.christinac.savetravels.models.Expense;
import com.christinac.savetravels.repositories.ExpenseRepository;

@Service
public class ExpenseService {
	
	@Autowired
	private ExpenseRepository expenseRepo;
	
	public List<Expense> findAll(){
		return expenseRepo.findAll();
	}
	
	public Expense create(Expense e) {
		return expenseRepo.save(e);
	}
	
	public Expense findById(Long id) {
		Optional<Expense> optionalExpense = expenseRepo.findById(id);
		if(optionalExpense.isPresent()) {
			return optionalExpense.get();			
		} else {
			return null;
		}
	}
	
	public Expense update(Expense e) {
		return expenseRepo.save(e);
	}
}
