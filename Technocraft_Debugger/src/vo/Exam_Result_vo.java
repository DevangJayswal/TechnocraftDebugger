package vo;

import java.io.Serializable;

public class Exam_Result_vo implements Serializable{
	
	private Long Result_id;
	private Long Marks;
	
	private user_mst_vo user_id;
	private Add_exam_vo Exam_id;
	
	public Long getResult_id() {
		return Result_id;
	}
	public void setResult_id(Long result_id) {
		Result_id = result_id;
	}
	public Long getMarks() {
		return Marks;
	}
	public void setMarks(Long marks) {
		Marks = marks;
	}
	public user_mst_vo getUser_id() {
		return user_id;
	}
	public void setUser_id(user_mst_vo user_id) {
		this.user_id = user_id;
	}
	public Add_exam_vo getExam_id() {
		return Exam_id;
	}
	public void setExam_id(Add_exam_vo exam_id) {
		Exam_id = exam_id;
	}
	
}
