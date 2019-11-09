package vo;

import java.io.Serializable;

public class Add_cat_vo implements Serializable{
	private long cat_id;
	private String cat_name;
	private String cat_desc;
	
	public long getCat_id() {
		return cat_id;
	}
	public void setCat_id(long cat_id) {
		this.cat_id = cat_id;
	}
	public String getCat_name() {
		return cat_name;
	}
	public void setCat_name(String cat_name) {
		this.cat_name = cat_name;
	}
	public String getCat_desc() {
		return cat_desc;
	}
	public void setCat_desc(String cat_desc) {
		this.cat_desc = cat_desc;
	}

}
