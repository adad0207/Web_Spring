<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>



	<%@include file="../includes/header.jsp" %>
	 <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Board Modify</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                           	Board Modify Page
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                        	<form action="/board/modify.do" method="post">
                        	
								<!--bno -->
                        		<div class="form-group">
                        			<label>Bno
                        			</label></br>
                        			<input class="form-control" name="bno"
                        			value="${board.bno }" readonly="readonly">
                        		</div>
                        		
                        		<!-- Title -->
                        		<div class="form-group">
                        			<label>Title
                        			</label></br>
                        			<input class="form-control" name="title"
                        			value='${board.title }'>
                        		</div>
                        		
								<!--TextArea -->
                        		<div class="form-group">
                        			<label>
                        			Text Area
                        			</label> </br>
                        		<textarea class="form-control" name="content"rows="3" 
                        		value="${board.content }" />
                        		</div>
                        		
								<!-- modify button -->
                        		<button type="submit" data-oper='modify' class="btn btn-default">
                        		Modify
                        		</button>
                        		
								<!--  remove button -->
                        		<button type="submit" data-oper='remove' class="btn btn-default">
                        		Remove
                        		</button>
                        		<!--  list button -->
                        		<button type="submit" data-oper='list' class="btn btn-default">
                        		List
                        		</button>
                        	</form>
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-6 -->
            </div>
            <!-- /.row -->
	
	
	
<%@include file="../includes/footer.jsp" %>