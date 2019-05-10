package shopping.dao;

import org.springframework.stereotype.Repository;

import shopping.vo.Member;

@Repository
public interface Shoppingdao {
	public void join(Member ins);
	public Member login(Member login);
	public Member chkid(Member chk);
}
