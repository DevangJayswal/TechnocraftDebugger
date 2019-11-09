package vo;

import java.io.Serializable;

public class Job_Apply_vo implements Serializable{
	
	private long Apply_id;
	private Add_job_vo Job_id;
	private user_mst_vo User_id;
	
	public long getApply_id() {
		return Apply_id;
	}
	public void setApply_id(long apply_id) {
		Apply_id = apply_id;
	}
	public Add_job_vo getJob_id() {
		return Job_id;
	}
	public void setJob_id(Add_job_vo job_id) {
		Job_id = job_id;
	}
	public user_mst_vo getUser_id() {
		return User_id;
	}
	public void setUser_id(user_mst_vo user_id) {
		User_id = user_id;
	}
}
