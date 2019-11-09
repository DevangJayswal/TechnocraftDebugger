package vo;

import java.io.Serializable;


public class Image_Upload_vo implements Serializable{
	private int Image_ID;
	private String Image_Name;
	private String path;
	
	private user_mst_vo user_mpg_id;
	
	private String User_type;
	
	public String getUser_type() {
		return User_type;
	}
	public void setUser_type(String user_type) {
		User_type = user_type;
	}
	public int getImage_ID() {
		return Image_ID;
	}
	public void setImage_ID(int image_ID) {
		this.Image_ID = image_ID;
	}
	public String getImage_Name() {
		return Image_Name;
	}
	public void setImage_Name(String image_Name) {
		this.Image_Name = image_Name;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public user_mst_vo getUser_mpg_id() {
		return user_mpg_id;
	}
	public void setUser_mpg_id(user_mst_vo user_mpg_id) {
		this.user_mpg_id = user_mpg_id;
	}
}
