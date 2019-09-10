package bebemamma;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.HashMap;
import java.util.List;

import com.bebemamma.sqlMap.*; 
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSession;


public class ItemDAO {
    private SqlSessionFactory sqlSessionFactory = null; 
    private SqlSession sqlSession = null;
    
    
    public ItemDAO() {
        this.sqlSessionFactory = SqlSessionManager.getSqlSession();
        this.sqlSession = sqlSessionFactory.openSession();
    }
    
    public int getNumber() {
    	int cnt = sqlSession.selectOne("SqlMapper.getItemNum");
    	return cnt;
    }
    
    public List getFoodList(int num) {
    	List list = sqlSession.selectList("SqlMapper.getFoodList", num);
    	return list;
    }
    
    public boolean nextPage(int num) {
    	int n = this.getNumber() / 12;
    	if(this.getNumber()%12==0) {
    		if(num >= n) return false;
    		else return true;
    	}
    	else {
    		if(num >= n+1) return false;
    		else return true;
    	}
    }
    
    public int targetPage() {
    	int n = this.getNumber() /12;
    	if(this.getNumber()%12==0) {
    		return n;
    	}
    	else {
    		return n+1;
    	}
    }
    
    public List getFoodbrandList(int num, String brand) {
    	HashMap<String, Object> hash = new HashMap<String, Object>();
    	num = (num-1)* 12;
    	hash.put("id", num);
    	hash.put("pagebrand", brand);
    	
    	List list = sqlSession.selectList("SqlMapper.getFoodList_brand", hash);
    	return list;
    }
    
    public int getNumber_brand(String brand) {
    	int cnt = sqlSession.selectOne("SqlMapper.getItemNum_brand", brand);
    	return cnt;
    }
    
   
    
    public boolean nextPage_brand(int num, String brand) {
    	int n = this.getNumber_brand(brand) / 12;
    	if(this.getNumber_brand(brand)%12==0) {
    		if(num >= n) return false;
    		else return true;
    	}
    	else {
    		if(num >= n+1) return false;
    		else return true;
    	}
    }
    
    public int targetPage_brand(String brand) {
    	int n = this.getNumber_brand(brand) /12;
    	if(this.getNumber_brand(brand)%12==0) {
    		return n;
    	}
    	else {
    		return n+1;
    	}
    }
}

