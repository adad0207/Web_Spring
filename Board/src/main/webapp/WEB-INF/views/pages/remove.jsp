<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>



<%@include file="../includes/header.jsp"%>
<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header">Remove</h1>
	</div>
	<!-- /.col-lg-12 -->
</div>
<!-- /.row -->
<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-body">
<<<<<<< HEAD
				Do You really want to remove this board? </br>
=======
				Do You want really to remove this board? </br>
>>>>>>> branch 'main' of https://github.com/adad0207/Web_Spring.git
				<form action="/board/remove.do" method="post">
					<input type="hidden" name="bno" value="${bno }"/>
					<button type="submit" data-oper='real_remove' class="btn btn-danger">Remove</button>
					<button type="submit" data-oper='not_remove' class="btn btn-default">No</button>
				
				</form>
				
			</div>
			<!-- /.panel-body -->
			</div>
		<!-- /.panel -->
	</div>
	<!-- /.col-lg-6 -->
</div>
<!-- /.row -->


<script type="text/javascript">
	$(document).ready(function() {

		var formObj = $("form");

		$('button').on("click", function(e) {

			e.preventDefault();

			var operation = $(this).data("oper");

			console.log(operation);

			if (operation === 'real_remove') {
				console.log("javascript_real_remove()...")
				formObj.attr("action", "/board/remove.do").attr("method", "post");
			} else {
				console.log("javascript_not_remove()...")
				formObj.attr("action", "/board/modify").attr("method", "get");
			}

			formObj.submit();
		});

	});
	
</script>



<%@include file="../includes/footer.jsp"%>