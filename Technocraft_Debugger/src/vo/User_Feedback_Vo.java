package vo;

public class User_Feedback_Vo {
	
	private long fb_id;
	private String fb_username;
	private String fb_email;
	private String fb_message;
	
	
	public long getFb_id() {
		return fb_id;
	}
	public void setFb_id(long fb_id) {
		this.fb_id = fb_id;
	}
	public String getFb_username() {
		return fb_username;
	}
	public void setFb_username(String fb_username) {
		this.fb_username = fb_username;
	}
	public String getFb_email() {
		return fb_email;
	}
	public void setFb_email(String fb_email) {
		this.fb_email = fb_email;
	}
	public String getFb_message() {
		return fb_message;
	}
	public void setFb_message(String fb_message) {
		this.fb_message = fb_message;
	}
}
