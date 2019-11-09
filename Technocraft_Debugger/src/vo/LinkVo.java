package vo;

public class LinkVo {
	
	private long linkID,dispatchDT,activationDT;
	private String link;
	
	int status;
	
	private user_mst_vo u_id;

	public long getLinkID() {
		return linkID;
	}

	public void setLinkID(long linkID) {
		this.linkID = linkID;
	}

	public long getDispatchDT() {
		return dispatchDT;
	}

	public void setDispatchDT(long dispatchDT) {
		this.dispatchDT = dispatchDT;
	}

	public long getActivationDT() {
		return activationDT;
	}

	public void setActivationDT(long activationDT) {
		this.activationDT = activationDT;
	}

	public String getLink() {
		return link;
	}

	public void setLink(String link) {
		this.link = link;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public user_mst_vo getU_id() {
		return u_id;
	}

	public void setU_id(user_mst_vo u_id) {
		this.u_id = u_id;
	}
	
}
