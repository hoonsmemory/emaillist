package kr.co.itcen.emaillist.dao.test;

import java.util.List;

import kr.co.itcen.emaillist.dao.EmaillistDao;
import kr.co.itcen.emaillist.vo.EmaillistVo;

public class EmaillistDaoTest {

	public static void main(String[] args) {
		//insertTest();
		//deleteAll();
		getListTest();
		
		
	}
	
	private static void deleteAll() {
		new EmaillistDao().delete();
	}
	
	private static void insertTest() {
		EmaillistVo vo = new EmaillistVo();
		vo.setFirstName("성훈");
		vo.setLastName("이");
		vo.setEmail("dltjdgnsok1@naver.com");
		
		new EmaillistDao().insert(vo);
	}

	private static void getListTest() {
		List<EmaillistVo> list = new EmaillistDao().getList();
		for(EmaillistVo vo : list) {
			System.out.println(vo);
		}
	}

}