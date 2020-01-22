<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<style>
img {
   width: 80%;
   height: 30%;
}

body, html {
   margin: 0;
   padding: 0;
   height: 100%;
}

* {
   box-sizing: border-box;
   border: 1px solid black;
}

.bgimg {
   position: relative;
   border: 0;
   padding: 0;
   background-image: url('/resources/wood.jpg');
   min-height: 100%;
   background-position: center;
   background-size: cover;
}

#container {
   position: relative;
   border: 1px solid black;
   width: 90%;
   heigth: 200px;
   overflow: auto;
   top: 5%;
   left: 5%;
   background-color: #faf8f7;
}

#header {
   position: relative;
   width: 100%;
   height: 300px;
}

#blank {
   width: 100%;
   height: 50%
}

#seq, #writer, #views, #title, #category {
   text-align: right;
   border: 1px solid black;
}

#category {
   width: 90%;
   heingt: 100%;
   float: left;
}

#seq {
   width: 10%;
   float: left;
}

#views {
   width: 100%;
}

#writer {
   width: 100%;
}

#title {
   width: 100;
   text-align: right;
}

#text {
   width: 100%;
   height: 1000px;
   text-align: center;
   overflow: auto;
}

#commentsWriter {
   border-left: 1px solid black;
   float: left;
   width: 20%;
}

#commentsUpdate {
   width: 100%;
   height: 100%;
}

.deleteDiv {
   width: 50%;
   float: left;
}

#deletearticle {
   float: right;
}

#submit {
   width: 100%;
   height: 100px;
}

#backDiv {
   width: 50%;
   float: right;
}

#submitDiv {
   width: 5%;
   height: 100px;
   float: left;
}

#back {
   float: left;
}


div#commentsListContainer {
   width: 100%;
   height: 300px;
   float: left;
   overflow : auto;
}

.insertComments {
   width: 100%;
   height: 100px;
}

.comments11{
width:100;
height:100%;
}

#commentsContainer{
width:100%;
heigth:100%;
}
</style>
</head>
<body>
   <div class="bgimg col-12">
      <div id="container">
         <div id="header">
            <div id="blank"></div>
              <form action="/board/update.board" method="post">
            <div id="category">${dto.category }</div>
            <input type="hidden" name="category" value="${dto.category }">
            <div id="seq">${dto.seq}번글</div>
             <input type="hidden" name="seq" value="${dto.seq }">
            <div id="title">${dto.title }</div>
             <input type="hidden" name="title" value="${dto.title }">
            <div id="writer">Written by. ${dto.nickname }</div>
             <input type="hidden" name="nickname" value="${dto.nickname}">
            <div id="views">조회수${dto.views }</div>
             <input type="hidden" name="views" value="${dto.views }">
        <div id="text">${dto.text }</div>
          <input type="hidden" name="text" value="${dto.text }">
        <input type="hidden" name="seq" value=${dto.seq }>
            <div class="updateDiv">
               <button id="updatearticle">수정하기</button>
            </div>
        </form>
        </div>
      


         <!-- 댓글출력 -->
         <div id="commentsListContainer">
            <form action="/board/deleteComments.board">
               <c:forEach var="list" items="${list }">
                  <div class="comments" contenteditable="false"
                     id="text_${list.commentsSeq}">
                     <br>${list.text }</div>
                  <input type="hidden" value="${list.text }" name="text"
                     id="textProc_${list.commentsSeq}">
                  <input type="hidden" value="${dto.seq }" name="seq">
                  <input type="hidden" value="${list.commentsSeq }"
                     name="commentsSeq">
                  <div id="commentsWriter">${list.writer }</div>
                  <c:if test="${loginInfo.nickname == list.writer }">
                     <button type="button" id="modi_${list.commentsSeq}"
                        class="update" onclick="modi('${list.commentsSeq}')">수정</button>
                     <button type="button" id="updateOK_${list.commentsSeq}"
                        name="commentsSeq" style="display: none"
                        onclick="update('${dto.seq}','${list.commentsSeq}')">수정완료</button>
                     <button id="delete_${list.commentsSeq}">삭제</button>
                  </c:if>
               </c:forEach>
            </form>
         </div>



         <!-- 댓글입력 -->
         <c:choose>
            <c:when test="${loginInfo != null }">
            <div class="insertComments">
                  <form action="/board/writeComments.board" method="post">
                     <div id="commentsContainer">
                        <textarea placeholder="댓글을 입력해주세요" name="text" class="comments11"></textarea>
                        <input type="hidden" name="seq" value=${dto.seq }>
                     </div>
                     <div id=submitDiv>
                        <button id="submit">입력</button>
                     </div>

                  </form>
               </div>
            </c:when>
            <c:otherwise>
            <div class="insertComments">
                     <div id="commentsContainer">
                        <textarea placeholder="댓글은 로그인 이후 작성가능합니다" name="text" class="comments11" readonly></textarea>
                        <input type="hidden" name="seq" value=${dto.seq }>
                     </div>
                     <div id=submitDiv>
                     </div>

               </div>
            </c:otherwise>
         </c:choose>




         <div id="backDiv">
            <button type="button" id="back">돌아가기</button>
         </div>
         <form action="/board/delete.board" method="post">
          <c:if test="${loginInfo != null }">
            <input type="hidden" name="seq" value=${dto.seq }>
            <div class="deleteDiv">
               <button id="deletearticle">삭제하기</button>
            </div>
              </c:if>
         </form>
       
      </div>


</div>




      <script>
         $(document).ready(function() {

            function modi(seq) {
               var modi = "#modi_" + seq;
               var updateOk = "#updateOK_" + seq;
               var text = "#text_" + seq;

               $(modi).css("display", "none");
               $(updateOk).css("display", "inline");
               $(text).attr("contenteditable", "true");
            }
         });

         var modi = function(seq) {
            console.log(seq);
            var modiseq = "#modi_" + seq;
            var updateOk = "#updateOK_" + seq;
            var text = "#text_" + seq;

            $(modiseq).css("display", "none");
            $(updateOk).css("display", "inline");
            $(text).attr("contenteditable", "true");
         }

         var update = function(seq, comSeq) {

            $("#textProc_" + comSeq).val($("#text_" + comSeq).text());

            $.ajax({
               url : "/board/updateComments.board",
               data : {
                  text : $("#textProc_" + comSeq).val(),
                  commentsSeq : comSeq,
                  boardSeq : seq
               },
               method : "get"
            }).done(function(data) {
               console.log("success");
            }).fail(function() {
               console.log("fail");
            });
         }

         $("#back")
               .on(
                     "click",
                     function() {
                        location.href = "${pageContext.request.contextPath}/board.board";
                     })
                     
         
      </script>
</body>
</html>