<%@page pageEncoding="UTF-8" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<title>若果网络Zogo</title>
<script src="js/jquery-1.3.2-min.js"></script>
<style>
body{font-size:12px;font-family:"Verdana,宋体";margin:5px;}
#top{}
#top .left{width:200px;}
#top .right{width:65px;}
#top ul{}
#top ul li{display:block;width:72px;}
#top div,#top ul li{float:left;border-bottom:1px solid #000;height:20px;}

.checked{padding-top:10px;}
.clear{clear:both;}
</style>
<script>
$(document).ready(function(){
  	$('#top li').click(function(){
  		$('#top li').removeClass('checked');
  		$(this).addClass('checked');
  		$('#c')[0].src = $(this).attr('u');
  	});
});

</script>
</head>

<body>

<div id="top">
	<div class="left">当前管理员:${admin.username}</div>
	<ul>
		<li u="/a/a?t=n&m=l">　文章管理　</li>
		<li u="/a/a?t=p&m=l">　作品管理　</li>
	</ul>
	<div class="right"></div>
</div>
<div class="clear"></div>

<iframe id="c" name="c" width="100%" height="5000px" frameborder="0"/>

</body>
  
</html>
