package com.christinac.savetravels.services;

import java.util.List;

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
}
