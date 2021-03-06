<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>  
<head>
<!--  -->
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />  
        <meta http-equiv="pragma" content="no-cache">  
        <meta http-equiv="cache-control" content="no-cache">  
        <meta http-equiv="expires" content="0">  
        <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">  
        <meta http-equiv="description" content="This is my page">    
        <link rel="stylesheet" type="text/css" href="D:/JS/ext-6.2.0/build/classic/theme-neptune/resources/theme-neptune-all.css">  
        <!-- 引入ExtJs核心Js -->   
        <script type="text/javascript" charset="utf-8" src="D:/JS/ext-6.2.0/ext-bootstrap.js"></script>  
        <script type="text/javascript" charset="utf-8" src="D:/JS/ext-6.2.0/build/ext-all.js"></script>  
        <script type="text/javascript" charset="utf-8" src="D:/JS/ext-6.2.0/build/classic/locale/locale-zh_CN.js"></script>  
          
    
</head>  
<body>  
	
   <script type="text/javascript">
   		
          var d=[["AH","安徽","安徽事业部"],["BJ","北京","北京事业部"],["XM","厦门","厦门事业部"]];
  		  var store2=new Ext.data.SimpleStore({ 
      		fields:["major","description","commitTime","level","detail"],
      		data:d,
      		pageSize:20,
      		proxy:new Ext.data.MemoryProxy({ data: d, reader: { type: 'json' }, enablePaging: true })
  		  });
  		  store2.load();
             
  Ext.onReady(function(){
	 
     new Ext.grid.GridPanel({
         border:false, 
          frame:true, 
          height:800, 
          width:1200, 
  		  store:store2, 
  		  columnLines:true,
     renderTo:'resultGrid',
     columns:[{
        header:'所属类别',
        width:100,
        dataIndex:'major',
        sortable: true
    },{
        header:'事务级别',
        width:100,
        dataIndex:'level',
        sortable: true
    },{
        header:'提交时间',
        width:160,
        dataIndex:'commitTime',
        sortable: true
    },{
        header:'描述',
        width:300,
        dataIndex:'description',
        sortable: true
    },{
            header:'文档详情',
            width:500,
            dataIndex:'detail',
            sortable: true,
            
    }
    ],
    bbar: new Ext.PagingToolbar({
        pageSize: 20,
        store: store2,
        displayInfo: true,
        displayMsg: '当前显示 {0} - {1}条记录 /共 {2}条记录',
        emptyMsg: "无显示数据"
    })
     })});
     
  </script>
  <div id="resultGrid"></div>
</body>  
</html>  