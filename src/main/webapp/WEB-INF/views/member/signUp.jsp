<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sign Up Form</title>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>

<style>
  *{
font-size: : 200px;
 box-sizing: border-box;
  margin: 0px; 
text-align : center;
}

body, html {
	margin: 0;
	padding: 0;
	height: 100%;
}


.bgimg {
	
	border: 0;
	padding: 0;
	background-image: url('/resources/wood.jpg');
	min-height: 100%;
	background-position: center;
	background-size: cover;
}

#fieldset{

position: absolute;
    top: 35%;  left: 40%;
     border-radius: 10%;
    width: 600px; height: 650px;
    margin-left: -100px;
    margin-top : -150px;
    background-color : #faf8f7;
    
    }
   
   #frm{
      width:700px;
      margin:auto;
      
   }
   #title_name{
      text-align:center;
   }
   #frm label{
      display:inline-block;
      width:120px;
      text-align:left;
      margin-right:5px;
   }
  
   
   .sr{
      text-align:center;
   }
   #idCheck{
   left:30px;
   }
  
</style>
</head>
<body>
<div class="bgimg col-12">
   <div id="sign_up_box">
      <form action="${pageContext.request.contextPath}/member/signUpProc.mem" method="post" id="frm" onsubmit="return validCheck()">
         <div id="fieldset">
         <br>
            <h1 id="title_name">SignUp</h1><br>
         
            <label for="id">아이디 : </label>
            <input type="text" id="id" name="id" size="20" placeholder="영소문자+숫자 5~15자리"><br>
            <span id="idCheck"></span>
            <br><br>
            
            <label for="pw">비밀번호 : </label>
            <input type="password" id="pw" name="pw" size="20" placeholder="영문+숫자+특수문자  8~20자리"><br>
            <span id="pwCheck"></span>
            <br><br>
            
            
            <label for="pw">비밀번호 확인 : </label>
            <input type="password" id="pwre" name="pwre" size="20"><br>
            <span id="pwreCheck"></span>
            <br><br>
            
            
            <label for="name">이름 : </label>
            <input type="text" id="name" name="name" size="20" placeholder="한글 이름"><br>
            <span id="nameCheck"></span>
            <br><br>
            
            
            <label for="nickname">닉네임 : </label>
            <input type="text" id="nickname" name="nickname" size="20" id="nickname"><br>
             <span id="nicknameCheck"></span>
            <br><br>
            
            
            <label for="birth">생년월일 : </label>
            <input type="text" id="birth" name="birth" size="20" placeholder="6자리">
            <br><br>
            
            
            <label for="phone">전화번호 : </label>
            <input type="text" id="phone" name="phone" size="20" placeholder="-없이 10~11자리"><br>
            <span id="phoneCheck"></span>
            <br><br>
            
            <label for="phone">소개글입력 : </label>
            <input type="textarea" id="writerInfo" name="writerInfo" size="20" value="작가소개를 입력해주세요.">
            <span id="phoneCheck"></span>
            <br><br>
            
            <div class="sr">
               <input type="submit" id="submitBtn" value="회원가입">
               <input type="reset" id="resetBtn" value="초기화">
            </div>
         </fieldset>
      </form>
       </div>
   </div>
  
   
   
   <script>
      var valid_num = 0;
      var valid_id = 0;
      var valid_pw = 0;
      var valid_pwre = 0;
      var valid_name = 0;
      var valid_phone = 0;
      var nickname = 0;
  
   
      $("#id").on("keyup", function(){
         var regex = /^[a-z0-9]{5,15}$/g;
         var id = $("#id").val();
         var result = regex.exec(id);
         
         if(result != null){
            $("#idCheck").html("");
            
               $.ajax({
                  url:"${pageContext.request.contextPath}/member/overlap.mem",
                  type:"post",
                  data:{
                     id: $("#id").val()
                  },
                  dataType:"json"
               }).done(function(data){
                  if(data.result == 1){
                     $("#idCheck").html("중복된 아이디입니다.").css("color", "red");
                     valid_id = 0;
                  }
                  else{
                     $("#idCheck").html("사용가능한 아이디입니다.").css("color", "green");
                     valid_id = 1;
                  }                  
               }).fail(function(a, b, c){
                  console.log(a);
                  console.log(b);
                  console.log(c);
                  alert("비동기 통신 실패!");
               });
         }
         else{
            $("#idCheck").html("아이디 형식을 확인해주세요.").css("color", "red");
            valid_id = 0;
         }
      });
    
      
      $("#pw").on("input", function(){
         var pw_regex = /^[A-Za-z0-9!@#$%^&*]{8,20}$/g;
         var pw = $("#pw").val();
         
         var pw_result = pw_regex.exec(pw);
         
         if(pw_result != null){
            $("#pwCheck").html("");
            valid_pw = 1;
         }
         else{
            $("#pwCheck").html("비밀번호 형식을 확인해주세요.").css("color", "red");
            valid_pw = 0;
         }
      });
      
      $("#pwre").on("input", function(){
         if($("#pw").val() == ""){
            alert("비밀번호를 입력하세요.");
            $("#pwre").val("");
            $("#pw").focus();
         }
         else{
            if($("#pw").val() == $("#pwre").val()){
               $("#pwreCheck").html("비밀번호가 일치합니다.").css("color", "green");
               valid_pwre = 1;
            }
            else{
               $("#pwreCheck").html("비밀번호가 일치하지 않습니다.").css("color", "red");
               valid_pwre = 0;
            }
         }
      });
      
      $("#name").on("input", function(){
         var name_regex = /^[가-힣]{1}[가-힣]{1,9}$/g;
         var name = $("#name").val();
         
         var name_result = name_regex.exec(name);
         
         if(name_result != null){
            $("#nameCheck").html("");
            valid_name = 1;
         }
         else{
            $("#nameCheck").html("올바르지 않은 이름입니다.").css("color", "red");
            valid_name = 0;
         }
      })
      
      $("#writerInfo").on("input", function(){
    	  var writerInfo = $("#writerInfo").html();
      })
      
     
      $("#phone").on("input", function(){
         var phone_regex = /^0\d{2}\d{3,4}\d{4}$/g;
         var phone = $("#phone").val();
         
         var phone_result = phone_regex.exec(phone);
         
         if(phone_result != null){
            $("#phoneCheck").html("");
            valid_phone = 1;
         }
         else{
            $("#phoneCheck").html("유효하지 않은 번호입니다.").css("color", "red");
            valid_phone = 0;
         }
      });

      $("#nickname").on("input", function(){
          var nickname_regex = /^[가-힣a-zA-Z0-9]{2,10}$/;
          var nickname = $("#nickname").val();
          var nickname_result = nickname_regex.exec(nickname);

          if(nickname_result != null){
              $("#nicknameCheck").html("");
             
                  
                  $.ajax({
                     url:"${pageContext.request.contextPath}/member/overlapNickname.mem",
                     type:"post",
                     data:{
                        nickname : $("#nickname").val()
                     },
                     dataType:"json"
                  }).done(function(data){
                     if(data.result == 1){
                        $("#nicknameCheck").html("중복된 닉네임입니다.").css("color", "red");
                        valid_nickname = 0;
                     }
                     else{
                        $("#nicknameCheck").html("사용가능한 닉네임입니다.").css("color", "green");
                        valid_nickname = 1;
                     }                  
                  }).fail(function(a, b, c){
                     console.log(a);
                     console.log(b);
                     console.log(c);
                     alert("비동기 통신 실패!");
                  });
              
            }
          
          else{
              $("#nicknameCheck").html("닉네임 형식을 확인해주세요.").css("color", "red");
              valid_pw = 0;
          }
      });
      function validCheck(){
         valid_num = valid_id * valid_pw * valid_pwre * valid_name * valid_phone * valid_nickname;
         if(valid_num != 1){
            alert("유효하지 않은 정보가 있습니다.");
            return false;
         }else{
            return confirm("회원가입 하시겠습니까?");
         }
      }
      
      $("#resetBtn").on("click", function(){
         $("#idCheck").html("");
         $("#pwCheck").html("");
         $("#pwreCheck").html("");
         $("#nameCheck").html("");
         $("#phoneCheck").html("");
         $("#nicknameCheck").html("");
      });
   </script>
</body>
</html>