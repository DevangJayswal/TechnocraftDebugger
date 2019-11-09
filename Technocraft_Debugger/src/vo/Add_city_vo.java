package vo;

import java.io.Serializable;

public class Add_city_vo implements Serializable{

	private long city_id;
	private String city_name;
	private String city_desc;
	
	private Add_country_vo v2;
	private Add_state_vo v3 ;
	
	public long getCity_id() {
		return city_id;
	}
	public void setCity_id(long city_id) {
		this.city_id = city_id;
	}
	public String getCity_name() {
		return city_name;
	}
	public void setCity_name(String city_name) {
		this.city_name = city_name;
	}
	public String getCity_desc() {
		return city_desc;
	}
	public void setCity_desc(String city_desc) {
		this.city_desc = city_desc;
	}
	public Add_country_vo getV2() {
		return v2;
	}
	public void setV2(Add_country_vo v2) {
		this.v2 = v2;
	}
	public Add_state_vo getV3() {
		return v3;
	}
	public void setV3(Add_state_vo v3) {
		this.v3 = v3;
	}
	
}
