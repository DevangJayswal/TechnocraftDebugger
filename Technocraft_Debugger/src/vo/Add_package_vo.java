package vo;

import java.io.Serializable;
import java.util.Date;

public class Add_package_vo implements Serializable{

	private long pack_id;
	private String pack_name;
	private String pack_desc;
	private String pack_price;
	private Date pack_validity;
	private String pack_type;
	
	public long getPack_id() {
		return pack_id;
	}
	public void setPack_id(long pack_id) {
		this.pack_id = pack_id;
	}
	public String getPack_name() {
		return pack_name;
	}
	public void setPack_name(String pack_name) {
		this.pack_name = pack_name;
	}
	public String getPack_desc() {
		return pack_desc;
	}
	public void setPack_desc(String pack_desc) {
		this.pack_desc = pack_desc;
	}
	public String getPack_price() {
		return pack_price;
	}
	public void setPack_price(String pack_price) {
		this.pack_price = pack_price;
	}
	public Date getPack_validity() {
		return pack_validity;
	}
	public void setPack_validity(Date pack_validity) {
		this.pack_validity = pack_validity;
	}
	public String getPack_type() {
		return pack_type;
	}
	public void setPack_type(String pack_type) {
		this.pack_type = pack_type;
	}
}
