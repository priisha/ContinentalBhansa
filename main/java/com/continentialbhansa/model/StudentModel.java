package com.islington.model;

import java.time.LocalDateTime;

public class StudentModel {
	private int id;
	private String firstName;
	private String lastName;
	private LocalDateTime dob;
	private String gender;
	private String email;
	private String number;
	private String password;
	private ProgramModel program;
	private String imgUrl;
	
	public StudentModel() {}


	public StudentModel(int id, String firstName, String lastName, LocalDateTime dob, String gender, String email,
			String number, String password, ProgramModel program, String imgUrl) {
		super();
		this.id = id;
		this.firstName = firstName;
		this.lastName = lastName;
		this.dob = dob;
		this.gender = gender;
		this.email = email;
		this.number = number;
		this.password = password;
		this.program = program;
		this.imgUrl = imgUrl;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getFirstName() {
		return firstName;
	}


	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}


	public String getLastName() {
		return lastName;
	}


	public void setLastName(String lastName) {
		this.lastName = lastName;
	}


	public LocalDateTime getDob() {
		return dob;
	}


	public void setDob(LocalDateTime dob) {
		this.dob = dob;
	}


	public String getGender() {
		return gender;
	}


	public void setGender(String gender) {
		this.gender = gender;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getNumber() {
		return number;
	}


	public void setNumber(String number) {
		this.number = number;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public ProgramModel getProgram() {
		return program;
	}


	public void setProgram(ProgramModel program) {
		this.program = program;
	}


	public String getImgUrl() {
		return imgUrl;
	}


	public void setImgUrl(String imgUrl) {
		this.imgUrl = imgUrl;
	}
	}
