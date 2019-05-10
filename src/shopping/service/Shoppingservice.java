package shopping.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import shopping.dao.Shoppingdao;
import shopping.vo.Member;



@Service
public class Shoppingservice {
	@Autowired(required=false)
	private Shoppingdao dao;
	public void join(Member ins) {
		dao.join(ins);
	}
	public Member login(Member login) {
		return dao.login(login);
	}
}
