package com.example.demo.model.SalesManagement;


import java.io.Serializable;
import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
//import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
//import javax.validation.constraints.NotNull;

@Entity
public class Employee implements Serializable {

	private static final long serialVersionUID = 1L;
	
	
	@Id
	private int employeeId;
	
	//@NotEmpty(message="First Name field cannot be empty")
	private String firstName;
	
	//@NotEmpty(message="Last Name field cannot be empty")
	private String lastName;
	
	private Date birthDate;
	
	private Date leavingDate;
	
	private String employeeCode;
	
	
	
	public String getEmployeeCode() {
		return employeeCode;
	}
	public void setEmployeeCode(String employeeCode) {
		this.employeeCode = employeeCode;
	}
	public Date getLeavingDate() {
		return leavingDate;
	}
	public void setLeavingDate(Date leavingDate) {
		this.leavingDate = leavingDate;
	}
	public String getReason() {
		return reason;
	}
	public void setReason(String reason) {
		this.reason = reason;
	}
	public String getResignation() {
		return resignation;
	}
	public void setResignation(String resignation) {
		this.resignation = resignation;
	}
	public String getSpecialNotes() {
		return specialNotes;
	}
	public void setSpecialNotes(String specialNotes) {
		this.specialNotes = specialNotes;
	}
	private String reason;
	
	private String resignation;
	
	private String specialNotes;
	
	//@NotEmpty(message="Gender field cannot be empty")
	private String gender;
	
	//@NotNull(message="N.I.C field cannot be empty") 
	private String NIC;
	
	//@NotEmpty(message="Marital status field cannot be empty")
	private String maritalStatus;
	
	//@NotNull(message="Bank Account field cannot be empty")
	private int bankAccountNo;
	
	//@NotEmpty(message="Current Address field cannot be empty")
	private String currentAddress;
	
	//@NotEmpty(message="Home Address field cannot be empty")
	private String homeAddress;
	
	//@NotEmpty(message="City field cannot be empty")
	private String city;
	
	//@NotNull(message="Postal Code field cannot be empty")
	private int postalCode;
	
	//@NotNull(message="Contact No field cannot be empty")
	private int contactNo1;
	
	private int contactNo2;
	
	//@Email @NotEmpty(message="Email field cannot be empty")
	private String email;
	
	//@NotEmpty(message="Designation field cannot be empty")
	private String designation;
	
	//@NotNull(message="Experienced Level  cannot be empty")
	private int experiencedLevel;
	
	//@NotNull(message="Basic Salary field cannot be empty")
	private double basicSalary;
	
	//@NotEmpty(message="Certificates field cannot be empty")
	private String certificates;
	
	//@NotEmpty(message="CV field cannot be empty")
	private String cv;
	
	private int departmentId;
	
	public int getDepartmentId() {
		return departmentId;
	}
	public void setDepartmentId(int departmentId) {
		this.departmentId = departmentId;
	}
	public String getDepartmentName() {
		return departmentName;
	}
	public void setDepartmentName(String departmentName) {
		this.departmentName = departmentName;
	}
	private String departmentName;
	

	private String profilePhoto;

	
	public String getProfilePhoto() {
		return profilePhoto;
	}
	public void setProfilePhoto(String profilePhoto) {
		this.profilePhoto = profilePhoto;
	}
	
	private Date joinedDate;
	
	private String leaveType;
	private String leaveReason;
	private Date leaveRequestedDate;
	private String leaveStartDate;
	private String leaveEndDate;
	
	
	public String getLeaveType() {
		return leaveType;
	}
	public void setLeaveType(String leaveType) {
		this.leaveType = leaveType;
	}
	public String getLeaveReason() {
		return leaveReason;
	}
	public void setLeaveReason(String leaveReason) {
		this.leaveReason = leaveReason;
	}
	public Date getLeaveRequestedDate() {
		return leaveRequestedDate;
	}
	public void setLeaveRequestedDate(Date leaveRequestedDate) {
		this.leaveRequestedDate = leaveRequestedDate;
	}
	public String getLeaveStartDate() {
		return leaveStartDate;
	}
	public void setLeaveStartDate(String leaveStartDate) {
		this.leaveStartDate = leaveStartDate;
	}
	public String getLeaveEndDate() {
		return leaveEndDate;
	}
	public void setLeaveEndDate(String leaveEndDate) {
		this.leaveEndDate = leaveEndDate;
	}
	@NotEmpty(message="License field cannot be empty")
	private String drivingLicense;
	
	@NotEmpty(message="Bike Number field cannot be empty")
	private String bikeNo;
	
	@NotEmpty(message="User name field cannot be empty")
	private String userName;
	
	@NotEmpty(message="password field cannot be empty")
	private String password;
	
	@NotEmpty(message="Vehicle Number field cannot be empty")
	private String VehicleNo;
	
	@NotEmpty(message="Availability field cannot be empty")
	private String availability;
	
	
	public int getEmployeeId() {
		return employeeId;
	}
	public void setEmployeeId(int employeeId) {
		this.employeeId = employeeId;
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
	public Date getBirthDate() {
		return birthDate;
	}
	public void setBirthDate(Date birthDate) {
		this.birthDate = birthDate;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getNIC() {
		return NIC;
	}
	public void setNIC(String nIC) {
		NIC = nIC;
	}
	public String getMaritalStatus() {
		return maritalStatus;
	}
	public void setMaritalStatus(String maritalStatus) {
		this.maritalStatus = maritalStatus;
	}
	public int getBankAccountNo() {
		return bankAccountNo;
	}
	public void setBankAccountNo(int bankAccountNo) {
		this.bankAccountNo = bankAccountNo;
	}
	
	public String getCurrentAddress() {
		return currentAddress;
	}
	public void setCurrentAddress(String currentAddress) {
		this.currentAddress = currentAddress;
	}
	public String getHomeAddress() {
		return homeAddress;
	}
	public void setHomeAddress(String homeAddress) {
		this.homeAddress = homeAddress;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public int getPostalCode() {
		return postalCode;
	}
	public void setPostalCode(int postalCode) {
		this.postalCode = postalCode;
	}
	public int getContactNo1() {
		return contactNo1;
	}
	public void setContactNo1(int contactNo1) {
		this.contactNo1 = contactNo1;
	}
	public int getContactNo2() {
		return contactNo2;
	}
	public void setContactNo2(int contactNo2) {
		this.contactNo2 = contactNo2;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getDesignation() {
		return designation;
	}
	public void setDesignation(String designation) {
		this.designation = designation;
	}
	public int getExperiencedLevel() {
		return experiencedLevel;
	}
	public void setExperiencedLevel(int experiencedLevel) {
		this.experiencedLevel = experiencedLevel;
	}
	public double getBasicSalary() {
		return basicSalary;
	}
	public void setBasicSalary(double basicSalary) {
		this.basicSalary = basicSalary;
	}
	public String getCertificates() {
		return certificates;
	}
	public void setCertificates(String certificates) {
		this.certificates = certificates;
	}
	public String getCv() {
		return cv;
	}
	public void setCv(String cv) {
		this.cv = cv;
	}
	
	public Date getJoinedDate() {
		return joinedDate;
	}
	public void setJoinedDate(Date joinedDate) {
		this.joinedDate = joinedDate;
	}
	public String getDrivingLicense() {
		return drivingLicense;
	}
	public void setDrivingLicense(String drivingLicense) {
		this.drivingLicense = drivingLicense;
	}
	public String getBikeNo() {
		return bikeNo;
	}
	public void setBikeNo(String bikeNo) {
		this.bikeNo = bikeNo;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getVehicleNo() {
		return VehicleNo;
	}
	public void setVehicleNo(String vehicleNo) {
		VehicleNo = vehicleNo;
	}
	public String getAvailability() {
		return availability;
	}
	public void setAvailability(String availability) {
		this.availability = availability;
	}
	
	
	

}
