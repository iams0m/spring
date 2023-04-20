package com.multi.travel;

public class FestaVO {
	private String img;
	private String title;
	private String brief_contents;
	private String area;
	private String date;
	private String detail;
	private String review;

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getBrief_contents() {
		return brief_contents;
	}

	public void setBrief_contents(String brief_contents) {
		this.brief_contents = brief_contents;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getDetail() {
		return detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}

	public String getReview() {
		return review;
	}

	public void setReview(String review) {
		this.review = review;
	}

	@Override
	public String toString() {
		return "MemberVO [img=" + img + ", title=" + title + ", brief_contents=" + brief_contents + ", area=" + area
				+ ", date=" + date + ", detail=" + detail + ", review=" + review + "]";
	}

}