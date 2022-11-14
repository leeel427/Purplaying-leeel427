<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	
<!DOCTYPE html>
<html>
<head>
<!-- meta태그, CSS, JS, 타이틀 인클루드  -->
<%@ include file="meta.jsp"%>
<link rel="stylesheet" href="resources/assets/css/indexHover.css">
</head>

<body>
	<!--헤더 인클루드-->
	<%@ include file="header.jsp"%>

	<!--페이지 내용 시작-->
	<section>
		<!--컨텐츠 영역-->
		<div class="row justify-content-md-center">
			<h2 class="col-auto my-5">고객센터</h2>
		</div>
		<div class="container mb-5">
			<div class="mb-4">
				<!-- 탭 start-->
				<div class="nav nav-tabs nav-justified" id="v-pills-tab"
					role="tablist">
					<!-- 탭 menu start-->
					<button class="nav-link" aria-selected="false" onclick="location.href='/purplaying/servicecenter'">공지사항</button>
					<button class="nav-link" aria-selected="false" onclick="location.href='/purplaying/questions'">자주 묻는 질문</button>
					<button class="nav-link active" aria-selected="true">1:1
						문의</button>
				</div>
				<!-- 탭 menu end-->
				<div class="row col-10 justify-content-center mx-auto">
					<div>
						<div class="row justify-content-end mt-4">
							<form class=" col-lg-auto mb-5 mb-lg-0 me-lg-3" role="search" action="genre">
								<form action="<c:url value="/oneonone/list" />" class="search-form" method="get"> 
								<input type="search" class="form-control" name="search" value="${param.keyword }" placeholder="Search..." aria-label="Search"	onclick="frm.submit()">
					<%-- 
														<select class="search-option" name="option">
										<option value="A" ${pr.sc.option=='A' || pr.sc.option=='' ? "selected" : "" }>제목+내용</option>
										<option value="T" ${pr.sc.option=='T' ? "selected" : "" }>제목</option>
										<option value="W" ${pr.sc.option=='W' ? "selected" : "" }>작성자</option>
									</select> --%>
					
					<!-- <input type="submit" class="search-button" value="검색">  -->
							
							</form>

							<table class="table project-table table-centered table-nowrap table-hover">
								<thead class="border-3 border-bottom">
									<tr>
										<th scope="col">#</th>
										<th scope="col">답변상태</th>
										<th scope="col">제목</th>
										<th scope="col">작성자</th>
										<th scope="col">공개여부</th>
										<th scope="col">작성일</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="boardDto" items="${list }">
										<tr>
											<td class="no">${boardDto.inquiry_no }</td>
											<td class="state">${boardDto.inquiry_state }</td>
											<td class="title"><a href="<c:url value='/oneonone/read?inquiry_no=${boardDto.inquiry_no }&page=${page }&pageSize=${pageSize }'/>">
													${boardDto.inquiry_title } </a></td>
											<td class="writer">${boardDto.user_id }</td>
											<td class="private">${boardDto.inquiry_private }</td>

											<td class="regdate"><fmt:formatDate	value="${boardDto.inquiry_regdate }" pattern="yyyy-MM-dd" type="date" /></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
						<!-- end project-list -->
						<div class="pt-3 row">
							<!-- 검색창 -->
							<div class="col-1"></div>
		<%--  					<ul class="pagination mb-0 col-10 justify-content-center">
				                	<c:if test="${totalCnt == null || totalCnt == 0 }">
											<h6 class="row text-center ">게시물이 없습니다.</h6>
									</c:if>
					                <!-- 게시물이 있는 경우, page nav 출력  -->
									<c:if test="${totalCnt != null || totalCnt != 0 }">
										<c:if test="${pr.showPrev }">
											<li class="page-item disabled">
						                        <a class="page-link" href="<c:url value="/oneonone/list?page=${pr.beginPage-1 }"/>" tabindex="-1" aria-disabled="true">PREV</a>
						                    </li>
										</c:if>
										<c:forEach var="i" begin="${pr.beginPage }" end="${pr.endPage }">
											<li class="page-item">
												<a class="page-link" href="<c:url value="/oneonone/list?page=${i}"/>"> ${i} </a>
											</li>
										</c:forEach>
										<c:if test="${pr.showNext }">
											<li class="page-item disabled">
						                        <a class="page-link" href="<c:url value="/oneonone/list?page=${pr.endPage+1 }"/>" tabindex="-1" aria-disabled="true" >NEXT</a>
						                    </li>
										</c:if>
									</c:if>
								</ul>  --%>
									<ul class="pagination mb-0 col-10 justify-content-center">
				                	<c:if test="${totalCnt == null || totalCnt == 0 }">
											<h6 class="row text-center ">게시물이 없습니다.</h6>
									</c:if> 
					                <!-- 게시물이 있는 경우, page nav 출력  -->
									<c:if test="${totalCnt != null || totalCnt != 0 }">
										<c:if test="${pr.showPrev }">											
						                        <a class="page-link" href="<c:url value="/oneonone/list?page=${pr.beginPage-1 }"/>" tabindex="-1" aria-disabled="true">PREV</a>
										</c:if>
										<c:forEach var="i" begin="${pr.beginPage }" end="${pr.endPage }">											
												<a class="page-link" href="<c:url value="/oneonone/list?page=${i}"/>"> ${i} </a>										
										</c:forEach>
										<c:if test="${pr.showNext }">											
						                        <a class="page-link" href="<c:url value="/oneonone/list?page=${pr.endPage+1 }"/>" tabindex="-1" aria-disabled="true" >NEXT</a>						                 
										</c:if>
									</c:if>
								</ul>  
<%-- 		 					<ul class="pagination mb-0 col-10 justify-content-center">
								<c:if test="${totalCnt == null || totalCnt == 0 }">
									<div>게시물이 없습니다.</div>
								</c:if>

								<c:if test="${totalCnt != null || totalCnt != 0 }">
									<c:if test="${pr.showPrev }">
										<a class="page"	href="<c:url value="/oneonone/list?page=${pr.beginPage-1 }" />">◁ </a>
									</c:if>
									<c:forEach var="i" begin="${pr.beginPage }" end="${pr.endPage }">
										<a class="page" href="<c:url value="/oneonone/list?page=${i }" />">${i }</a>
									</c:forEach>
									<c:if test="${pr.showNext }">
										<a class="page" href="<c:url value="/oneonone/list?page=${pr.endPage+1 }" />">▷</a>
									</c:if>
								</c:if>
							</ul>   --%>
							<button type="button" class="col-1 btn btn-primary" onclick="location.href='/purplaying/inquirywrite'">작성</button>
							<!--				<button id="writrBtn" class="btn-write" onclick="location.href='<c:url value="/board/write" />' " >
						<i class="fa fa-pen"></i>글쓰기</button>  -->

						</div>
						<!-- end row -->
					</div>

				</div>
				<!-- 탭 end-->
			</div>
		</div>
		<!-- 컨텐츠영역 end-->
	</section>
	<!--페이지 내용 종료-->
		<script type="text/javascript">
	$(document).ready(function() {
		$("#listBtn").on("click", function() {
			location.href ="<c:url value='/oneonone/list?page=${page}&pageSize=${pageSize}' />";
		})
		
		$("#removeBtn").on("click", function() {
			if(!confirm("정말로 삭제하시겠습니까?")) return;
			
			let form = $("#form")
			form.attr("action","<c:url value='/oneonone/remove?page=${page}&pageSize=${pageSize}' />")
			form.attr("method", "post")
			form.submit()
		})
				$("#writeBtn").on("click", function() {
			let form = $("#form");
			form.attr("action", "<c:url value='/oneonone/write' />")
			form.attr("method", "post")
			
			if(formCheck())
				form.submit()					
		})
		$("#writeBtn").on("click", function() {
			location.href ="<c:url value='/oneonone/write' />";	
		})
	})
	</script>

	<!--푸터 인클루드-->
	<%@ include file="footer.jsp"%>
</body>
</html>