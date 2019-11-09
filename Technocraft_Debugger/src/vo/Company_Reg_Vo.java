package vo;

import java.io.Serializable;

public class Company_Reg_Vo implements Serializable {

	private long c_id;
	private String c_name;
	private String c_email;
	private String c_number;
	private String c_address;
	private String c_web_address;
	private String c_pincode;
	
	private Add_country_vo country;
	private Add_state_vo state;
	private Add_city_vo city;
	
	private user_mst_vo user_id;
	
	
	public String getC_web_address() {
		return c_web_address;
	}
	public void setC_web_address(String c_web_address) {
		this.c_web_address = c_web_address;
	}
	public user_mst_vo getUser_id() {
		return user_id;
	}
	public void setUser_id(user_mst_vo user_id) {
		this.user_id = user_id;
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
	public long getC_id() {
		return c_id;
	}
	public void setC_id(long c_id) {
		this.c_id = c_id;
	}
	public String getC_name() {
		return c_name;
	}
	public void setC_name(String c_name) {
		this.c_name = c_name;
	}
	public String getC_email() {
		return c_email;
	}
	public void setC_email(String c_email) {
		this.c_email = c_email;
	}
	public String getC_number() {
		return c_number;
	}
	public void setC_number(String c_number) {
		this.c_number = c_number;
	}
	public String getC_address() {
		return c_address;
	}
	public void setC_address(String c_address) {
		this.c_address = c_address;
	}
	
	public String getC_pincode() {
		return c_pincode;
	}
	public void setC_pincode(String c_pincode) {
		this.c_pincode = c_pincode;
	}
}
