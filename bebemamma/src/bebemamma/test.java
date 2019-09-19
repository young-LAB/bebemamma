package bebemamma;

import java.util.HashMap;

import com.bebemamma.itemrecommend.UserRecommend;

public class test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		try {
			UserRecommend usr = new UserRecommend();
			/*HashMap<String, Object> hash = new HashMap<String, Object>();
			hash.putAll(usr.reco_item(1));
			System.out.println(hash.values());*/
			int a = usr.checkID_inItem(1, 5);
			System.out.print(a);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}

