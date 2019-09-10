package bebemamma;

import java.util.HashMap;

import com.bebemamma.itemrecommend.UserRecommend;

public class test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		try {
			UserRecommend usr = new UserRecommend();
			HashMap<String, Object> hash = new HashMap<String, Object>();
			hash.putAll(usr.reco_item(17));
			System.out.println(hash.values());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}

