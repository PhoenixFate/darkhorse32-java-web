<%@ page language="java" pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>菜单</title>
<link href="${pageContext.request.contextPath}/css/left.css" rel="stylesheet" type="text/css"/>
<link rel="StyleSheet" href="${pageContext.request.contextPath}/css/dtree.css" type="text/css" />
</head>
<body>
<table width="100" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="12"></td>
  </tr>
</table>
<table width="100%" border="0">
  <tr>
    <td>
<div class="dtree">

	<a href="javascript: d.openAll();">展开所有</a> | <a href="javascript: d.closeAll();">关闭所有</a>
	
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/dtree.js"></script>
	<script type="text/javascript">
	
		d = new dTree('d');
		d.add('01',-1,'系统菜单树');  //01代表本级节点编号   -1 代表根节点
		d.add('0102','01','分类管理','','','mainFrame'); 　
		d.add('010201','0102','分类管理','${pageContext.request.contextPath}/admin/category/list.jsp','','mainFrame');
		d.add('0104','01','商品管理');
		d.add('010401','0104','商品管理','${pageContext.request.contextPath}/adminProductList','','mainFrame');
		d.add('0088','01','商品');
		d.add('00882','0088','商品管理','${pageContext.request.contextPath}/reviewProductList','','mainFrame');
		document.write(d);
		
	</script>
</div>	</td>
  </tr>
</table>
</body>
</html>
