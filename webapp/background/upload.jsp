<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/common.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <script type="text/javascript" src="../js/jquery.min.js"></script>
    <title>${Title}</title>
    <script type="text/javascript">
        i = 1;
        j = 1;
        $(document).ready(function(){
            $("#btn_add2").click(function(){
                document.getElementById("newUpload2").innerHTML+='<div id="div_'+j+'"><input  name="file_'+j+'" type="file"  /><input type="button" value="删除"  onclick="del_2('+j+')"/></div>';
                j = j + 1;
            });
        });

        function del_2(o){
            document.getElementById("newUpload2").removeChild(document.getElementById("div_"+o));
        }
    </script>
</head>
<body>

<h1>springMVC包装类上传文件</h1>
<form name="fileForm" action="${Context}upload.do" enctype="multipart/form-data" method="post" >
<div id="newUpload2">
    <input type="file" name="file">
</div>
<input type="button" id="btn_add2" value="增加一行" >
<input type="submit" value="上传" >
</form>
</body>
</html>