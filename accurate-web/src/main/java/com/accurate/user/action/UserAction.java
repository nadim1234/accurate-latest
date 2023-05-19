package com.accurate.user.action;

import com.accurate.user.service.UserService;
import com.domainobj.User;
import com.opensymphony.xwork2.ActionSupport;
 
public class UserAction extends ActionSupport {
    private UserService userService;
    private User user;
    public UserService getUserService() {
		return userService;
	}




	public User getUser() {
		return user;
	}




	public void setUser(User user) {
		this.user = user;
	}




	public void setUserService(UserService userService) {
		this.userService = userService;
	}




	public String execute() {
		user=userService.findUser();
        return SUCCESS;
    }
}