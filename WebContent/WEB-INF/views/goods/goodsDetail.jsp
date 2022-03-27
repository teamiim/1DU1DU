<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link href="${ pageContext.servletContext.contextPath }/resources/css/goods_list.css" rel="stylesheet" type="text/css">
<link rel="icon" type="image/x-icon" href="${ pageContext.servletContext.contextPath }/resources/image/android-icon-48x48.png"> 
<title>1 D U 1 D U</title>
</head>
<body>
    <div class="header_hidden" >
        <jsp:include page="../main/header.jsp" />
    </div>

		<!-- menu bar-->
        <nav class="navbar-expand-lg navbar-light bg-light">
            <div class="container-fluid" >
              
              <div class="collapse navbar-collapse" id="navbarSupportedContent" >
                <ul class="navbar-nav me-auto mb-2 mt-lg-2 mb-lg-2" >
                  <li class="nav-item ms-5 me-4">
                    <a class="nav-link fs-5" href="#">NEW</a>
                  </li>
                  <li class="nav-item me-4">
                    <a class="nav-link fs-5" href="#">BEST</a>
                  </li>
                  <li class="nav-item me-4">
                    <a class="nav-link fs-5" href="#">원두</a>
                  </li>
                  <li class="nav-item me-4">
                    <a class="nav-link fs-5" href="#">드립백</a>
                  </li>
                  <li class="nav-item me-4">
                    <a class="nav-link fs-5" href="#">콜드브루</a>
                  </li>
                  <li class="nav-item me-4">
                    <a class="nav-link fs-5" href="#">커피용품</a>
                  </li>
                </ul>
              </div>
            </div>
          </nav>
      
      
      <div class="container">
        <div class="row my-5">
            <div class="col">
                <h1 class="h1 mt-4">${ goods.goodsName }</h1>
                <p>${ goods.goodsNameEn }</p>
                <h4 class="text-sm-start mt-5 mb-5">${ goods.goodsExplain }</h4>
                <h5 class="text-md-start mb-1">용량</h5>
                <select class="form-select" aria-label="Default select example">
                    <option selected>용량을 선택하세요</option>
                    <option value="1">200g</option>
                    <option value="2">500g</option>
                </select>
                <h5 class="text-md-start mt-5 mb-1">분쇄도</h5>
                <select class="form-select" aria-label="Default select example">
                    <option selected>분쇄도를 선택하세요</option>
                    <option value="1">홀빈(갈지않음)</option>
                    <option value="2">핸드드립/커피메이커</option>
                    <option value="3">프렌치프레스</option>
                    <option value="4">모카포트</option>
                    <option value="5">에스프레소머신</option>
                    <option value="6">콜드브루/더치</option>
                </select>
                <div class="row">
                    <div class="col-5">
                        <div class="d-grid gap-2">
                          <br>
                            <button type="button" class="btn btn-primary btn-lg btn-dark mt-5">구매하기</button>
                        </div>
                    </div>
                    <div class="col-5">
                        <div class="d-grid gap-2">
                          <br>
                            <button type="button" class="btn btn-lg btn-outline-dark mt-5">장바구니</button>
                        </div>
                    </div>
                    <div class="col-1 mt-5">
                        <div class="d-grid">
                          <br>
                          
                          <!-- 찜하기 : 채워진 하트 -->
                          <!-- <a href="#"><i class="bi bi-suit-heart-fill" style="font-size: 2rem; color: black;"></i></a> -->
                          <!-- 찜하기 : 빈 하트 -->
                          <a href="#"><i class="bi bi-suit-heart" style="font-size: 2rem; color: black;"></i></a>
                        </div>
                        <!-- <p class="text" style="font-size: 1px; text-align: center;">153</p> -->
                    </div>
                    <div class="col-1 mt-5">
                        <div class="d-grid">
                          <br>
                            <a href="#" onclick="clipcopy(); return false;"><i class="bi-share" style="font-size: 2rem; color: black;"></i></a>
                        </div>
                    </div>
                </div>   
            </div>   
            <div class="col-1">
              <br>
            </div>
            <c:forEach items="${ goods.imgList }" var="img">
            <div class="col">
                <img src="${ pageContext.servletContext.contextPath }${ img.fileRoot }${ img.editedName }" class="w-100" alt="매뉴팩트5">
            </div>
            </c:forEach>
        </div>
      </div>
      <div class="container">
        <br><br><br>
          <div class="row my-5">
              <div class="col-4">
                <h4>Fact sheet</h4>
                <table class="table table-borderless">
                    <tbody>
                        <tr>
                            <td scope="row">생산자</td>
                            <th>Fredy Orantes</th>
                        </tr>
                        <tr>
                            <td scope="row">농장</td>
                            <th>Buena Vista</th>
                        </tr>
                        <tr>
                            <td scope="row">지역</td>
                            <th>Santa Rosa, Guatemala</th>
                        </tr>
                        <tr>
                            <td scope="row">품종</td>
                            <th>Yellow Catuai</th>
                        </tr>
                        <tr>
                            <td scope="row">가공</td>
                            <th>Natural</th>
                        </tr>
                        <tr>
                            <td scope="row">로스팅</td>
                            <th>Medium</th>
                        </tr>
                    </tbody>
                </table>
              </div>
              <div class="col-1">
                <div class="d-flex" style="height: 300px;">
                    <div class="vr"></div>
                  </div>
              </div>
              <div class="col-5">
                <h4>ABOUT THIS COFFEE</h4>
                <h5 class="h5 mt-3">${ goods.goodsExplain }</h5>
                <p>
                    <br>
                    1DU1DU에서 두 번째로 소개드리는 부에나 비스타 농장의 커피입니다. 
                    초콜릿의 달콤함과 아몬드의 고소함은 여전하지만, 
                    이번 내추럴 커피에서는 은은한 베리 향미도 애프터에서 느끼실 수 있어요.
                </p>
              </div>
          </div>
      </div>
      <div class="container">
        <br><br>
        <div class="row my-5">
          <div class="col-5">
            <br><br>
            <img src="${ pageContext.servletContext.contextPath }/resources/image/추천레시피.jpg" class="w-100" alt="추천레시피">
          </div>
          <div class="col-1">
            <br>
          </div>
          <div class="col-4">
            <br><br>
            <h2 class="h2"><strong>추천 레시피(하리오 v60)</strong></h2>
            <p>
              <br>
              원두량 : 20g / 물의 양 : 280ml / 추출 온도 : 93°C
              <br><br>
              1. 50g의 물을 투입 후 드리퍼를 5회 흔들어 줍니다.
              <br>
              2. 40초에 중간 물줄기로 140g까지 물을 부어줍니다.
              <br>
              3. 1분 5초 중간 물줄기로 240g까지 물을 부어줍니다.
              <br>
              4. 1분 30초 중간보다 얇은 물줄기로 280g까지 물을 부어줍니다.
              <br>
              5. 물을 모두 부어준 뒤 5회 정도 흔들어줍니다.
              <br>
              6. 추출 시간 총 2분 10초
              <br>
              <br>
            </p>
          </div>
        </div>
      </div>
      <div class="container">
          <div class="row my-5">
              <div class="col">

                <br><br><br>

                  <h2 class="h2">Shipping & Delivery</h2>
                  <div class="accordion my-3" id="accordionExample">
                    <div class="accordion-item">
                      <h2 class="accordion-header" id="headingOne">
                        <button class="accordion-button bg-white" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne" style="color: black;">
                          배송 안내
                        </button>
                      </h2>
                      <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                        <div class="accordion-body">
                          <ul>
                              <li>배송비는 2,500원이며, 25,000원 이상 구매시 무료로 배송됩니다. (일부 도서산간지역은 추가 배송비가 발생할 수 있습니다.)</li>
                              <li>평일 기준 오전 10시 이전 주문은 당일 출고되며, 이후 주문은 익일에 출고됩니다. </li>
                              <li>상품은 출고 후 주말을 제외하고 1~3일 이내에 받아보실 수 있습니다. 단, 택배사 상황에 따라 지연될 수 있습니다.  </li>
                          </ul>
                        </div>
                      </div>
                    </div>
                    <div class="accordion-item">
                      <h2 class="accordion-header" id="headingTwo">
                        <button class="accordion-button collapsed bg-white" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                          교환/환불 안내
                        </button>
                      </h2>
                      <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
                        <div class="accordion-body">
                            <ul>
                                <li>개봉 전이라면 고객 변심에 의한 상품(식품 외)의 교환/환불이 가능하지만, 배송비를 부담하셔야 합니다. </li>
                                <li>원두와 커피는 식품의 특성 상, 제품의 하자와 오류를 제외하고 교환/환불이 불가능한 점 양해 부탁드립니다.  </li>
                                <li>기타 문의사항은 전화로 연락 바랍니다. (02-1234-5678, 평일 오전 10시-오후 7시)   </li>
                            </ul>
                        </div>
                      </div>
                    </div>
                    
                  </div>
              </div>
          </div>

      </div>
      <div class="container">
        <br><br><br>
          <div class="row my-10">
              <div class="col">
                  <h2 class="h2">Review</h2>
              </div>
          </div>
      </div>
      <div class="container">
        <table class="table text-center">
            <thead>
              <tr>
                <th scope="col-1">번호</th>
                <th scope="col-4">제목</th>
                <th scope="col-2">작성일</th>
                <th scope="col-2">작성자</th>
                <th scope="col-1">조회</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <th scope="row">5</th>
                <td>향도 좋고 고소해요.</td>
                <td>22/03/01</td>
                <td>김***</td>
                <td>1</td>
              </tr>
              <tr class="js_detail" data-bdid="goodsreview" data-sno="95" data-auth="y" date-notice="n" style="display: table-row;">
                <td colspan="4" class="reviews_new_box">
                  <div class="board_cont">
                      <div class="board_view">
                          <p>최근 마신 과테말라 중 가장 탁월한 맛입니다<br>
                              카카오의 달콤함과 특유의 쌉쌀한 맛이 잘 녹아 <br>
                              있습니다</p>
                      </div>
                      <!-- //board_view -->
              
                      <div class="btn_view_comment_box">
                      </div>
                      <!-- //btn_view_comment_box -->
              
                      <div class="view_comment">
                          <div class="view_comment_top">
                          </div>
                          <!-- //view_comment_top -->
                      </div>
                      <!-- //view_comment -->
                  </div>
                  <!-- //board_cont -->
              </td>
              </tr>
              <tr>
                <th scope="row">5</th>
                <td>향도 좋고 고소해요.</td>
                <td>22/03/01</td>
                <td>김***</td>
                <td>1</td>
              </tr>
              <tr>
                <th scope="row">5</th>
                <td>향도 좋고 고소해요.</td>
                <td>22/03/01</td>
                <td>김***</td>
                <td>1</td>
              </tr>
              <tr>
                <th scope="row">5</th>
                <td>향도 좋고 고소해요.</td>
                <td>22/03/01</td>
                <td>김***</td>
                <td>1</td>
              </tr>
              <tr>
                <th scope="row">5</th>
                <td>향도 좋고 고소해요.</td>
                <td>22/03/01</td>
                <td>김***</td>
                <td>1</td>
              </tr>
            </tbody>
          </table>
      </div>
      
      <script>
	      function clipcopy(){
	    		var url = '';
	    		var textarea = document.createElement("textarea");
	    		document.body.appendChild(textarea);
	    		url = window.document.location.href;
	    		textarea.value = url;
	    		textarea.select();
	    		document.execCommand("copy");
	    		document.body.removeChild(textarea);
	    		alert("클립보드에 URL이 복사되었습니다.")
	    	}
      </script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

      
  </body>
</html>