<%-- 
    Document   : history
    Created on : Nov 4, 2013, 1:04:25 PM
    Author     : ABS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Purchase History Page
        </title>
    </head>
    <SCRIPT type="text/javascript">
        window.history.forward();
        function noBack() {
            window.history.forward();
        }
    </SCRIPT>
    <% response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");//HTTP 1.1
        response.setHeader("Pragma", "no-cache"); //HTTP 1.0
        response.setDateHeader("Expires", 0); //prevents caching at the proxy server
    %>
    <link rel="stylesheet" href="<%=application.getContextPath()%>/bootstrap/DataTable/jquery.dataTables.css" type="text/css" />
    <link rel="stylesheet" href="<%=application.getContextPath()%>/bootstrap/DataTable/jquery.dataTables_themeroller.css" type="text/css" />
    <script type="text/javascript" src="<%=application.getContextPath()%>/bootstrap/DataTable/jquery-1.7.1.min.js"></script>
    <script type="text/javascript" src="<%=application.getContextPath()%>/bootstrap/DataTable/jquery.dataTables.min.js"></script>

    <script>
        $(document).ready(function() {
            var oTable = $('#example').dataTable({"sPaginationType": "full_numbers"});
            oTable.fnSort([[4, 'desc']]);
        });
    </script> 
    <body onload="noBack();" onpageshow="if (event.persisted) noBack();" onunload="">    
        <div>
            <%@include  file="AdminHeader.jsp" %> 
            <br>     <br>
            <br>


            <div class="well" style=" margin-top: -3%; 
                 width:57%; box-shadow: 0px 0px 2px 0px;margin-left: 1%;float: left;">
                <legend>User ID : <s:property value="id" /></legend>
                <table cellpadding="0" cellspacing="0" border="0" class="dataTable" id="example" style="width: 100%">
                    <thead>
                        <tr style="width: 100%;">
                            <th>Payer  ID</th>                              
                            <th>Payee ID</th>
                            <th>Amount</th>
                            <th>Type</th>
                            <th>Date/Time</th>                             
                        </tr>
                    </thead>
                    <tbody style="width:100%;">
                    <s:iterator value="trans">
                        <tr style="text-align: center;width: 100%;">
                            <td><s:property value="payer_id"/></td>                               
                        <td><s:property value="payee_id"/></td>
                        <td><s:property value="tot_amt"/></td>
                        <td><s:property value="type"/></td>
                        <td><s:property value="time"/></td>
                        </tr>
                    </s:iterator>
                    </tbody>
                </table>  
            </div>  
        </div>
    </body>
</html>