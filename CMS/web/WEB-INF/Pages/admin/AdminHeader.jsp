<%-- 
    Document   : header
    Created on : 18 Oct, 2013, 9:27:50 PM
    Author     : ABS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
    <head>
         <% response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");//HTTP 1.1
        response.setHeader("Pragma", "no-cache"); //HTTP 1.0
        response.setDateHeader("Expires", 0); //prevents caching at the proxy server
    %>
        <link rel="stylesheet" href="<%=application.getContextPath()%>/bootstrap/DataTable/jquery.dataTables.css" type="text/css" />
        <link rel="stylesheet" href="<%=application.getContextPath()%>/bootstrap/DataTable/jquery.dataTables_themeroller.css" type="text/css" />
        <script type="text/javascript" src="<%=application.getContextPath()%>/bootstrap/DataTable/jquery-1.7.1.min.js"></script>
        <script type="text/javascript" src="<%=application.getContextPath()%>/bootstrap/DataTable/jquery.dataTables.min.js"></script>
        <link media="screen" rel="stylesheet" href="<%=application.getContextPath()%>/bootstrap/css/bootstrap.min.css" />
        <link media="screen" rel="stylesheet" href="<%=application.getContextPath()%>/bootstrap/css/bootstrap-responsive.min.css" />          
        
        
        <%--
        <link rel="stylesheet" href="<%=application.getContextPath()%>/bootstrap/DataTable/jquery.dataTables.css" type="text/css" />
        <link rel="stylesheet" href="<%=application.getContextPath()%>/bootstrap/DataTable/jquery.dataTables_themeroller.css" type="text/css" />
        <script type="text/javascript" src="<%=application.getContextPath()%>/bootstrap/DataTable/jquery-1.7.1.min.js"></script>
        <script type="text/javascript" src="<%=application.getContextPath()%>/bootstrap/DataTable/jquery.dataTables.min.js"></script>
        --%>
        <style>                      
            .custom{
              
                top:2%;
                left:80%
            }
            .cust{                
                text-indent: 15px;
            }
            
       
  
        </style>
        
    </head>
    <body background="bg.gif">
        
                
              <div style=" width: 80%; margin-left: 10%;"  class="navbar">
            <div style=" height: 10%;" class="navbar-inner">
		<div class="container-fluid">
			<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</a>
			<a class="brand" href="#" name="top">Cafeteria Management System</a>
			<div class="nav-collapse collapse">
                            <ul style="margin-left: 40%;" class="nav">                                    
                                        <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
                                        <li><a href="#"><strong>Balance:<s:property value="%{#session.balance}" /></strong></a></li>
					<li><a s href="home"><i class="icon-home"></i> Home</a></li>
					<li class="divider-vertical"></li>
					<li><a href="showRegisteredUsers"><i class="icon-user"></i> Users</a></li>
                                        <li class="divider-vertical"></li>
					
                                         
                                </ul>
				
			</div>
			<!--/.nav-collapse -->
		</div>
		<!--/.container-fluid -->
	</div>
	<!--/.navbar-inner -->
</div>
<!--/.navbar -->
   </div>          
   <div style="margin-left: 10%;  border-radius: 10px;  width: 80%; margin-top: -1.5%; border-bottom-color:#e5e5e5; box-shadow:0px 2px 2px 0px; ">
       <img style="border: #ddd" src="img/logo.jpg" />
   </div>  
   
   
       <div style="border-left:thin; background-color:#ffffff; margin-top:0.1%;  margin-left: 10%;float: left" class="sidebar-nav">
       <div   class="well" style="border-top:#ffffff ; background-color:#ffffff; width: 250px; padding: 8px 0;">
        <ul class="nav nav-list"> 
	<li class="nav-header">Admin Actions</li>        	
        <li><a href="addCanteen"><i class="icon-plus-sign"></i> Add Canteen </a></li>
        
        
        
        <li><a href="viewCanteens"><i class="icon-th-list"></i> View Canteen </a></li>
        
        <li class="divider"></li>
        
	<li><a href="credit"><i class="icon-plus-sign"></i> Credit Amount</a></li>
	<li><a href="debit"><i class="icon-minus-sign"></i> Debit Amount</a></li>

	
        <li class="divider"></li>
        <li><a href="changePass"><i class="icon-lock"></i> Change Password</a></li>
        <li><a href="logout"><i class="icon-share"></i> Logout</a></li>
	</ul>
    </div>
</div>
                    
            
      
  
                    
              
       
       
  
    </body>
</html>
