<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>



	<%@include file="../includes/header.jsp" %>
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
                        <div class="panel-heading">
                           	Board Read Page
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                        	<div class="form-group">
                        		<label>Bno</label></br> 
                        		<input type="text" class="form-control" name="bno"
                        		value="${board.bno }" readonly="readonly">
                        	</div>
                        	
                        	<div class="form-group">
                        		<label>Title</label></br>
                        		<input type="text" class="form-control" name="title"
                        		value="${board.title }" readonly="readonly">
                        	</div>
                        	
                        	<div class="form-group">
                        		<label>Text Area</label> </br>
                        		<input type="text" class="form-control" name="content"
                        		value="${board.content }" readonly="readonly">
                        	</div>
                        	
                        	<div class="form-group">
                        		<label>Writer</label> </br>
                        		<input type="text" class="form-control" name="writer"
                        		value="${board.writer }" readonly="readonly">
                        	</div>
                        	
                        	<button data-oper="modify" class="btn btn-default" onclick
                        	="location.href='/board/modify?bno=${board.bno }'">Modify</button>
                        	
                        	<button data-oper="list" class="btn btn-info" onclick
                        	="location.href='/board/list'">List</button>
                        	
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-6 -->
            </div>
            <!-- /.row -->
	
	
	
<%@include file="../includes/footer.jsp" %>
