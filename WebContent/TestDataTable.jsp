<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"> 
<link rel="stylesheet" href="DataTables/media/css/jquery.dataTables.css" />
<link rel="stylesheet" href="DataTables/media/css/jquery.dataTables.min.css" />  
<script type="text/javascript" language="javascript" src="DataTables/media/js/jquery.js"></script>
<script type="text/javascript" language="javascript" src="DataTables/media/js/jquery.dataTables.js"></script>
<title>Insert title here</title>
<!--
<style> 
	#example.table,th,td{border:1px solid #F00} 
/* css注释：只对table标签设置红色边框样式 */ 
</style> 
-->
</head>
<body>
	<div class="col_2_3_right">  
                <div class="index_viewport">  
                    <table id="example" class="table" cellspacing="0" width="100%">  
                        <thead>
        <tr>
            <th style="width: 50px;text-align: center;font-size: 13px; padding-left: 8px">表头1
            </th>
            <th style="width: 100px;text-align: center;font-size: 13px; padding-left: 8px">表头2</th>        
        </tr>
    </thead>
                    </table>  
                </div>  
     </div>

     <script type="text/javascript">  
      var d=[[11,'aaa'],[2,'bbb']];

        $(document).ready(function() {  
        	 $("#example").dataTable({
                 "data":d,
                 "createdRow": function( row, data, dataIndex ) {
                     $(row).children('td').eq(0).attr('style', 'text-align: center;');
                     $(row).children('td').eq(1).attr('style', 'text-align: center;');
                 },
             }); 
        });  
    </script>   
    
</body>
</html>