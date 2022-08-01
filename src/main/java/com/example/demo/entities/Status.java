package com.example.demo.entities;

public enum Status {
	HANDLED("h"),ASSIGN("a"),CLOSED("c"),REJECTED("r"),PROCCESSING("p");
	 private String string;
	 
	Status(String str) {
		this.string=str;
	}
	


	public String getString() {
		return string;
	}
	
}
