<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Modification Form</title>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>

<style>
   *{
      box-sizing:border-box;
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
      text-align:right;
      margin-right:5px;
   }
   
   .sr{
      text-align:center;
   }
</style>
</head>
<body>
   <div id="signup_box">
      <form action="${pageContext.request.contextPath}/member/myModifyProc.mem" method="post" id="frm" onsubmit="return validCheck()">
         <fieldset>
            <h3 id="title_name">회원정보 수정</h3>
         
            <label for="id">아이디 : </label>
            <input type="text" id="id" name="id" size="20" value="${result.id}" readonly>
            <span id="idCheck"></span>
            <br>
            
            <label for="pw">비밀번호 : </label>
            <input type="password" id="pw" name="pw" size="20" placeholder="영문+숫자+특수문자 8~20자리">
            <span id="pwCheck"></span>
            <br>
            
            <label for="pw">비밀번호 확인 : </label>
            <input type="password" id="pwre" name="pwre" size="20">
            <span id="pwreCheck"></span>
            <br>
            
            <label for="name">이름 : </label>
            <input type="text" id="name" name="name" size="20" value="${result.name}">
            <span id="nameCheck"></span>
            <br>
            
            <label for="nickname">닉네임 : </label>
            <input type="text" id="nickname" name="nickname" size="20" value="${result.nickname}">
            <br>
            
            <label for="birth">생년월일 : </label>
            <input type="text" id="birth" name="birth" size="20" value="${result.birth}">
            <span id="brithCheck"></span>
            <br>
            
            <label for="gender">성별 : </label>
            <input type="radio" id="gender" name="gender" size="20" value="남">남
            <input type="radio" id="gender" name="gender" size="20" value="여">여
            <br>
            
            <label for="phone">전화번호 : </label>
            <input type="text" id="phone" name="phone" size="20" value="${result.phone}">
            <span id="phoneCheck"></span>
            <br><br>
            
            <label for="phone">작가소개란 : </label>
            <input type="text" id="writerInfo" name="writerInfo" size="20" value="${result.writerInfo}">
            <span id="phoneCheck"></span>
            <br><br>
            
            <div class="sr">
               <input type="submit" id="submitBtn" value="정보 수정">
               <button type="button" id="cancelBtn">취소</button>
            </div>
         </fieldset>
      </form>
   </div>
   
   <script>
      var valid_num = 0;
      var valid_pw = 0;
      var valid_pwre = 0;
      var valid_name = 1;
      var valid_phone = 1;
      
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
      });
      
      $("#phone").on("input", function(){
         var phone_regex = /^0\d{2}\d{3,4}\d{4}$/g;
         var phone = $("#phone").val();
         
         var phone_result = phone_regex.exec(콜);
         
         if(phone_result != null){
            $("#phoneCheck").html("");
            valid_phone = 1;
         }
         else{
            $("#phoneCheck").html("유효하지 않은 번호입니다.").css("color", "red");
            valid_phone = 0;
         }
      });
      
      function validCheck(){
         valid_num = valid_pw * valid_pwre * valid_name * valid_phone;
         if(valid_num != 1){
            alert("유효하지 않은 정보가 있습니다.");
            return false;
         }
         else{
            return confirm("정보를 수정 하시겠습니까?");
         }
      }
      
      $("#cancelBtn").on("click", function(){
            var cancelConfirm = confirm("정보 수정을 취소하시겠습니까?");
            
            if(cancelConfirm == true){
                location.href="${pageContext.request.contextPath}/index";
            }
        });
   </script>
</body>
</html>