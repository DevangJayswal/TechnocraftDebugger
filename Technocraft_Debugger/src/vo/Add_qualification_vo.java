package vo;

public class Add_qualification_vo {
	
	private long qualification_id;
	private String qualification_name;
	private String qualification_desc;
	
	private user_mst_vo usrid;
	
	public user_mst_vo getUsrid() {
		return usrid;
	}
	public void setUsrid(user_mst_vo usrid) {
		this.usrid = usrid;
	}
	public long getQualification_id() {
		return qualification_id;
	}
	public void setQualification_id(long qualification_id) {
		this.qualification_id = qualification_id;
	}
	public String getQualification_name() {
		return qualification_name;
	}
	public void setQualification_name(String qualification_name) {
		this.qualification_name = qualification_name;
	}
	public String getQualification_desc() {
		return qualification_desc;
	}
	public void setQualification_desc(String qualification_desc) {
		this.qualification_desc = qualification_desc;
	}
	
	

}
