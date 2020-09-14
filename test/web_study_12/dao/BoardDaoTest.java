package web_study_12.dao;

import static org.junit.Assert.fail;

import java.sql.Connection;
import java.util.List;

import org.junit.After;
import org.junit.Assert;
import org.junit.Before;
import org.junit.FixMethodOrder;
import org.junit.Test;
import org.junit.runners.MethodSorters;

import web_study_12.dao.impl.BoardDaoImpl;
import web_study_12.ds.JdbcUtil;
import web_study_12.dto.Board;

@FixMethodOrder(MethodSorters.NAME_ASCENDING)
public class BoardDaoTest {

	private static Connection con;
	private BoardDao dao;

	@Before
	public void setUp() throws Exception {
		con = JdbcUtil.getConnection();
		dao = BoardDaoImpl.getInstance();
		((BoardDaoImpl) dao).setCon(con);
	}

	@After
	public void tearDown() throws Exception {
		dao = null;
	}

	@Test
	public void test07SelectBoardByAll() {
		System.out.println("test07SelectBoardByAll");
		List<Board> list = dao.selectBoardByAll();
		Assert.assertNotNull(list);
		list.stream().forEach(System.out::println);
	}

	@Test
	public void test01InsertBoard() {
		System.out.printf("%s()%n", "test01InsertBoard");
		Board insertBoard = new Board();
		int res = dao.insertBoard(insertBoard);
		Assert.assertEquals(1, res);

		System.out.printf("%s%n%n", insertBoard);
	}

	@Test
	public void test04UpdateReadCount() {
		fail("Not yet implemented");
	}

	@Test
	public void test06SelectBoardByNum() {
		fail("Not yet implemented");
	}

	@Test
	public void test03UpdateBoard() {
		fail("Not yet implemented");
	}

	@Test
	public void test02CheckPassword() {
		fail("Not yet implemented");
	}

	@Test
	public void test05DeleteBoard() {
		fail("Not yet implemented");
	}

}
