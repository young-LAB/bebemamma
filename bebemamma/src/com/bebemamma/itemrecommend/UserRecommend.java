package com.bebemamma.itemrecommend;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.File;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

import org.apache.mahout.cf.taste.impl.common.FastIDSet;
import org.apache.mahout.cf.taste.impl.model.file.FileDataModel;
import org.apache.mahout.cf.taste.impl.neighborhood.NearestNUserNeighborhood;
import org.apache.mahout.cf.taste.impl.recommender.GenericUserBasedRecommender;
import org.apache.mahout.cf.taste.impl.similarity.PearsonCorrelationSimilarity;
import org.apache.mahout.cf.taste.model.DataModel;
import org.apache.mahout.cf.taste.neighborhood.UserNeighborhood;
import org.apache.mahout.cf.taste.recommender.RecommendedItem;
import org.apache.mahout.cf.taste.recommender.Recommender;
import org.apache.mahout.cf.taste.similarity.UserSimilarity;
import org.apache.mahout.common.iterator.FileLineIterable;

public class UserRecommend {
	/* 추후 함수형으로 바꿀 것임 */
	DataModel model = null;
    
    
	public UserRecommend() throws Exception {
		
	}
	
	public HashMap reco_item(int id) throws Exception {
		HashMap<Integer, Object> list = new HashMap<Integer, Object>();
		this.model = new FileDataModel(new File("C:/Users/김주완/Desktop/bebemamma/bebemamma/bebemamma/data/item.csv"));
		if(!this.checkID(id)) {
			this.setData(id, 1, 3);
			this.model = new FileDataModel(new File("C:/Users/김주완/Desktop/bebemamma/bebemamma/bebemamma/data/item.csv"));
		}
		else {
			System.out.println("pass");
		}
		
		/* 유사도 측정 모델 생성 - 피어슨 계수 */
		UserSimilarity similarity = new PearsonCorrelationSimilarity(this.model);

		/* 모든 유저들로부터 주어진 유저와 특정유저간의 유사성을 비교한다.*/
		UserNeighborhood neighborhood = new NearestNUserNeighborhood(2, similarity, this.model);
		/* 추천기 생성*/
		Recommender recommender = new GenericUserBasedRecommender(this.model, neighborhood, similarity);
		
		
		/* id 유저에게 추천할 5가지 물품 추천 */
		List<RecommendedItem> recommendations = recommender.recommend(id, 8);
		
		/* 출력 */
		int k = 0;
		for (RecommendedItem recommendation : recommendations) {
			list.put(k, recommendation.getItemID());
			k++;
		}
		
		return list;
	}
	
	public boolean checkID(int id) throws Exception {
		try {
			Iterator itr = this.model.getUserIDs();
			while(itr.hasNext()) {
				 if(itr.next().equals((long)id)) return true;
			}
		} catch(Exception e) {
			e.printStackTrace();
			return false;
		}
		return false;
	}
	
	public int checkID_inItem(int id, int item) throws Exception {
		int result = -1;
		File file = new File("C:/Users/김주완/Desktop/bebemamma/bebemamma/bebemamma/data/item.csv");
		boolean flag = false;
		for(String line : new FileLineIterable(file)) {
			String[] column = line.split(",");
			if(column[0].equals(Integer.toString(id))) {
				if(column[1].equals(Integer.toString(item))){
					result = Integer.parseInt(column[2]);
				}
			}
		}
		return result;
	}
	
	public void setData(int id, int item, int favor) throws IOException {
		File file = new File("C:/Users/김주완/Desktop/bebemamma/bebemamma/bebemamma/data/item.csv");
		try {
			FileWriter fw = new FileWriter(file, true);
			fw.write("\n"+id+","+item+","+favor);
			fw.close();
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
}