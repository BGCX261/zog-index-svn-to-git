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
	
	#main #middle{width:795px;margin-left:0px;background-color:#404040;float:left;}
	
	#main #middle #pic{width:100%;height:297px;background-image:url(images/index_07.gif);}
	#main #middle #pic #picB{margin-top:11px; margin-left:12px;width:624px;height:275px;float:left; display:inline; }
	#main #middle #pic #picR{margin-top:11px; margin-left:11px;width:137px;height:275px;float:left; display:inline; }
	#main #middle #pic #picR #picR1{width:137px;height:84px;float:left; display:inline; }
	#main #middle #pic #picR #picR2,#picR3{margin-top:13px;width:137px;height:84px;float:left; display:inline; opacity:.5;filter:alpha(opacity=50);}
	#main #middle #pic #picR #picR3{margin-top:11px;}
		
	#main #middle #middle2{width:100%;height:100%; margin-top:18px;background-color:#404040;}
	#main #middle #middle2 #works{margin-left:18px;	width:382px;height:440px;float:left;background-image:url(images/index_24.gif);float:left;display:inline;}
	
	#main #middle #middle2 #works #sigWork1{width:156px;margin-top:85px; margin-left:23px;float:left;display:inline;}
	#main #middle #middle2 #works #sigWork1 #workPic1{width:100%;height:127px;}
	#main #middle #middle2 #works #sigWork1 #workTit1{margin-top:10px;width:100%; text-align:center; font-family:"宋体"; font-size:12px;color:#FFFFFF;}
	
	#main #middle #middle2 #works #sigWork2{width:156px;margin-top:61px; margin-left:25px;float:left;display:inline;}
	#main #middle #middle2 #works #sigWork2 #workPic2{width:100%;height:127px;}
	#main #middle #middle2 #works #sigWork2 #workTit2{margin-top:10px;width:100%; text-align:center; font-family:"宋体"; font-size:12px;color:#FFFFFF;}
	
	#main #middle #middle2 #works #sigWork3{width:156px;margin-top:17px; margin-left:23px;float:left;display:inline;}
	#main #middle #middle2 #works #sigWork3 #workPic3{width:100%;height:127px;}
	#main #middle #middle2 #works #sigWork3 #workTit3{margin-top:10px;width:100%; text-align:center; font-family:"宋体"; font-size:12px;color:#FFFFFF;}
	
	#main #middle #middle2 #works #sigWork4{width:156px;margin-top:17px;margin-left:25px;float:left;display:inline;}
	#main #middle #middle2 #works #sigWork4 #workPic4{width:100%;height:127px;}
	#main #middle #middle2 #works #sigWork4 #workTit4{margin-top:10px;width:100%; text-align:center; font-family:"宋体"; font-size:12px;color:#FFFFFF;}
	
	#main #middle #middle2 #mid2R{width:364px;margin-left:18px;display:inline;float:left;}
	#main #middle #middle2 #mid2R #about{ margin-top:0px;width:364px;height:211px;background-image:url(images/index_26.gif);}
	#main #middle #middle2 #mid2R #about .space{height:72px;}
	#main #middle #middle2 #mid2R #about #wordTit{width:90%;margin-top:0px; margin-left:21px; text-align:left; font-family:"宋体"; font-size:14px; color:#4ecbff;}
	#main #middle #middle2 #mid2R #about #wordCont{width:90%;margin-top:12px; margin-left:21px;text-align:left; line-height:18px;}
	#main #middle #middle2 #mid2R #about #wordCont .whiteFont{ font-family:"宋体"; font-size:12px; color:#FFFFFF;}
	#main #middle #middle2 #mid2R #about #wordCont .blueFont{ font-family:"宋体"; font-size:12px; color:#4ecbff;}
	
	#main #middle #middle2 #mid2R #news{width:364px;height:211px;margin-top:18px;background-image:url(images/index_29.gif);}
	#main #middle #middle2 #mid2R #news .space{height:70px;}
	#main #middle #middle2 #mid2R #news #titList{float:left; width:230px;margin-top:0px;margin-left:0px;}
	#main #middle #middle2 #mid2R #news #titList .newsTitle{ height:20px;margin-top:7px; text-align:left; font-family:"宋体"; font-size:12px;color:#FFFFFF; background-image:url(images/lineBg_21.gif);}
	#main #middle #middle2 #mid2R #news #titList .blueFont{font-family:"宋体"; font-size:12px; color:#4ecbff;}
	
	#midBottom{width:795px;height:20px;margin-left:0px;background-color:#404040;float:left;}
	#bottom{ margin:20px auto;width:100%; text-align:center;font:12px "宋体";color:#4ecbff; line-height:14px;clear:both;}
	
	a img{border:0px;}
	a{text-decoration:none;}
	a:link,a:visited{color:#FFF;}
	a:hover,a:active{color:#4ecbff;}
	
	.more{ width:30px; height:10px; margin-top:14px; margin-right:14px; float:right; background-image:url(images/more_29.jpg); display:inline; overflow:hidden;}
	.more a{width:30px;height:10px;display:block;}
	#newsPic{ margin-left:19px;width:96px; height:122px; background-image:url(images/newsPic_38.jpg); float:left; display:inline;}
	
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
        		<div id="pic">
					<div id="picB">
					<img src="images/indexPic1_11.jpg"></img>
					<img src="images/indexPic2_11.jpg" style="display:none;"></img>
					<img src="images/indexPic3_11.jpg" style="display:none;"></img>
					</div>
					<div id="picR">
						<div id="picR1"><img src="images/indexPic_18.jpg"></img></div>
						<div id="picR2"><img src="images/indexPic_16.jpg"></img></div>
						<div id="picR3"><img src="images/indexPic_13.jpg"></img></div>
					</div>
				</div>
            	<div id="middle2">
            	<!-- 作品 -->
            		<div id="works">
            		<div class="more"><a href="/c?t=ps" /></div>
            		<c:forEach items="${indexpros}" var="p" varStatus="i">
						<div id="sigWork${i.count}">
							<div id="workPic${i.count}"><a href="/c?t=p&id=${p.id}"><img src="/i?id=${p.shortimg}" /></a></div>
							<div id="workTit${i.count}" title="${p.title}"><a href="/c?t=p&id=${p.id}">${p.title}</a></div>
						</div>
					</c:forEach>
					</div>
                	<div id="mid2R">
                		<div id="about">
							<div class="space"><div class="more"><a href="/p?p=about" /></div></div>
							<div id="wordTit">若果网络工作室[Zogo Network Studio]</div>
							<div id="wordCont"><span class="whiteFont">　　我们是一支富有激情的年轻团队，拥有无拘无束的灵感及丰富的项目经验，能为您提供专为您量身打造的</span><span class="blueFont">企业及个人宣传网站、动画及交互设计、各类应用软件及程式.</span><br />
							<span class="whiteFont">　　我们相信：</span><span class="blueFont">专注成就专业！</span></div>
						</div>
						
						<!-- 新闻 -->
                		<div id="news">
                			<div class="space">
								<div class="more"><a href="/c?t=ns" /></div>
							</div>
							<div id="newsPic"></div>
							<div id="titList">

								<c:forEach items="${indexnews}" var="n">
									<div class="newsTitle"><a href="/c?t=n&id=${n.id}">${n.title}</a><span class="blueFont">[<fmt:formatDate value="${n.date}" pattern="yyyy-MM-dd"/>]</span></div>
								</c:forEach>
								</div>
						</div>
                	</div>
                	<div id="midBottom"></div>
            	</div>
			</div>
       		<div id="right"><img src="images/index_09.gif" /></div>
    	</div>
   		<div id="bottom"><br /><br />
   		  若果网络 版权所有<br />
   		  CopyRight All Reserved<br />
		  
   		</div>
    </div>
	<script type="text/javascript">
		<!--
			swfobject.registerObject("FlashID");
		//-->
		$(document).ready(function(){
			var i = 0;
			var pic = $('#picB img');
			var img = $('#picR div');
			
			function play(){
				img.eq((i+1)%3).click();
			}
			
			var p = setInterval(play,4000);
			
			img.click(function(){
				var ii = img.index(this);
				if(i==ii){return;}
				
				clearInterval(p);

				pic.eq(i).fadeOut(500,function(){
					pic.eq(ii).fadeIn(500);
				});
				img.eq(i).css('opacity',.5);				
				img.eq(ii).css('opacity',1);			
				
				i=ii;
				
				p = setInterval(play,4000);			
								
			});
		});
    </script>

</body>
</html>
