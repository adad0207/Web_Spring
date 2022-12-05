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
						value='<c:out value="${board.bno}"/>'>
					<input
						type='hidden' name='pageNum'
						value='<c:out value="${cri.pageNum}"/>'> 
					<input
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


<script type="text/javascript" src="/resources/js/reply.js"></script>

<script>

console.log("===============");
console.log("===============");
console.log("JS TEST");

var bnoValue = '<c:out value="${board.bno}"/>';

//for replyService add test
// replyService.add(
    
//     {reply:"JS Test", replyer:"tester", bno:bnoValue}
//     ,
//     function(result){ 
//       alert("RESULT: " + result);
//     }
// );


//reply List Test
replyService.getList({bno:bnoValue, page:1}, function(list){
    console.log("getList()...")
	  for(var i = 0,  len = list.length||0; i < len; i++ ){
	    console.log(list[i]);
    	console.log("list()...")
	    
	  }
    console.log("success()...")
});
 

 
/*  //17�� ��� ���� �׽�Ʈ 
 replyService.remove(17, function(count) {

   console.log(count);

   if (count === "success") {
     alert("REMOVED");
   }
 }, function(err) {
   alert('ERROR...');
 });
 */
 

//12�� ��� ���� 
/* replyService.update({
  rno : 12,
  bno : bnoValue,
  reply : "Modified Reply...."
}, function(result) {

  alert("���� �Ϸ�...");

});  
 */

</script>  



<script type="text/javascript">




$(document).ready(function() {
  
  var operForm = $("#operForm"); 
  
  $("button[data-oper='modify']").on("click", function(e){
    
    operForm.attr("action","/board/modify").submit();
    
  });
  
    
  $("button[data-oper='list']").on("click", function(e){
    
    operForm.find("#bno").remove();
    operForm.attr("action","/board/list")
    operForm.submit();
    
  });  
});
</script>
<%@include file="../includes/footer.jsp"%>
