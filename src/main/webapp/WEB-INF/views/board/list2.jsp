<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
 <%@include file="header.jsp" %>
    <style>
    .mb-3{
    text-align:center;
    float:auto;
    }
    
    .mb-3>a{
    font-size: 30px;
    }
    
    #example{
    text-align:center;
    margin-left : 10%;
    font-size : 15px;
    margin-bottom:15%;
    }
    
    .site-blocks-cover{
    z-index:-10;
    }
    
    
#write {
   
    margin-bottom: 150px;
    padding: 10px;
    width: 150px;
    border: 0;
    border-radius: 10px;
    box-shadow: 1px 5px 20px -5px rgba(0, 0, 0, 0.4);
    color: #56453c;
    background-color: #d1d6d4;
    cursor: pointer;
    text-align: center;
    letter-spacing: 1px;
    transition: 0.3s ease;
    font-size: 15px;
}
#write:hover {
  box-shadow: 1px 5px 25px -4px rgba(0, 0, 0, 0.6);
}

    
    </style>
    
    
    
  <body>
  
 
          <div class="site-blocks-cover inner-page-cover overlay" style="background-image: url(/resources/sky22.jpg);" data-aos="fade" data-stellar-background-ratio="0.5" style="margin-top:20%">
      <div class="container">
        <div class="row align-items-center justify-content-center text-center">

          <div class="col-md-12" data-aos="fade-up" data-aos-delay="400">
                        
            <div class="row justify-content-center mb-4">
              <div class="col-md-8 text-center">
               <h3>${dto.nickname }</h3>
                <p class="lead mb-5">${dto.writerInfo }</p>
              </div>
            </div>

          </div>
        </div>
      </div>
    </div>  
    
   

        </div>
      </div>
  
  <table id="example" class="display" style="width: 80%" >
		<thead>
			<tr style="font-weight : 20px">
				<th>글 번호</th>
				<th>글 제목</th>
				<th>글쓴이</th>
				<th>작성날짜</th>
				<th>조회수</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="list" items="${list}">
				<tr>
					<td>${list.seq }</td>
					<td><a href="${pageContext.request.contextPath}/board/detail.board?seq=${list.seq}">${list.title }</a>
					<td><a href="${pageContext.request.contextPath}/board/writer.board?nickname=${list.nickname}">${list.nickname }</td>
					<td>${list.writeDate }</td>
					<td>${list.views }</td>
				</tr>
			</c:forEach>
		</tbody>
		<br><br><br>
		
		
		

	</table>
	
	<script>
		$(document).ready(function() {
			$('#example').DataTable();
		});

	</script>
	 <form action="/board/write.board" method="post">
	<br><br>
	<c:if test="${loginInfo != null }">
	<button id="write" style="float:right">글쓰기</button>
	</c:if>
</form>
</body>
    <br><br><br>
    
 
  </div>
 <%@include file="footer.jsp" %>
 
<script src="/js/jquery-3.3.1.min.js"></script>
	<script src="/js/jquery-migrate-3.0.1.min.js"></script>
	<script src="/js/jquery-ui.js"></script>
	<script src="/js/popper.min.js"></script>
	<script src="/js/bootstrap.min.js"></script>
	<script src="/js/owl.carousel.min.js"></script>
	<script src="/js/jquery.stellar.min.js"></script>
	<script src="/js/jquery.countdown.min.js"></script>
	<script src="/js/jquery.magnific-popup.min.js"></script>
	<script src="/js/bootstrap-datepicker.min.js"></script>
	<script src="/js/aos.js"></script>
	<script src="/js/typed.js"></script>
  <script src="/js/main.js"></script>
 
 
 <script>
 /*
  $("#gudokBtn").on("click",function(){
	  $.ajax({
		  url:"/board/gudok.board",
		  data : {
			  nickname : $("#nickname").val()
		  },
		  method:"get"
	  }).done(function(data){
		  console.log("success");
	  }).fail(function(data){
		  console.log("fail");
	  });
	  
  })
  */
 
 </script>
    
  </body>
</html>