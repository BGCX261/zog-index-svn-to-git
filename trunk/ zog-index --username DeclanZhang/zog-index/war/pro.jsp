<%@page pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="/js/jquery-1.3.2-min.js"></script>
<script>
$(document).ready(function() {

	$('.handle').hover(function(){$(this).addClass('hover')},function(){$(this).removeClass('hover')});
	$('.handle').click(function(){$(this).next().toggle(500);});
	
	$('#delete').click(function(){
		var _c = $('#pros :radio:checked');
		if(_c.length==0){
			alert('没选');return;
		}
		if(confirm('确定删除')){
			$.get('/a/a',{t:'p',m:'d',id:_c.val()},function(){
				_c.parent().parent().remove();
			});
		}
	});
	
	// 添加作品
	$('#addbtn').click(function(){
		var _title = $('#title').val();
		var _type = $('#type').val();
		var _context = $('#context').val();
		var _img = $('#imgPro').val();
		var _shortimg = $('#shortimgPro').val();
		
		if(!$.trim(_title)){alert('标题呢?');return;}
		if(!$.trim(_type)){alert('类型呢?');return;}
		if(!$.trim(_context)){alert('内容呢?');return;}
		
		var param = {
			t:'p',
			m:'a',
			title:_title,
			type:_type,
			context:_context,
			img:_img,
			shortimg:_shortimg
		};
		
		$.post('/a/a',param,function(data){
			$('#title').val('');
			$('#type').val('');
			$('#context').val('');
			$('#imgPro').val('');
			$('#shortimgPro').val('');
			
			$('#uploaddivshort').empty();
			$('#uploaddiv').empty();
			
			alert('添加成功');
		});	
	});
	

});

// 上传图片完毕回调
function uploadFinish(id){
	if($('#shortimgPro').val()==''){
		$('#uploaddivshort').append('<div class="title">缩略图:　'+id+'　地址:　/i?id='+id+'</div>');
		$('#uploaddivshort').append('<div class="hidden"><img src="/i?id='+id+'" /></div>');
		$('#shortimgPro').val(id);
		$('#uploadshort').hide(500);
	}else{
		$('#uploaddiv').append('<div class="title">完整图:　'+id+'　地址:　/i?id='+id+'</div>');
		$('#uploaddiv').append('<div class="hidden"><img src="/i?id='+id+'" /></div>');
		$('#imgPro').val(id);
		$('#upload').hide(500);		
		$('#addbtn').show(500);
	}
	
	$('.title').hover(
		function(){$(this).addClass('hover')},
		function(){$(this).removeClass('hover')}
	);
	
	$('.title').click(function(){$(this).next().toggle(500);});
	
}

</script>

<style>
body,input,td{font-size:12px;font-family:"Verdana,宋体";}
body{margin-top:15px;background-color:#FFF;}
iframe{border:1px solid #CCC;width:900px !important;}


.handle,.img,.title{border-top:1px solid #FFF;border-bottom:1px solid #FFF;margin:5px 0px;padding:5px 0px;}
.hover{border-top:1px solid #CCC;border-bottom:1px solid #CCC;background-color:#EEE;}


.hidden{display:none;}
.text{background-color:transparent;border:1px solid #CCC;}
.success{border:0px solid transparent !important;}

.left{float:left;}
.right{float:right;}
.clear{clear:both;}


</style>
</head>

<body>


<div class="handle">作品列表[暂不提供修改功能,发布时请谨慎]</div>

<div id="pros">
<table>
	<c:forEach items="${list}" var="pros" begin="0" end="9">
		<tr>
			<td><input type="radio" name="radio" value="${pros.id}"/></td>
			<td><img src="/i?id=${pros.shortimg}" /></td>
			<td>[<fmt:formatDate value="${pros.date}" pattern="yyyy-MM-dd"/>]${pros.title}<br />${pros.context}</td>
		</tr>
	</c:forEach>
	<tr><td colspan="3">
		<c:if test="${!empty pre}">
			<a href="/a/a?t=p&m=l&page=${pre}">上一页</a>
		</c:if>
		<c:if test="${!empty next}">
			<a href="/a/a?t=p&m=l&page=${next}">下一页</a>
		</c:if>	
	</td></tr>
	<tr><td colspan="3">
		<input type="button" id="delete" value="删除" />
	</td></tr>
</table>
</div>



<div class="handle">添加作品</div>

<div id="add" style="display:none">
	标题:　<input class="text" type="text" id="title" size="80" /><br /><br />
	类型:　<input class="text" type="text" id="type" size="80" /><br /><br />
	简介:　<input class="text" type="text" id="context" size="80" /><br /><br />
	<form action="/a/u" name="upload" id="uploadshort" method="post" enctype="multipart/form-data" target="iframe">
	缩略图:　<input type="file" name="file" id="fileshort" /><input type="submit" value="上传" /><br />
	</form>

	<div id="uploaddivshort">

	</div>
	
	<form action="/a/u" name="upload" id="upload" method="post" enctype="multipart/form-data" target="iframe">
	完整图:　<input type="file" name="file" id="file" /><input type="submit" value="上传" /><br />
	</form>

	<div id="uploaddiv">
	
	</div>
		
	<input id="addbtn" type="button" value="添加" class="hidden"/>
	<input type="hidden" name="shortimg" id="shortimgPro" value="" />
	<input type="hidden" name="img" id="imgPro" value="" />	
	<iframe name="iframe" id="iframe" style="display:none"></iframe>
</div>


</body>
</html>
