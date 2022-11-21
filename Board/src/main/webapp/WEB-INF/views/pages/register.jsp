<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>



	<%@include file="../includes/header.jsp" %>
	 <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Register</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                           	Board Register
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                        	<form action="/board/register" method="post">
                        		<div class="form-group">
                        			<label>Title</label></br> 
                        			<input class="form-conrtrol" name="title"/>
                        		</div>
                        		
                        		<div class="form-group">
                        			<label>Text Area</label></br> 
                        			<textarea class="form-conrtrol" rows="3" name="content"></textarea>
                        		</div>
                        		
                        		<div class="form-group">
                        			<label>Writer</label></br> 
                        			<input class="form-conrtrol" name="writer"/>
                        		</div>
                        		
                        		
                        		<button type="submit" class="bn btn-default">Submit Button
                        		</button>
                        		
                        		<button type="reset" class="bn btn-default">Reset Button
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
