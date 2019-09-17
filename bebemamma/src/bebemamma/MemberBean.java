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
	private String realallergy;
	
	
	public String getMemId() {
		return mem_id;
	}
	
	public void setMemId(String mem_id) {
		this.mem_id=mem_id;
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
	
	public void setBabyMonth(String baby_month) {
		int to = Integer.parseInt(baby_month);
		this.baby_month = to;
	}
	
	public float getBabyHeight() {
		return baby_height;
	}
	
	public void setBabyHeight(String baby_height) {
		float to = Float.parseFloat(baby_height);
		this.baby_height = to;
	}
	
	public float getBabyWeight() {
		return baby_weight;
	}
	
	public void setBabyWeight(String baby_weight) {
		float to = Float.parseFloat(baby_weight);
		this.baby_weight = to;
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
	public void setSkinproblem(String skinproblem) {
		int to = Integer.parseInt(skinproblem);
		this.skinproblem = to;
	}
	
	public String getrealAllergy() {
		return realallergy;
	}
	public void setrealAllergy(String realallergy) {
		this.realallergy = realallergy;
	}
}
