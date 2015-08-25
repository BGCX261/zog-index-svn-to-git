<%@page pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>若果网络</title>
<script src="Scripts/swfobject_modified.js" type="text/javascript"></script>
<script src="js/jquery-1.3.2-min.js" type="text/javascript"></script>
<style type="text/css">
	html,body,div,img{boder:0px;margin:0px;padding:0px;}

	body{width:100%;margin-top:0px;text-align:left;background-color:#151515;}
	#container{width:1000px;margin:0 auto;text-align:left;}
	
	#head{width:100%;height:125px;border:0px;margin:0px;padding:0px;background-image:url(images/index_01.gif);}
	#navigation{width:100%;	height:35px;}
	
	#main{width:100%;height:100%;background-color:#151515;}
	
	#main #left{width:99px;height:100%;background-color:#151515;background-image:url(images/index_04.gif);background-repeat:no-repeat; float:left;}
	
	#main #right{width:106px;height:100%;margin-left:0px;background-color:#151515;	background-image:url(images/index_09.gif);background-repeat:no-repeat;float:right;}
	
	#main #middle{width:795px;margin-left:0px;background-color:#040404;float:left; }
	
	#main #middle #pic{width:100%;height:107px; background-image:url(images/subNews_07.jpg)}
	#main #middle #subTitle{width:745px;height:57px; margin-left:25px; background-image:url(images/subAbout_12.jpg); text-align:left}
	#main #middle #subTitle #titWord{width:145px;height:100%; background-image:url(images/subNews_11.gif);float:left;}
	#main #middle #subTitle #titEnd{width:23px;height:100%; background-image:url(images/subAbout_14.jpg);float:right;}
	
	#main #middle #mainM{ margin:0px auto;width:743px; overflow:auto; border-left:#666 1px solid; border-right:#666 1px solid; background-color:#3a3a3a;}
	#main #middle #mainM #mainLine{ margin-top:0px;width:100%;height:6px; background-image:url(images/subAbout_16.jpg); overflow:hidden;}
	#main #middle #mainM #iconList{ margin-top:6px; margin-left:18px; width:166px; float:left}
	#main #middle #mainM #iconList .icon{margin-top:12px;width:100%;height:61px;display:block;}
	#main #middle #mainM #iconList #icon1{ background-image:url(images/newsIcon_22.gif);opacity:.5;filter:alpha(opacity=50);}
	#main #middle #mainM #iconList #icon2{ background-image:url(images/newsIcon_25.gif);opacity:.5;filter:alpha(opacity=50);}
	#main #middle #mainM #iconList #icon3{ background-image:url(images/newsIcon_35.gif);opacity:.5;filter:alpha(opacity=50);}
	
	#main #middle #mainM #newsM{ margin-left:70px; float:left;}
	#main #middle #mainM #newsM #nlTit{ margin-top:18px;font-family:"宋体"; font-size:14px;color:#4ecbff;}
	#main #middle #mainM #newsM .newsTit{ margin-top:10px; font-family:"宋体"; font-size:12px; color:#FFFFFF;}
	
	#main #middle #mainBottom{ margin:0px auto;width:745px; height:18px; background-image:url(images/sub_38.jpg)}
	#main #middle #mainBottom #mbStart{width:18px;height:100%; background-image:url(images/sub_37.jpg);float:left;}
	#main #middle #mainBottom #mbEnd{width:17px;height:100%; background-image:url(images/sub_41.jpg);float:right;}
	
	a{text-decoration:none;}
	a:link,a:visited{color:#FFF;}
	a:hover,a:active{color:#4ecbff;}
	
	#midBottom{width:795px;height:20px;margin-left:0px;background-color:#040404;float:left;}
	#bottom{ margin:20px auto;width:100%; text-align:center;font:12px "宋体";color:#4ecbff; line-height:14px; clear:both;}
</style>

</head>

<body>
	
	<div id="container">
		<div id="head"></div>
      <div id="navigation">
        <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" width="1000" height="35" id="FlashID" title="nav">
          <param name="movie" value="swf/Nav.swf" />
          <param name="quality" value="high" />
          <param name="wmode" value="opaque" />
          <param name="swfversion" value="6.0.65.0" />
          <!-- 此 param 标签提示使用 Flash Player 6.0 r65 和更高版本的用户下载最新版本的 Flash Player。如果您不想让用户看到该提示，请将其删除。 -->
          <param name="expressinstall" value="Scripts/expressInstall.swf" />
          <!-- 下一个对象标签用于非 IE 浏览器。所以使用 IECC 将其从 IE 隐藏。 -->
          <!--[if !IE]>-->
          <object type="application/x-shockwave-flash" data="swf/Nav.swf" width="1000" height="35">
            <!--<![endif]-->
            <param name="quality" value="high" />
            <param name="wmode" value="opaque" />
            <param name="swfversion" value="6.0.65.0" />
            <param name="expressinstall" value="Scripts/expressInstall.swf" />
            <!-- 浏览器将以下替代内容显示给使用 Flash Player 6.0 和更低版本的用户。 -->
            <div>
              <h4>此页面上的内容需要较新版本的 Adobe Flash Player。</h4>
              <p><a href="http://www.adobe.com/go/getflashplayer"><img src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif" alt="获取 Adobe Flash Player" width="112" height="33" /></a></p>
            </div>
            <!--[if !IE]>-->
          </object>
          <!--<![endif]-->
        </object>
    </div>
 		<div id="main">
    		<div id="left"><img src="images/index_04.gif" /></div>
        	<div id="middle">
        		<div id="pic"></div>
				<div id="subTitle">
					<div id="titWord"></div>
					<div id="titEnd"></div>
				</div>
				<div id="mainM">
					<div id="mainLine"></div>
					<div id="iconList">
						<a href="/c?t=ns&type=1" id="icon1" class="icon"></a>
						<a href="/c?t=ns&type=2" id="icon2" class="icon"></a>
						<a href="/c?t=ns&type=3" id="icon3" class="icon"></a>
					</div>
					<div id="newsM">
						<div id="nlTit">文章列表[List]</div>
						<c:forEach items="${list}" var="n" begin="0" end="9">
							<div class="newsTit"><a href="/c?t=n&id=${n.id}">[<fmt:formatDate value="${n.date}" pattern="yyyy-MM-dd"/>][${n.type}]${n.title}</a></div>
						</c:forEach>
					</div>
				</div>
				<div id="mainBottom">
					<div id="mbStart"></div>
					<div id="mbEnd"></div>
				</div>
				<div id="midBottom"></div>
            </div>
        <div id="right"><img src="images/index_09.gif" /></div>
		</div>
    </div>
   	   	<div id="bottom">
   	   		<br />
	<br />
   		  若果网络 版权所有<br />
   		  CopyRight All Reserved<br />
		  
   		</div>
    </div>
	<script type="text/javascript">
		<!--
			swfobject.registerObject("FlashID");
		//-->
		$('#icon${type}').css('opacity',1);
		
    </script>

</body>
</html>
