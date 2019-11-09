package vo;

import java.io.Serializable;
import java.util.Date;

public class Add_job_vo implements Serializable{
	
	private long job_id;
	private String job_title;
	private String job_description;
	private String job_skills;
	private String job_salary;
	private String job_address;
	private String company_name;
	private String comapny_email;
	private String ref_name;
	private String ref_number;
	private String ten_per;
	private String twelve_per;
	private String graduation;
	
	private String app_date;
	private String inter_date;
	
	private int job_status;
	
	private Add_cat_vo a;
	private Add_sub_cat_vo b;
	private Add_country_vo c;
	private Add_state_vo d;
	private Add_city_vo e;
	private Add_job_vo f;
	
	private user_mst_vo usrid;
	
	public int getJob_status() {
		return job_status;
	}
	public void setJob_status(int job_status) {
		this.job_status = job_status;
	}
	public user_mst_vo getUsrid() {
		return usrid;
	}
	public void setUsrid(user_mst_vo usrid) {
		this.usrid = usrid;
	}
	public Add_job_vo getF() {
		return f;
	}
	public void setF(Add_job_vo f) {
		this.f = f;
	}
	public Add_cat_vo getA() {
		return a;
	}
	public void setA(Add_cat_vo a) {
		this.a = a;
	}
	public Add_sub_cat_vo getB() {
		return b;
	}
	public void setB(Add_sub_cat_vo b) {
		this.b = b;
	}
	public Add_country_vo getC() {
		return c;
	}
	public void setC(Add_country_vo c) {
		this.c = c;
	}
	public Add_state_vo getD() {
		return d;
	}
	public void setD(Add_state_vo d) {
		this.d = d;
	}
	public Add_city_vo getE() {
		return e;
	}
	public void setE(Add_city_vo e) {
		this.e = e;
	}
	public long getJob_id() {
		return job_id;
	}
	public void setJob_id(long job_id) {
		this.job_id = job_id;
	}
	public String getJob_title() {
		return job_title;
	}
	public void setJob_title(String job_title) {
		this.job_title = job_title;
	}
	public String getJob_description() {
		return job_description;
	}
	public void setJob_description(String job_description) {
		this.job_description = job_description;
	}
	public String getJob_skills() {
		return job_skills;
	}
	public void setJob_skills(String job_skills) {
		this.job_skills = job_skills;
	}
	public String getJob_salary() {
		return job_salary;
	}
	public void setJob_salary(String job_salary) {
		this.job_salary = job_salary;
	}
	public String getJob_address() {
		return job_address;
	}
	public void setJob_address(String job_address) {
		this.job_address = job_address;
	}
	public String getCompany_name() {
		return company_name;
	}
	public void setCompany_name(String company_name) {
		this.company_name = company_name;
	}
	public String getComapny_email() {
		return comapny_email;
	}
	public void setComapny_email(String comapny_email) {
		this.comapny_email = comapny_email;
	}
	public String getRef_name() {
		return ref_name;
	}
	public void setRef_name(String ref_name) {
		this.ref_name = ref_name;
	}
	public String getRef_number() {
		return ref_number;
	}
	public void setRef_number(String ref_number) {
		this.ref_number = ref_number;
	}
	public String getTen_per() {
		return ten_per;
	}
	public void setTen_per(String ten_per) {
		this.ten_per = ten_per;
	}
	public String getTwelve_per() {
		return twelve_per;
	}
	public void setTwelve_per(String twelve_per) {
		this.twelve_per = twelve_per;
	}
	public String getGraduation() {
		return graduation;
	}
	public void setGraduation(String graduation) {
		this.graduation = graduation;
	}
	public String getApp_date() {
		return app_date;
	}
	public void setApp_date(String app_date) {
		this.app_date = app_date;
	}
	public String getInter_date() {
		return inter_date;
	}
	public void setInter_date(String inter_date) {
		this.inter_date = inter_date;
	}
}
