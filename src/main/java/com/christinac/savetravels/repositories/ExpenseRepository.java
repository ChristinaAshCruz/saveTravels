package com.christinac.savetravels.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.christinac.savetravels.models.Expense;

@Repository
public interface ExpenseRepository extends CrudRepository<Expense, Long>{
	
	@Override
	public List<Expense> findAll();
	
}
