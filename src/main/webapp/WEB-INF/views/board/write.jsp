<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-bs4.css" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-bs4.js"></script>
<title>Insert title here</title>
<script>

$(function(){
	$("#writeform").on("submit", function(){
		$("#text").val($(".note-editable").html());
	})
})
</script>

</head>
<body>
<form action="writeProc.board" method = "post" enctype ="multipart/form-data" id="writeform">
<input type = "text" name = "title" placeholder="제목">
<select name="category">
<option value="">카테고리선택</option>
 <option value="sisa">시사,이슈</option>
    <option value="inmun">인문학,철학</option>
    <option value="munhwa">문화,예술</option>
    <option value="simli">심리,탐구</option>
     <option value="IT">IT</option>
</select>
<textarea style="display:none" name="text" id="text"></textarea>
<div id="summernote"></div>
<button type="submit" style="float:right">작성하기</button> 

</form>


    <script>
   
    	
 
    $('#summernote').summernote({
        placeholder: 'Hello bootstrap 4',
        tabsize: 2,
        height: 100,
        callbacks: {
        	 onImageUpload: function(files) {
        	   var data = new FormData();
        	   data.append("image" , files[0]);
        	   $.ajax({
        		   url : "/ajaxImage.board",
        		   data : data,
        		   type : "post",
        		   enctype : "multipart/form-data",
        		   processData : false,
        		   cache : false,
        		   contentType : false
        		   }).done(function(resp){
        			   var img = $("<img>");
        			   img.attr("src", resp);
        			   $("#summernote").summernote("insertNode",img[0]);
        		   }).fail(function(a,b,c){
        			.   console.log(a);
        		   console.log(b);
        			   console.log(c); 
        		   })
        	   }
          }
      });
   

      
    </script>


</body>
</html>