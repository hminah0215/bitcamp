package com.bit.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor

public class MemberVO {
   private String id;
   private String pwd;
   private String name;
   private String tel;
   private String birth;
   private String email;
   private String gender;
   private String blood;
   private String hobby;
   private String url;
   private String job;
   private String intro;
   
}