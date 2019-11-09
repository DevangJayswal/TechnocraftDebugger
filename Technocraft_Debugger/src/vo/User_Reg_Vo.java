package vo;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;



public class User_Reg_Vo implements Serializable{

	private long u_id;
	private String u_name;
	private String u_email;
	private String u_number;
	private String u_address;

	private String u_pincode;
	private String u_dob;
	
	private Add_country_vo country;
	private Add_state_vo state;
	private Add_city_vo city;
	
	private boolean user_gender;
	
	private user_mst_vo user_mst_id;
	
	private Set attachset =	new HashSet(0);
	
	public Set getAttachset() {
		return attachset;
	}
	public void setAttachset(Set attachset) {
		this.attachset = attachset;
	}
	
	public user_mst_vo getUser_mst_id() {
		return user_mst_id;
	}
	public void setUser_mst_id(user_mst_vo user_mst_id) {
		this.user_mst_id = user_mst_id;
	}
	public Add_country_vo getCountry() {
		return country;
	}
	public void setCountry(Add_country_vo country) {
		this.country = country;
	}
	public Add_state_vo getState() {
		return state;
	}
	public void setState(Add_state_vo state) {
		this.state = state;
	}
	public Add_city_vo getCity() {
		return city;
	}
	public void setCity(Add_city_vo city) {
		this.city = city;
	}
	public long getU_id() {
		return u_id;
	}
	public void setU_id(long u_id) {
		this.u_id = u_id;
	}
	public String getU_name() {
		return u_name;
	}
	public void setU_name(String u_name) {
		this.u_name = u_name;
	}
	public String getU_email() {
		return u_email;
	}
	public void setU_email(String u_email) {
		this.u_email = u_email;
	}
	public String getU_number() {
		return u_number;
	}
	public void setU_number(String u_number) {
		this.u_number = u_number;
	}
	public String getU_address() {
		return u_address;
	}
	public void setU_address(String u_address) {
		this.u_address = u_address;
	}
	public String getU_pincode() {
		return u_pincode;
	}
	public void setU_pincode(String u_pincode) {
		this.u_pincode = u_pincode;
	}
	public String getU_dob() {
		return u_dob;
	}
	public void setU_dob(String u_dob) {
		this.u_dob = u_dob;
	}
	public boolean isUser_gender() {
		return user_gender;
	}
	public void setUser_gender(boolean user_gender) {
		this.user_gender = user_gender;
	}	
	
}
