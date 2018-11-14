package com.geotest;


public class UserBank {
  private static User[] users={
     new  User("user1","123456","刘新"),  
     new  User("user2","123456","刘星"),
     new  User("user3","123456","刘醒"),
     };
  public static boolean check(User u){
    for(int i=0;i<users.length;i++){
       if(users[i].getmUserName().equals(
          u.getmUserName())&&
          users[i].getmPassWord().equals(
           u.getmPassWord()))
          return true;
      }
     return false;
  }

}
