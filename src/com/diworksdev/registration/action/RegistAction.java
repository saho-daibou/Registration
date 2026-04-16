package com.diworksdev.registration.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.diworksdev.registration.util.PrefectureUtil;
import com.opensymphony.xwork2.ActionSupport;

public class RegistAction extends ActionSupport implements SessionAware {

	private Map<String, Object> session;
	private Map<String, String> prefectureMap;
	
	public String execute() {

		prefectureMap = PrefectureUtil.getPrefectureMap();
		
		//再表示用sessionを後から記述
		
		return SUCCESS;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
	
	public Map<String, String> getPrefectureMap() {
	    return prefectureMap;
	}
}
