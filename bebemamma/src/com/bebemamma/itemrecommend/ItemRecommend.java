package com.bebemamma.itemrecommend;

import java.io.File;
import java.io.IOException;
import java.util.List;
import org.apache.mahout.cf.taste.common.TasteException;
import org.apache.mahout.cf.taste.impl.common.LongPrimitiveIterator;
import org.apache.mahout.cf.taste.impl.model.file.FileDataModel;
import org.apache.mahout.cf.taste.impl.recommender.GenericItemBasedRecommender;
import org.apache.mahout.cf.taste.impl.similarity.LogLikelihoodSimilarity;
import org.apache.mahout.cf.taste.impl.similarity.TanimotoCoefficientSimilarity;
import org.apache.mahout.cf.taste.model.DataModel;
import org.apache.mahout.cf.taste.recommender.RecommendedItem;
import org.apache.mahout.cf.taste.similarity.ItemSimilarity;

public class ItemRecommend {
	// 추후 함수형으로 바꿀 것임.
	public static void main(String[] args) {
		try {
			// csv 형식의 데이터 모델 필요 형식  = userid | itemid | rating 3개
			// 실험 데이터 파일은 10만개 였음.
			// data 폴더에 csv 파일을 넣어 줘야 동작.
			DataModel dm = new FileDataModel(new File("data/movies.csv"));

			
			/** loglike 방식과 tanimotocofficient 방식의 두가지 측정법이 있음 차이점은 잘 모르겟; **/
			//ItemSimilarity sim = new LogLikelihoodSimilarity(dm);
			TanimotoCoefficientSimilarity sim = new TanimotoCoefficientSimilarity(dm);

			// 데이터 모델과 유사성 비교 모델로 추천을 해준다. 
			GenericItemBasedRecommender recommender = new GenericItemBasedRecommender(dm, sim);

			
			int x = 1;
			// 아이템 갯수만큼 읽는다.
			for(LongPrimitiveIterator items = dm.getItemIDs(); items.hasNext();) {
				// 이번 선택한 아이템
				long itemId = items.nextLong();
				// 추천 리스트에 5개를 넣어준다. 
				List<RecommendedItem>recommendations = recommender.mostSimilarItems(itemId, 5);
				// 추천 아이템 출력해준다.
				for(RecommendedItem recommendation : recommendations){
					System.out.println(itemId + "," + recommendation.getItemID() + "," + recommendation.getValue());
				}
				// 다음 아이템 읽는다.
				x++;
				// 10개만 읽어오게 해놨다.
				if(x > 10) System.exit(1);
			}
			// 추후는 에러 캐치 부분.
		} catch (IOException e) {
			System.out.println("there was an error.");
			e.printStackTrace();
		} catch (TasteException e) {
			System.out.println("there was an Taste Exception.");
			e.printStackTrace();
		}
	}
}