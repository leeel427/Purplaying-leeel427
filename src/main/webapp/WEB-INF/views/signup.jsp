<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <!-- meta태그, CSS, JS, 타이틀 인클루드  -->
  <%@ include file ="meta.jsp" %>
</head>
<body>
  <!--헤더 인클루드-->
  <%@ include file ="header.jsp" %>
  <!-- 전체 동의 체크-->
  <script src="resources/assets/js/selectAll.js"></script>
  <!--메인 컨테이너 -->
 <section>
    <h1 class="visually-hidden">HOME</h1>
    <div class="contentsWrap">
      <!--컨텐츠 영역-->
      <div class="row col-md-8 d-block mx-auto">
        <h2 class="mb-3">이메일 간편가입</h2>
        <form action="/login" class="needs-validation"> <!--novalidate-->
          <div class="row">
            <label for="email" class="form-label">Email</label>
            <div class="input-group mb-2">
                <input type="email" class="form-control" id="email" placeholder="you@example.com" required autofocus>
                <button class="btn btn-outline-secondary" type="button" id="button-addon2">인증하기</button>
                <div class="invalid-feedback">
                  Please enter a valid email address for shipping updates.
                </div>
            </div>
          </div>

          <div class="col-12 mt-2">
            <label for="password" class="form-label">비밀번호</label>
            <input type="password" class="form-control mb-2" id="password" placeholder="비밀번호 입력" required>
            <input type="password" class="form-control" id="passwordConfirm" placeholder="비밀번호 확인" required>
            <div class="invalid-feedback">
              Please enter your shipping address.
            </div>
          </div>

            <div class="col-12 mt-2">
              <label for="username" class="form-label">Username</label>
              <div class="input-group has-validation">
                <span class="input-group-text">@</span>
                <input type="text" class="form-control" id="username" placeholder="Username" required>
              <div class="invalid-feedback">
                  Your username is required.
                </div>
              </div>
            </div>

            <div class="col-12 mt-2">
              <label for="userphone" class="form-label">연락처</label>
              <div class="input-group mb-3">
                <input type="number" class="form-control" id="userphone" placeholder="휴대폰 번호 (-없이 입력)">
                <button class="btn btn-outline-secondary" type="button" id="button-addon2">인증번호 받기</button>
              </div>
              <input type="number" class="form-control" id="userphoneConfirm" placeholder="인증번호 입력 (남은 시간 2분 58초)">
            </div>
            
            <hr class="my-4">
			<!-- 전체 동의 -->
            <div class="accordion" id="accordionPanelsStayOpenExample">
              <div class="accordion-item">
                <h2 class="accordion-header" id="panelsStayOpen-headingOne">
                  <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseOne" aria-expanded="true" aria-controls="panelsStayOpen-collapseOne">
                    <div class="form-check">
                      <input type="checkbox" class="form-check-input" id="agreeAll" name="agree" onclick="selectAll(this)"> 
                      <label class="form-check-label" for="agree-14">전체동의</label>
                    </div>
                  </button>
                </h2>
                <div id="panelsStayOpen-collapseOne" class="accordion-collapse collapse show" aria-labelledby="panelsStayOpen-headingOne">
                  <div class="accordion-body">
                    <div class="row mb-2">
                      <div class="col-8">
                        <input type="checkbox" class="form-check-input" id="agree1" name="agree">
                        <label class="form-check-label" for="agree-1">만 14세 이상입니다. (* 필수)</label>
                      </div>
                      <!-- Button trigger modal -->
                      <div class="col-4 text-small text-muted text-end" data-bs-toggle="modal" data-bs-target="#agree1Modal"><a href="#">내용보기</a></div>
                      <!-- Modal -->
                      <div class="modal fade" id="agree1Modal" tabindex="-1" aria-labelledby="agree1ModalLabel" aria-hidden="true">
                        <div class="modal-dialog">
                          <div class="modal-content">
                            <div class="modal-header">
                              <h5 class="modal-title" id="agree1ModalLabel">만 14세 이상 동의</h5>
                              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                              만 14세 이상입니다.
                              .<br>
                              .<br>
                              .<br>
                              .<br>
                              .<br>
                              .<br>
                              .<br>
                            </div>
                            <div class="modal-footer">
                              <label for="agree1" class="btn btn-primary" data-bs-dismiss="modal">동의</label>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    
                    <div class="row mb-2">
                      <div class="col-8">
                        <input type="checkbox" class="form-check-input" id="agree2" name="agree">
                        <label class="form-check-label" for="agree-2">퍼플레잉 이용 약관 동의 (* 필수)</label>
                      </div>
                      <!-- Button trigger modal -->
                      <div class="col-4 text-small text-muted text-end" data-bs-toggle="modal" data-bs-target="#agree2Modal"><a href="#">내용보기</a></div>
                      <!-- Modal -->
                      <div class="modal fade" id="agree2Modal" tabindex="-1" aria-labelledby="agree2ModalLabel" aria-hidden="true">
                        <div class="modal-dialog">
                          <div class="modal-content">
                            <div class="modal-header">
                              <h5 class="modal-title" id="agree2ModalLabel">퍼플레잉 이용 약관 동의</h5>
                              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                              퍼플레잉 이용 약관 동의합니다.
                              .<br>
                              .<br>
                              .<br>
                              .<br>
                              .<br>
                              .<br>
                              .<br>
                            </div>
                            <div class="modal-footer">
                              <label for="agree2" class="btn btn-primary" data-bs-dismiss="modal">동의</label>
                            </div>
                          </div>
                        </div>
                      </div> <!-- Modal end-->
                      
                    </div>
                    
                    <div class="row mb-2">
                      <div class="col-8">
                        <input type="checkbox" class="form-check-input" id="agree3" name="agree">
                        <label class="form-check-label" for="agree-3">개인정보 수집 및 이용 동의 (* 필수)</label>
                      </div>
                      <!-- Button trigger modal -->
                      <div class="col-4 text-small text-muted text-end" data-bs-toggle="modal" data-bs-target="#agree3Modal"><a href="#">내용보기</a></div>
                      <!-- Modal -->
                      <div class="modal fade" id="agree3Modal" tabindex="-1" aria-labelledby="agree3ModalLabel" aria-hidden="true">
                        <div class="modal-dialog">
                          <div class="modal-content">
                            <div class="modal-header">
                              <h5 class="modal-title" id="agree3ModalLabel">개인정보 수집 및 이용 동의</h5>
                              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                              개인정보 수집 및 이용 동의합니다.
                              .<br>
                              .<br>
                              .<br>
                              .<br>
                              .<br>
                              .<br>
                              .<br>
                            </div>
                            <div class="modal-footer">
                              <label for="agree3" class="btn btn-primary" data-bs-dismiss="modal">동의</label>
                            </div>
                          </div>
                        </div>
                      </div> <!-- Modal end-->
                    </div>

                    <div class="row mb-2">
                      <div class="col-8">
                        <input type="checkbox" class="form-check-input" id="agree4" name="agree">
                        <label class="form-check-label" for="agree-4">개인정보 제 3자 제공 동의 (선택)</label>
                      </div>
                      <!-- Button trigger modal -->
                      <div class="col-4 text-small text-muted text-end" data-bs-toggle="modal" data-bs-target="#agree4Modal"><a href="#">내용보기</a></div>
                      <!-- Modal -->
                      <div class="modal fade" id="agree4Modal" tabindex="-1" aria-labelledby="agree4ModalLabel" aria-hidden="true">
                        <div class="modal-dialog">
                          <div class="modal-content">
                            <div class="modal-header">
                              <h5 class="modal-title" id="agree4ModalLabel">개인정보 제 3자 제공 동의</h5>
                              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                              개인정보 제 3자 제공 동의합니다.
                              .<br>
                              .<br>
                              .<br>
                              .<br>
                              .<br>
                              .<br>
                              .<br>
                            </div>
                            <div class="modal-footer">
                              <label for="agree4" class="btn btn-primary" data-bs-dismiss="modal">동의</label>
                            </div>
                          </div>
                        </div>
                      </div> <!-- Modal end-->
                    </div>

                    <div class="row mb-2">
                      <div class="col-8">
                        <input type="checkbox" class="form-check-input" id="agree5" name="agree">
                        <label class="form-check-label" for="agree-5">마케팅 정보 수신 동의 (선택)</label>
                      </div>
                      <!-- Button trigger modal -->
                      <div class="col-4 text-small text-muted text-end" data-bs-toggle="modal" data-bs-target="#agree5Modal"><a href="#">내용보기</a></div>
                      <!-- Modal -->
                      <div class="modal fade" id="agree5Modal" tabindex="-1" aria-labelledby="agree5ModalLabel" aria-hidden="true">
                        <div class="modal-dialog">
                          <div class="modal-content">
                            <div class="modal-header">
                              <h5 class="modal-title" id="agree5ModalLabel">마케팅 정보 수신 동의</h5>
                              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                              마케팅 정보 수신 동의합니다.
                              .<br>
                              .<br>
                              .<br>
                              .<br>
                              .<br>
                              .<br>
                              .<br>
                            </div>
                            <div class="modal-footer">
                              <label for="agree5" class="btn btn-primary" data-bs-dismiss="modal">동의</label>
                            </div>
                          </div>
                        </div>
                      </div> <!-- Modal end-->
                    </div>

                  </div>
                </div>
              </div>
            </div>
          <!-- 회원가입 완료 버튼 -->
          <div class="w-100 btn btn-primary btn-lg mt-4" type="submit" data-bs-toggle="modal" data-bs-target="#signUpCompleteModal">회원가입</div>
          <!-- 회원가입 완료 모달창 -->
          <div class="modal fade" id="signUpCompleteModal" tabindex="-1" aria-labelledby="signUpCompleteModalLabel" aria-hidden="true">
            <div class="modal-dialog">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title" id="signUpCompleteModalLabel">🎉 회원가입이 완료되었습니다! </h5>
                  <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                  축하합니다! 번역 크라우드 펀딩 사이트,<br>
                  퍼플레잉에서 다양한 작품을 만나보세요.
                </div>
                <div class="modal-footer">
                  <button class="btn btn-primary" data-bs-dismiss="modal" aria-label="Close" onclick="location.href='login'">확인</button>
                </div>
              </div>
            </div>
          </div> <!-- Modal end-->
        </form>

        <hr class="my-4">
        
        <p class="text-center">이미 퍼플레잉 계정이 있나요? <a href="login">로그인</a></p>
        <h5 class="mb-3 text-center">또는 다른 방법으로 회원가입</h5>
       	<!--소셜 로그인 인클루드-->
  		<%@ include file ="socialLogin.jsp" %>

      </div>

     



    </div>

  </section>
  <!--푸터 인클루드-->
  <%@ include file ="footer.jsp" %>
 
</body>
</html>