package com.bbs.model;

public class BbsBean {
	private int bbs_num;   
	private String bbs_name;
	private String bbs_pass;
	private String bbs_subject;
	private String bbs_content;
	private String bbs_file;
	private int bbs_re_ref;   /* 글그룹 번호 */
	private int bbs_re_lev;   /* 답변글 깊이 */
	private int bbs_re_seq;   /* 답변글 순서 */
	private int bbs_readcount;/* 조회수 */
	private String bbs_date;
	public int getBbs_num() {
		return bbs_num;
	}
	public void setBbs_num(int bbs_num) {
		this.bbs_num = bbs_num;
	}
	public String getBbs_name() {
		return bbs_name;
	}
	public void setBbs_name(String bbs_name) {
		this.bbs_name = bbs_name;
	}
	public String getBbs_pass() {
		return bbs_pass;
	}
	public void setBbs_pass(String bbs_pass) {
		this.bbs_pass = bbs_pass;
	}
	public String getBbs_subject() {
		return bbs_subject;
	}
	public void setBbs_subject(String bbs_subject) {
		this.bbs_subject = bbs_subject;
	}
	public String getBbs_content() {
		return bbs_content;
	}
	public void setBbs_content(String bbs_content) {
		this.bbs_content = bbs_content;
	}
	public String getBbs_file() {
		return bbs_file;
	}
	public void setBbs_file(String bbs_file) {
		this.bbs_file = bbs_file;
	}
	public int getBbs_re_ref() {
		return bbs_re_ref;
	}
	public void setBbs_re_ref(int bbs_re_ref) {
		this.bbs_re_ref = bbs_re_ref;
	}
	public int getBbs_re_lev() {
		return bbs_re_lev;
	}
	public void setBbs_re_lev(int bbs_re_lev) {
		this.bbs_re_lev = bbs_re_lev;
	}
	public int getBbs_re_seq() {
		return bbs_re_seq;
	}
	public void setBbs_re_seq(int bbs_re_seq) {
		this.bbs_re_seq = bbs_re_seq;
	}
	public int getBbs_readcount() {
		return bbs_readcount;
	}
	public void setBbs_readcount(int bbs_readcount) {
		this.bbs_readcount = bbs_readcount;
	}
	public String getBbs_date() {
		return bbs_date;
	}
	public void setBbs_date(String bbs_date) {
		this.bbs_date = bbs_date;
	}
	
}
