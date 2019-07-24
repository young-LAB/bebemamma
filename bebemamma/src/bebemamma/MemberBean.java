package bebemamma;

public class MemberBean{
	private String mem_id;
	private String password;
	private String mem_name;
	private String mem_gender;
	private String baby_name;
	private String baby_gender;
	private int baby_month;
	private float baby_height;
	private float baby_weight;
	private int skinproblem;
	private String allergy[];
	
	
	public String getMemId() {
		return mem_id;
	}
	
	public void setMemId(String mem_id) {
		this.mem_id = mem_id;
	}
	
	public String getPwd() {
		return password;
	}
	
	public void setPwd(String password) {
		this.password = password;
	}
	
	public String getMemName() {
		return mem_name;
	}
	
	public void setMemName(String mem_name) {
		this.mem_name = mem_name;
	}
	
	public String getMemGender() {
		return mem_gender;
	}
	
	public void setMemGender(String mem_gender) {
		this.mem_gender = mem_gender;
	}
	
	public String getBabyName() {
		return baby_name;
	}
	
	public void setBabyName(String baby_name) {
		this.baby_name = baby_name;
	}
	
	public String getBabyGender() {
		return baby_gender;
	}
	
	public void setBabyGender(String baby_gender) {
		this.baby_gender = baby_gender;
	}
	
	public int getBabyMonth() {
		return baby_month;
	}
	
	public void setBabyMonth(int baby_month) {
		this.baby_month = baby_month;
	}
	
	public float getBabyHeight() {
		return baby_height;
	}
	
	public void setBabyHeight(float baby_height) {
		this.baby_height = baby_height;
	}
	
	public float getBabyWeight() {
		return baby_weight;
	}
	
	public void setBabyWeight(float baby_weight) {
		this.baby_weight = baby_weight;
	}
	
	public String[] getAllergy() {
		return allergy;
	}
	public void setAllergy(String[] allergy) {
		this.allergy = allergy;
	}
	public int getSkinproblem() {
		return skinproblem;
	}
	public void setSkinproblem(int skinproblem) {
		this.skinproblem = skinproblem;
	}
}
