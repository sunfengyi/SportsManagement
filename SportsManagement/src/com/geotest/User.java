package com.geotest;

public class User {
private  String  mUserName;
private  String  mPassWord;
private  String  mUserRealName;

public  User(String  userName,String  passWord,String  userRealName){
	mUserName=userName;
	mPassWord=passWord;
	mUserRealName=userRealName;

}
public String toString(){
	return  "用户名="+mUserName+"密码="+mPassWord+"姓名="+mUserRealName;
}
public  String  getmUserName() {
    return  mUserName;
   }
public  void  setmUserName(String  mUserName) {
    this.mUserName = mUserName;
   }
public  String  getmPassWord() {
    return   mPassWord;
   }
public  void  setmPassWord(String   mPassWord) {
    this. mPassWord = mPassWord;
   }
public String getmUserRealName() {
	return mUserRealName;
}
public void setmUserRealName(String mUserRealName) {
	this.mUserRealName = mUserRealName;
}
}