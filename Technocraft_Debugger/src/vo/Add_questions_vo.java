package vo;

import java.io.Serializable;

public class Add_questions_vo implements Serializable{
	
	private long question_id;
	private String question;
	private String ans1;
	private String ans2;
	private String ans3;
	private String ans4;
	private String correct_ans;
	private Integer question_marks;
	
	private Add_cat_vo v1;
	private Add_sub_cat_vo v2;
	private Add_exam_vo v3;
	
	private user_mst_vo usrid;
	
	public user_mst_vo getUsrid() {
		return usrid;
	}
	public void setUsrid(user_mst_vo usrid) {
		this.usrid = usrid;
	}
	public long getQuestion_id() {
		return question_id;
	}
	public void setQuestion_id(long question_id) {
		this.question_id = question_id;
	}
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}
	public String getAns1() {
		return ans1;
	}
	public void setAns1(String ans1) {
		this.ans1 = ans1;
	}
	public String getAns2() {
		return ans2;
	}
	public void setAns2(String ans2) {
		this.ans2 = ans2;
	}
	public String getAns3() {
		return ans3;
	}
	public void setAns3(String ans3) {
		this.ans3 = ans3;
	}
	public String getAns4() {
		return ans4;
	}
	public void setAns4(String ans4) {
		this.ans4 = ans4;
	}
	public String getCorrect_ans() {
		return correct_ans;
	}
	public void setCorrect_ans(String correct_ans) {
		this.correct_ans = correct_ans;
	}
	
	public Integer getQuestion_marks() {
		return question_marks;
	}
	public void setQuestion_marks(Integer question_marks) {
		this.question_marks = question_marks;
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
	public Add_exam_vo getV3() {
		return v3;
	}
	public void setV3(Add_exam_vo v3) {
		this.v3 = v3;
	}
}
