<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Assignment</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU"
	crossorigin="anonymous"
>
</head>
<body class="bg-dark">
	<main class="container bg-dark">
		<nav class="navbar navbar-light bg-light fixed-bot">
			<div class="container-fluid">
				<a class="navbar-brand" href="#">ONLINE ENTERTAINMENT</a>
				<button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="offcanvas offcanvas-end bg-light" tabindex="-1" id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel">
					<div class="offcanvas-header">
						<h5 class="offcanvas-title " id="offcanvasNavbarLabel">Menu</h5>
						<button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
					</div>
					<div class="offcanvas-body">
						<ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
							<li class="nav-item">
								<a class="nav-link active" aria-current="page" href="/sof2041final/Homeadmin"> 
									<svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="currentColor" class="bi bi-house-fill" viewBox="0 0 16 16">
                       					 <path fill-rule="evenodd" d="m8 3.293 6 6V13.5a1.5 1.5 0 0 1-1.5 1.5h-9A1.5 1.5 0 0 1 2 13.5V9.293l6-6zm5-.793V6l-2-2V2.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5z" />
                        			 	 <path fill-rule="evenodd" d="M7.293 1.5a1 1 0 0 1 1.414 0l6.647 6.646a.5.5 0 0 1-.708.708L8 2.207 1.354 8.854a.5.5 0 1 1-.708-.708L7.293 1.5z" />
                      				</svg> Home
								</a>
							</li>
							<li class="nav-item">
								<a class="nav-link " href="/sof2041final/Notify"> 
									<svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="currentColor" class="bi bi-chat-right-dots-fill" viewBox="0 0 16 16">
                        				<path d="M16 2a2 2 0 0 0-2-2H2a2 2 0 0 0-2 2v8a2 2 0 0 0 2 2h9.586a1 1 0 0 1 .707.293l2.853 2.853a.5.5 0 0 0 .854-.353V2zM5 6a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm4 0a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm3 1a1 1 0 1 1 0-2 1 1 0 0 1 0 2z" />
                      				</svg> Th??ng b??o
								</a>
							</li>
							<li class="nav-item">
								<a class="nav-link" href="/sof2041final/Manageuser">
									<svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="currentColor" class="bi bi-people-fill" viewBox="0 0 16 16">
  										<path d="M7 14s-1 0-1-1 1-4 5-4 5 3 5 4-1 1-1 1H7zm4-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z" />
  										<path fill-rule="evenodd" d="M5.216 14A2.238 2.238 0 0 1 5 13c0-1.355.68-2.75 1.936-3.72A6.325 6.325 0 0 0 5 9c-4 0-5 3-5 4s1 1 1 1h4.216z" />
  										<path d="M4.5 8a2.5 2.5 0 1 0 0-5 2.5 2.5 0 0 0 0 5z" />
									</svg> Users
								</a>
							</li>
							<li class="nav-item ">
								<a class="nav-link " href="/sof2041final/Managefood">
									<svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="currentColor" class="bi bi-cup-straw" viewBox="0 0 16 16">
                          				<path d="M13.902.334a.5.5 0 0 1-.28.65l-2.254.902-.4 1.927c.376.095.715.215.972.367.228.135.56.396.56.82 0 .046-.004.09-.011.132l-.962 9.068a1.28 1.28 0 0 1-.524.93c-.488.34-1.494.87-3.01.87-1.516 0-2.522-.53-3.01-.87a1.28 1.28 0 0 1-.524-.93L3.51 5.132A.78.78 0 0 1 3.5 5c0-.424.332-.685.56-.82.262-.154.607-.276.99-.372C5.824 3.614 6.867 3.5 8 3.5c.712 0 1.389.045 1.985.127l.464-2.215a.5.5 0 0 1 .303-.356l2.5-1a.5.5 0 0 1 .65.278zM9.768 4.607A13.991 13.991 0 0 0 8 4.5c-1.076 0-2.033.11-2.707.278A3.284 3.284 0 0 0 4.645 5c.146.073.362.15.648.222C5.967 5.39 6.924 5.5 8 5.5c.571 0 1.109-.03 1.588-.085l.18-.808zm.292 1.756C9.445 6.45 8.742 6.5 8 6.5c-1.133 0-2.176-.114-2.95-.308a5.514 5.514 0 0 1-.435-.127l.838 8.03c.013.121.06.186.102.215.357.249 1.168.69 2.438.69 1.27 0 2.081-.441 2.438-.69.042-.029.09-.094.102-.215l.852-8.03a5.517 5.517 0 0 1-.435.127 8.88 8.88 0 0 1-.89.17zM4.467 4.884s.003.002.005.006l-.005-.006zm7.066 0-.005.006c.002-.004.005-.006.005-.006zM11.354 5a3.174 3.174 0 0 0-.604-.21l-.099.445.055-.013c.286-.072.502-.149.648-.222z" />
                        			</svg> Food
                        		</a>
                        	</li>
							<li class="nav-item">
								<a class="nav-link" href="#">
									<svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="currentColor" class="bi bi-file-earmark-bar-graph-fill" viewBox="0 0 16 16">
                          				<path d="M9.293 0H4a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h8a2 2 0 0 0 2-2V4.707A1 1 0 0 0 13.707 4L10 .293A1 1 0 0 0 9.293 0zM9.5 3.5v-2l3 3h-2a1 1 0 0 1-1-1zm.5 10v-6a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5zm-2.5.5a.5.5 0 0 1-.5-.5v-4a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v4a.5.5 0 0 1-.5.5h-1zm-3 0a.5.5 0 0 1-.5-.5v-2a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-.5.5h-1z" />
                        			</svg> Th???ng k??
                        		</a>
                        	</li>
							<li class="nav-item">
								<a class="nav-link" href="#">
									<svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
  										<path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
  										<path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
									</svg> profile users
								</a>
							</li>
							<li class="nav-item">
								<a class="nav-link" href="#">
									<svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="currentColor" class="bi bi-box-arrow-right" viewBox="0 0 16 16">
  										<path fill-rule="evenodd" d="M10 12.5a.5.5 0 0 1-.5.5h-8a.5.5 0 0 1-.5-.5v-9a.5.5 0 0 1 .5-.5h8a.5.5 0 0 1 .5.5v2a.5.5 0 0 0 1 0v-2A1.5 1.5 0 0 0 9.5 2h-8A1.5 1.5 0 0 0 0 3.5v9A1.5 1.5 0 0 0 1.5 14h8a1.5 1.5 0 0 0 1.5-1.5v-2a.5.5 0 0 0-1 0v2z"/>
  										<path fill-rule="evenodd" d="M15.854 8.354a.5.5 0 0 0 0-.708l-3-3a.5.5 0 0 0-.708.708L14.293 7.5H5.5a.5.5 0 0 0 0 1h8.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3z"/>
									</svg> Logout
								</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</nav>
		<div class="row mt-3">
			<div class="bg-dark">
				<ul class="nav nav-tabs" id="myTab" role="tablist">
					<li class="nav-item " role="presentation">
						<button class="nav-link active" id="videoedition-tab"
							data-bs-toggle="tab" data-bs-target="#videoedition" type="button"
							role="tab" aria-controls="videoedition" aria-selected="true">Video
							Edition</button>
					</li>
					<li class="nav-item" role="presentation">
						<button class="nav-link" id="videolist-tab" data-bs-toggle="tab"
							data-bs-target="#profile" type="button" role="tab"
							aria-controls="videolist" aria-selected="false">Video
							List</button>
					</li>
				</ul>
				<div class="tab-content" id="myTabContent">
					<div class="tab-pane fade show active " id="videoedition" role="tabpanel" aria-labelledby="videoedition-tab">
						<table class="table table-dark text-center border-warning">
              <thead>
                <tr>
                  <th scope="col">ng??y ?????t b??n</th>
                  <th scope="col">th???i gian</th>
                  <th scope="col">lo???i b??n</th>
                  <th scope="col">s??? l?????ng b??n</th>
                  <th scope="col"> t??n ng?????i ?????t</th>
                  <th scope="col">s??? ??i???n tho???i</th>
                  <th scope="col"> ?????a ch??? nh?? h??ng</th>
                  <th scope="col" colspan="2"> tr???ng th??i </th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <th scope="row">18/09/2021</th>
                  <td>20:00</td>
                  <td>b??n 2 ng?????i</td>
                  <td>1</td>
                  <td>Nguy???n V??n A</td>
                  <td>0933333221</td>
                  <td>ng?? 2, ???????ng tr???n ?????i ngh??a,h?? n???i</td>
                  <td><a href="Updatebooking.jsp"  class="btn btn-warning text-center rounded-pill" > s???a</a></td>
                  <td><a href="#" class="btn btn-danger text-center rounded-pill" > h???y</a></td>
                </tr>
                <tr>
                  <th scope="row">2</th>
                  <td>Jacob</td>
                  <td>Thornton</td>
                  <td>@fat</td>
                </tr>
                <tr>
                  <th scope="row">3</th>
                  <td colspan="2">Larry the Bird</td>
                  <td>@twitter</td>
                </tr>
              </tbody>
            </table>
					</div>
					<div class="tab-pane fade" id="profile" role="tabpanel"
						aria-labelledby="videolist-tab">
						<table class="table table-dark table-sm border-warning" border="1">
							<thead>
								<tr>
									<th>Th???i gian ?????t h??ng</th>
									<th>T??n ng?????i ?????t</th>
									<th>s??? ??i???n tho???i</th>
                  					<th>?????a ch??? nh???n h??ng</th>
                  					<th>t??n m??n ??n</th>
                 				    <th>s??? l?????ng</th>
                  					<th>gi??</th>
									<th colspan="2" class="text-center">Tr???ng th??i</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${ listfood }" var="item">
									<tr>
										<th>19/09/2021/20:00</th>
										<th>Nguy???n v??n B</th>
										<th>09345451232</th>
                    					<th>h?? n???i</th>
                    					<th>khoai t??y chi??n</th>
                    					<th>1</th>
                    					<th>10.000??</th>
										<th><a
											href="/sof2041final/Managefood/edit?id=${item.foodid }"
											class="btn btn-success text-center rounded-pill">Thanh to??n</a></th>
										<th><a
											href="/sof2041final/Managefood/delete?id=${item.foodid }"
											class="btn btn-danger text-center rounded-pill">h???y ????n</a></th>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</main>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ"
		crossorigin="anonymous"></script>
	<script type="text/javascript">
		$('#myTab a').on('click', function(event) {
			event.preventDefault()
			$(this).tab('show')
		})
	</script>
</body>
</html>