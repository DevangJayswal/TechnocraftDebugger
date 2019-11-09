package vo;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

public class user_mst_vo implements Serializable {
	
	private long user_id;
	private String user_name;
	private String passwd;
	private String user_type;
	
	//Email Status
	private String u_email;
	private int status;
	private Set linkset =	new HashSet(0);
	
	public long getUser_id() {
		return user_id;
	}
	public void setUser_id(long user_id) {
		this.user_id = user_id;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getPasswd() {
		return passwd;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	public String getUser_type() {
		return user_type;
	}
	public void setUser_type(String user_type) {
		this.user_type = user_type;
	}
	public String getU_email() {
		return u_email;
	}
	public void setU_email(String u_email) {
		this.u_email = u_email;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public Set getLinkset() {
		return linkset;
	}
	public void setLinkset(Set linkset) {
		this.linkset = linkset;
	}
}