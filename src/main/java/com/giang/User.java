package com.giang;

public class User {
	private String firstName;
    private String lastName;
    private String email;
    private String heardFrom;
    private String wantsUpdates;
    private String contactVia;
	
	public User() {
		firstName="";
		lastName="";
		email="";
		heardFrom="";
		wantsUpdates="";
		contactVia="";
	}

	public User(String _firstname, String _lastname, String _email, String _heardFrom, String _wantsUpdates, String _contactVia) {
		firstName=_firstname;
		lastName=_lastname;
		email=_email;
		heardFrom=_heardFrom;
		wantsUpdates=_wantsUpdates;
		contactVia=_contactVia;
	}
	
	public String getFirstName() {
		return firstName;
	}
	
	public void setFirstName(String _firstname) {
		firstName=_firstname;
	}
	
	public String getLastName() {
		return lastName;
	}

	public void setLastName(String _lastname) {
		lastName=_lastname;
	}
	
	public String getEmail() {
		return email;
	}

	public void setEmail(String _email) {
		email=_email;
	}
	
	public String getHeardFrom() {
		return heardFrom;
	}

	public void setHeardFrom(String heardFrom) {
		this.heardFrom = heardFrom;
	}

	public String getWantsUpdates() {
		return wantsUpdates;
	}

	public void setWantsUpdates(String wantsUpdates) {
		this.wantsUpdates = wantsUpdates;
	}

	public String getContactVia() {
		return contactVia;
	}

	public void setContactVia(String contactVia) {
		this.contactVia = contactVia;
	}
}
