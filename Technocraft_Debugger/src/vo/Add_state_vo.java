package vo;

import java.io.Serializable;

public class Add_state_vo implements Serializable{

	private Long state_id;
	private String state_name;
	private String state_desc;
	
	private Add_country_vo s;
	
	
	public Long getState_id() {
		return state_id;
	}
	public void setState_id(Long state_id) {
		this.state_id = state_id;
	}
	public String getState_name() {
		return state_name;
	}
	public void setState_name(String state_name) {
		this.state_name = state_name;
	}
	public String getState_desc() {
		return state_desc;
	}
	public void setState_desc(String state_desc) {
		this.state_desc = state_desc;
	}
	public Add_country_vo getS() {
		return s;
	}
	public void setS(Add_country_vo s) {
		this.s = s;
	}
}
