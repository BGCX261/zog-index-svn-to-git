<%@page pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">

<link rel="stylesheet" type="text/css" href="/markitup/skins/simple/style.css" />
<link rel="stylesheet" type="text/css" href="/markitup/sets/html/style.css" />
<script type="text/javascript" src="/js/jquery-1.3.2-min.js"></script>
<script type="text/javascript" src="/markitup/sets/html/set.js"></script>
<script type="text/javascript" src="/markitup/jquery.markitup.pack.js"></script>
<script>
$(document).ready(function() {
	$('#context').markItUp(mySettings);
	$('.handle').hover(function(){$(this).addClass('hover')},function(){$(this).removeClass('hover')});
	$('.handle').click(function(){$(this).next().toggle(500);});
	
	$('#delete').click(function(){
		var _c = $('#news :radio:checked');
		if(_c.length==0){
			alert('没选');return;
		}
		if(confirm('确定删除')){
			$.get('/a/a',{t:'n',m:'d',id:_c.val()},function(){
				_c.parent().parent().remove();
			});
		}
	});
	
	// 添加新闻
	$('#addbtn').click(function(){
		var _title = $('#title').val();
		var _typeNum = $('#type').val();
		var _type = $('#type option[value="'+_typeNum+'"]').html();
		var _context = $('#context').val();
		   
		if(!$.trim(_title)){alert('标题呢?');return;}
		if(!$.trim(_context)){alert('内容呢?');return;}
		
		var pics = $.map($('.imgId'),function(n){return n.value;});
		var param = {
			t:'n',
			m:'a',
			title:_title,
			type:_type,
			typeNum:_typeNum,
			context:_context,
			pics:pics
		};
		
		$.post('/a/a',param,function(data){
			$('#title').val('');
			$('#type').val('');
			$('#context').val('');
			$('#img').empty();
			alert('添加成功');
		});	
	});
	
	// 获取图片描述
	$('.imgInfo').each(function(){
		var id = $(this).text();
		$.get('/i',{id:id,m:''},function(data){
			$('#info'+id)[0].innerHTML = data;
		});
	});
});

// 上传图片完毕回调
function uploadFinish(id){
	$('#upload')[0].reset();
	$('#img').append('<div class="img" id="img'+id+'"></div>');
	$('#img'+id).append('<div class="title">图片:　'+id+'　地址:　/i?id='+id+'</div>');
	$('#img'+id).append('<div class="hidden">描述:　<input type="text" class="text" size="80" id="imgText'+id+'" />　<input id="imgBtnU'+id+'" type="button" value="修改"/>　<input id="imgBtnD'+id+'" type="button" value="删除"/><br /><br />　　　.<img src="/i?id='+id+'" /></div>');
	$('#img'+id).append('<input type="hidden" class="imgId" value="'+id+'" />');
	
	$('#img'+id).hover(
		function(){$(this).addClass('hover')},
		function(){$(this).removeClass('hover')}
	);
	
	$('#img'+id+' .title').click(function(){$('#img'+id+' .hidden').toggle(500);});
	
	$('#imgText'+id).focus(function(){
		$(this).removeClass('success');
	});
	
	// 删除图片
	$('#imgBtnD'+id).click(function(){
		if(confirm('确定删除')){
			$('#img'+id).hide(500);
			$.get('/a/a',{t:'i',m:'d',id:id},function(data){
				$('#img'+id+' .imgId').remove();
			});
		}
	});
	
	// 修改图片描述
	$('#imgBtnU'+id).click(function(){
		$.get('/a/a',{t:'i',m:'u',id:id,text:$('#imgText'+id).val()},function(data){
			$('#add #imgText'+id).addClass('success');
		});	
	});
}


</script>

<style>
body,input{font-size:12px;font-family:"Verdana,宋体";}
body{margin-top:15px;background-color:#FFF;}
iframe{border:1px solid #CCC;width:900px !important;}


.handle,.img{border-top:1px solid #FFF;border-bottom:1px solid #FFF;margin:5px 0px;padding:5px 0px;}
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


<div class="handle">文章列表[暂不提供修改功能,发布时请谨慎]</div>

<div id="news">
	<c:forEach items="${list}" var="news" begin="0" end="9">
	<div id="news${news.id}">
		<div class="handle">
			<input type="radio" name="radio" value="${news.id}"/>
			[<fmt:formatDate value="${news.date}" pattern="yyyy-MM-dd"/>]
			[${news.id}][${news.type}][${news.title}][${news.author}]
		</div>
		<div class="hidden">
			<c:forEach items="${news.pics}" var="id">
				<div>
					<div class="handle">
						图片:　${id}　描述:　<span class="imgInfo" id="info${id}">${id}</span>
					</div>
					<div class="hidden">
						　　　.<img src="/i?id=${id}" />
					</div>
				</div>
			</c:forEach>
			<div>
				${news.content.value}
			</div>
		</div>
	</div>
	</c:forEach>
	
	<div>
		<c:if test="${!empty pre}">
			<a href="/a/a?t=n&m=l&page=${pre}">上一页</a>
		</c:if>
		<c:if test="${!empty next}">
			<a href="/a/a?t=n&m=l&page=${next}">下一页</a>
		</c:if>
	</div>
	<div>
		<input type="button" id="delete" value="删除" />
	</div>
</div>



<div class="handle">添加文章</div>

<div id="add" style="display:none">
	标题:　<input class="text" type="text" id="title" size="80" /><br /><br />
	类型:　
	<select id="type">
		<option value="1">若果公告</option>
		<option value="2">技术分享</option>
		<option value="3">相关新闻</option>
	</select>
	<br /><br />
	
	<form action="/a/u" name="upload" id="upload" method="post" enctype="multipart/form-data" target="iframe">
	图片:　<input type="file" name="file" id="file" /><input type="submit" value="上传" /><br />
	</form>
	
	<div id="img"></div>
	<textarea id="context"></textarea><br />
	<input id="addbtn" type="button" value="添加"/>
	<iframe name="iframe" id="iframe" style="display:none"></iframe>
</div>


</body>
</html>
