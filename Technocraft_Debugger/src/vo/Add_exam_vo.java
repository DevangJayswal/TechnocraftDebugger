package vo;

import java.io.Serializable;
import java.util.Date;

public class Add_exam_vo implements Serializable{
	
	private long exam_id;
	private String exam_name;
	private String exam_desc;
	private String from_exam_date;
	private String to_exam_date;
	private int exam_time_hour;
	private int exam_time_min;
	private int total_marks;
	private int pass_marks;
	private int exam_status;
	
	private Add_cat_vo v1;
	private Add_sub_cat_vo v2;
	
	private user_mst_vo usrid;
	
	public String getFrom_exam_date() {
		return from_exam_date;
	}
	public void setFrom_exam_date(String from_exam_date) {
		this.from_exam_date = from_exam_date;
	}
	public String getTo_exam_date() {
		return to_exam_date;
	}
	public void setTo_exam_date(String to_exam_date) {
		this.to_exam_date = to_exam_date;
	}
	public int getExam_time_hour() {
		return exam_time_hour;
	}
	public void setExam_time_hour(int exam_time_hour) {
		this.exam_time_hour = exam_time_hour;
	}
	public int getExam_time_min() {
		return exam_time_min;
	}
	public void setExam_time_min(int exam_time_min) {
		this.exam_time_min = exam_time_min;
	}
	public int getExam_status() {
		return exam_status;
	}
	public void setExam_status(int exam_status) {
		this.exam_status = exam_status;
	}
	public user_mst_vo getUsrid() {
		return usrid;
	}
	public void setUsrid(user_mst_vo usrid) {
		this.usrid = usrid;
	}
	public long getExam_id() {
		return exam_id;
	}
	public void setExam_id(long exam_id) {
		this.exam_id = exam_id;
	}
	public String getExam_name() {
		return exam_name;
	}
	public void setExam_name(String exam_name) {
		this.exam_name = exam_name;
	}
	public String getExam_desc() {
		return exam_desc;
	}
	public void setExam_desc(String exam_desc) {
		this.exam_desc = exam_desc;
	}
	public int getTotal_marks() {
		return total_marks;
	}
	public void setTotal_marks(int total_marks) {
		this.total_marks = total_marks;
	}
	public int getPass_marks() {
		return pass_marks;
	}
	public void setPass_marks(int pass_marks) {
		this.pass_marks = pass_marks;
	}
	public Add_cat_vo getV1() {
		return v1;
	}
	public void setV1(Add_cat_vo v1) {
		this.v1 = v1;
	}
	public Add_sub_cat_vo getV2() {
		return v2;
	}
	public void setV2(Add_sub_cat_vo v2) {
		this.v2 = v2;
	}
}
