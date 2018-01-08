package com.epam.calculator;

import com.epam.calculator.operation.Adder;

/**
 * The calculator
 * @author epam
 * 
 */
public class Calculator
{
	/**
	 * calculates the sum of numbers
	 * @param a array of numbers
	 * @return sum
	 */
	public int sum(int... a)
	{
		Adder adder=new Adder();
		for(int i:a)
		{
			adder.add(i);
		}
		return adder.getSum();
		
	}
}