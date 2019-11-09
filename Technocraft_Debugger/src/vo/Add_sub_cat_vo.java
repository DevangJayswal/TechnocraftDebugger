package vo;

import java.io.Serializable;

public class Add_sub_cat_vo implements Serializable{

	private Long sub_cat_id;
	private String sub_cat_name;
	private String sub_cat_desc;
	private Add_cat_vo c;
	
	
	public Add_cat_vo getC() {
		return c;
	}
	public void setC(Add_cat_vo c) {
		this.c = c;
	}
	
	public Long getSub_cat_id() {
		return sub_cat_id;
	}
	public void setSub_cat_id(Long sub_cat_id) {
		this.sub_cat_id = sub_cat_id;
	}
	public String getSub_cat_name() {
		return sub_cat_name;
	}
	public void setSub_cat_name(String sub_cat_name) {
		this.sub_cat_name = sub_cat_name;
	}
	public String getSub_cat_desc() {
		return sub_cat_desc;
	}
	public void setSub_cat_desc(String sub_cat_desc) {
		this.sub_cat_desc = sub_cat_desc;
	}
	
}
