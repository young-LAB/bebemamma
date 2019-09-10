package com.bebemamma.itemrecommend;

import java.io.File;
import java.io.IOException;
import java.util.List;
import org.apache.mahout.cf.taste.impl.model.file.FileDataModel;
import org.apache.mahout.cf.taste.impl.neighborhood.NearestNUserNeighborhood;
import org.apache.mahout.cf.taste.impl.recommender.GenericUserBasedRecommender;
import org.apache.mahout.cf.taste.impl.similarity.PearsonCorrelationSimilarity;
import org.apache.mahout.cf.taste.model.DataModel;
import org.apache.mahout.cf.taste.neighborhood.UserNeighborhood;
import org.apache.mahout.cf.taste.recommender.RecommendedItem;
import org.apache.mahout.cf.taste.recommender.Recommender;
import org.apache.mahout.cf.taste.similarity.UserSimilarity;

public class UserRecommend {
	/* 추후 함수형으로 바꿀 것임 */
	public static void main(String[] args) throws Exception {
		/* 데이터 모델 생성 */
		DataModel model = new FileDataModel(new File("data/item.csv"));
		/* 유사도 측정 모델 생성 - 타니모토 계수 */
		UserSimilarity similarity = new PearsonCorrelationSimilarity(model);

		/* 모든 유저들로부터 주어진 유저와 특정유저간의 유사성을 비교한다.*/
		UserNeighborhood neighborhood = new NearestNUserNeighborhood(2, similarity, model);
		/* 추천기 생성*/
		Recommender recommender = new GenericUserBasedRecommender(model, neighborhood, similarity);
		/* 1번 유저에게 추천할 3가지 물품 추천 */
		List<RecommendedItem> recommendations = recommender.recommend(1, 3);
		/* 출력 */
		for (RecommendedItem recommendation : recommendations) {
			System.out.println(recommendation);
		}
	}
}