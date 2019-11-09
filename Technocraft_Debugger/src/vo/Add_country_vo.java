package vo;

import java.io.Serializable;

public class Add_country_vo implements Serializable{
	private Long country_id;
	private String country_name;
	private String country_desc;
	
	
	
	public Long getCountry_id() {
		return country_id;
	}
	public void setCountry_id(Long country_id) {
		this.country_id = country_id;
	}
	public String getCountry_name() {
		return country_name;
	}
	public void setCountry_name(String country_name) {
		this.country_name = country_name;
	}
	public String getCountry_desc() {
		return country_desc;
	}
	public void setCountry_desc(String country_desc) {
		this.country_desc = country_desc;
	}
	
}
