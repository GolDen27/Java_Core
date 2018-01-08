package com.epam.helloworld;

import com.epam.calculator.Calculator;

public class HelloWorld
{
	public static void main(String[] args)
	{
		int a=2;
		int b=3;
		Calculator calc=new Calculator();
		System.out.println("Hello World!");
		System.out.println(a+"+"+b+"="+calc.sum(a,b));
	}
}