package com.pluralsight;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import junit.framework.TestCase;

public class Password extends TestCase {


	public void runtest() {
		String password = "samagra";
		BCryptPasswordEncoder  passwordEncoder = new BCryptPasswordEncoder();
		String hashPassword =  passwordEncoder.encode(password);
		System.out.println(hashPassword);
	}
}
