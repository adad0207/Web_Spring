<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>



<%@include file="../includes/header.jsp"%>
<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header">Board Read</h1>
	</div>
	<!-- /.col-lg-12 -->
</div>
<!-- /.row -->
<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">Board Read Page</div>
			<!-- /.panel-heading -->
			<div class="panel-body">
				<div class="form-group">
					<label>Bno_1</label></br> <input type="text" class="form-control"
						name="bno" value="${board.bno }" readonly="readonly">
				</div>

				<div class="form-group">
					<label>Title</label></br> <input type="text" class="form-control"
						name="title" value="${board.title }" readonly="readonly">
				</div>

				<div class="form-group">
					<label>Text Area</label> </br> <input type="text" class="form-control"
						name="content" value="${board.content }" readonly="readonly">
				</div>

				<div class="form-group">
					<label>Writer</label> </br> <input type="text" class="form-control"
						name="writer" value="${board.writer }" readonly="readonly">
				</div>

				<button data-oper="modify" class="btn btn-default"
					onclick="location.href='/board/modify?bno=${board.bno }'">Modify</button>

				<button data-oper="list" class="btn btn-info"
					onclick="location.href='/board/list'">List</button>

				<form id='operForm' action="/boad/modify" method="get">
					<input type='hidden' id='bno' name='bno'
						value='<c:out value="${board.bno}"/>'> <input
						type='hidden' name='pageNum'
						value='<c:out value="${cri.pageNum}"/>'> <input
						type='hidden' name='amount' value='<c:out value="${cri.amount}"/>'>
					<!-- 					<input type='hidden' name='keyword' -->
					<%-- 						value='<c:out value="${cri.keyword}"/>'> <input --%>
					<%-- 						type='hidden' name='type' value='<c:out value="${cri.type}"/>'> --%>

				</form>

			</div>
			<!-- /.panel-body -->
		</div>
		<!-- /.panel -->
	</div>
	<!-- /.col-lg-6 -->
</div>
<!-- /.row -->

<div class='row'>

	<div class="col-lg-12">

		<!-- /.panel -->
		<div class="panel panel-default">
			<!--       <div class="panel-heading">
        <i class="fa fa-comments fa-fw"></i> Reply
      </div> -->

			<div class="panel-heading">
				<i class="fa fa-comments fa-fw"></i> Reply
				<button id='addReplyBtn' class='btn btn-primary btn-xs pull-right'>New
					Reply</button>
			</div>


			<!-- /.panel-heading -->
			<div class="panel-body">

				<ul class="chat">
					<!--  start reply -->
					<li class="left clearfix" data-rno='12'>
						<div>
							<div class="header">
								<strong class="primary-font">user00</strong> <small
									class="pull-right text-muted">2022-12-10</small>
							</div>
							<p>Hello</p>
						</div>
					</li>
				</ul>
				<!-- ./ end ul -->
			</div>
			<!-- /.panel .chat-panel -->

			<div class="panel-footer"></div>


		</div>
	</div>
	<!-- ./ end row -->
</div>


<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">&times;</button>
				<h4 class="modal-title" id="myModalLabel">REPLY MODAL</h4>
			</div>
			<div class="modal-body">
				<div class="form-group">
					<label>Reply</label> <input class="form-control" name='reply'
						value='New Reply!!!!'>
				</div>
				<div class="form-group">
					<label>Replyer</label> <input class="form-control" name='replyer'
						value='replyer'>
				</div>
				<div class="form-group">
					<label>Reply Date</label> <input class="form-control"
						name='replyDate' value='2022-12-10 13:13'>
				</div>

			</div>
			<div class="modal-footer">
				<button id='modalModBtn' type="button" class="btn btn-warning">Modify</button>
				<button id='modalRemoveBtn' type="button" class="btn btn-danger">Remove</button>
				<button id='modalRegisterBtn' type="button" class="btn btn-primary">Register</button>
				<button id='modalCloseBtn' type="button" class="btn btn-default">Close</button>
			</div>
		</div>
		<!-- /.modal-content -->
	</div>
	<!-- /.modal-dialog -->
</div>
<!-- /.modal -->


<script type="text/javascript" src="/resources/js/reply.js"></script>

<script>
	$(document)
			.ready(
					function() {

						var bnoValue = '<c:out value="${board.bno}"/>';
						var replyUL = $(".chat");
						console.log("list!!");

						showList(1);

						function showList(page) {
							replyService
									.getList(
											{
												bno : bnoValue,
												page : page || 1
											},
											function(data) {

												var str = "";
												if (data == null
														|| data.list.length == 0) {

													replyUL.html("");

													return;
												}
												for (var i = 0, len = data.list.length || 0; i < len; i++) {
													str += "<li class='left clearfix' data-rno='"+data.list[i].rno+"'>";
													str += "  <div><div class='header'><strong class='primary-font'>"
															+ data.list[i].replyer
															+ "</strong>";
													str += "    <small class='pull-right text-muted'>"
															+ replyService
																	.displayTime(data.list[i].replyDate)
															+ "</small></div>";
													str += "    <p>"
															+ data.list[i].reply
															+ "</p></div></li>";
												}

												replyUL.html(str);

											});//end function

						}//end showList
						
						var modal = $(".modal");
					    var modalInputReply = modal.find("input[name='reply']");
					    var modalInputReplyer = modal.find("input[name='replyer']");
					    var modalInputReplyDate = modal.find("input[name='replyDate']");
					    
					    var modalModBtn = $("#modalModBtn");
					    var modalRemoveBtn = $("#modalRemoveBtn");
					    var modalRegisterBtn = $("#modalRegisterBtn");
					    
					    $("#modalCloseBtn").on("click", function(e){
					    	
					    	modal.modal('hide');
					    });
					    
					    $("#addReplyBtn").on("click", function(e){
					      
					      modal.find("input").val("");
					      modalInputReplyDate.closest("div").hide();
					      modal.find("button[id !='modalCloseBtn']").hide();
					      
					      modalRegisterBtn.show();
					      
					      $(".modal").modal("show");
					      
					    });

					    modalRegisterBtn.on("click",function(e){
					        
 					        var reply = {
 					              reply: modalInputReply.val(),
 					              replyer:modalInputReplyer.val(),
 					              bno:bnoValue
					            };
 					        replyService.add(reply, function(result){
					          
					          alert(result);
					          
 					          modal.find("input").val("");
 					          modal.modal("hide");
					          
					          showList(1);
					          
 					        });
					});
});
</script>


<script>
	// console.log("===============");
	// console.log("JS TEST");

	// var bnoValue = '<c:out value="${board.bno}"/>';

	// // for replyService add test
	// replyService.add(

	//     {reply:"myReply", replyer:"gery", bno:bnoValue}
	//     ,
	//     function(result){ 
	//       alert("RESULT: " + result);
	//     }
	// );

	// reply List Test
	// replyService.getList({bno:bnoValue, page:1}, function(data){
	//     console.log("getList()...")
	//     console.log(data)
	// 	  for(var i = 0,  len = data.list.length||0; i < len; i++ ){
	// 	    console.log(data.list[i]);
	//     	console.log("list()...")

	// 	  }
	//     console.log("success()...")
	// });

	//6번 댓글 삭제 테스트 
	//  replyService.remove(6, function(count) {

	//    console.log(count);

	//    if (count === "success") {
	//      alert("REMOVED");
	//    }
	//  }, function(err) {
	//    alert('ERROR...');
	//  });

	//5번 댓글 수정 
	// replyService.update({
	//   rno : 4,
	//   bno : bnoValue,
	//   reply : "ggg"
	// }, function(result) {

	//   alert("수정 완료...");

	// });
</script>



<script type="text/javascript">
	$(document).ready(function() {

		var operForm = $("#operForm");

		$("button[data-oper='modify']").on("click", function(e) {

			operForm.attr("action", "/board/modify").submit();

		});

		$("button[data-oper='list']").on("click", function(e) {

			operForm.find("#bno").remove();
			operForm.attr("action", "/board/list")
			operForm.submit();

		});
	});
</script>
<%@include file="../includes/footer.jsp"%>

