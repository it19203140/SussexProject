package com.sussex.payment;

public class Payment {
	private String prg;
	private String fullName;
	private String nameWithInitials;
	private String branch;
	private String bankReference;
	private String paymentFor;
	private String addtionalNote;
	private String image;
	
	public Payment() {};
	
	public Payment(String prg, String fullName, String nameWithInitials, String branch, String bankReference,
			String paymentFor, String addtionalNote, String image) {
		super();
		this.prg = prg;
		this.fullName = fullName;
		this.nameWithInitials = nameWithInitials;
		this.branch = branch;
		this.bankReference = bankReference;
		this.paymentFor = paymentFor;
		this.addtionalNote = addtionalNote;
		this.image = image;
	}

	public String getPrg() {
		return prg;
	}

	public void setPrg(String prg) {
		this.prg = prg;
	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public String getNameWithInitials() {
		return nameWithInitials;
	}

	public void setNameWithInitials(String nameWithInitials) {
		this.nameWithInitials = nameWithInitials;
	}

	public String getBranch() {
		return branch;
	}

	public void setBranch(String branch) {
		this.branch = branch;
	}

	public String getBankReference() {
		return bankReference;
	}

	public void setBankReference(String bankReference) {
		this.bankReference = bankReference;
	}

	public String getPaymentFor() {
		return paymentFor;
	}

	public void setPaymentFor(String paymentFor) {
		this.paymentFor = paymentFor;
	}

	public String getAddtionalNote() {
		return addtionalNote;
	}

	public void setAddtionalNote(String addtionalNote) {
		this.addtionalNote = addtionalNote;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}
	
	
}