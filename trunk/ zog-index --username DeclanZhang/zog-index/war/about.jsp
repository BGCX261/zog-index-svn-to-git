<%@page pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>若果网络</title>
<script src="Scripts/swfobject_modified.js" type="text/javascript"></script>
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
	
	#main #middle #pic{width:100%;height:107px; background-image:url(images/subAbout_07.jpg)}
	#main #middle #subTitle{width:745px;height:57px; margin-left:25px; background-image:url(images/subAbout_12.jpg); text-align:left}
	#main #middle #subTitle #titWord{width:145px;height:100%; background-image:url(images/subAbout_11.jpg);float:left;}
	#main #middle #subTitle #titEnd{width:23px;height:100%; background-image:url(images/subAbout_14.jpg);float:right;}
	
	#main #middle #mainM{ margin:0px auto;width:743px; border-left:#666 1px solid; border-right:#666 1px solid; background-color:#3a3a3a;}
	#main #middle #mainM #mainLine{ margin-top:0px;width:100%;height:6px; background-image:url(images/subAbout_16.jpg); overflow:hidden;}
	#main #middle #mainM #auTit{margin-left:65px; margin-top:15px; font-family:"宋体";font-size:14px;color:#4ecbff;}
	#main #middle #mainM #auLine{ margin:5px auto 20px auto;width:595px;height:1px;overflow:hidden; background-color:#389bda}
	#main #middle #mainM #auCont{ width:505px;margin:0px auto;font-family:"宋体";font-size:12px;color:#fff; line-height:22px;}
	#main #middle #mainBottom{ margin:0px auto;width:745px; height:18px; background-image:url(images/sub_38.jpg)}
	#main #middle #mainBottom #mbStart{width:18px;height:100%; background-image:url(images/sub_37.jpg);float:left;}
	#main #middle #mainBottom #mbEnd{width:17px;height:100%; background-image:url(images/sub_41.jpg);float:right;}
	
	#midBottom{width:795px;height:20px;margin-left:0px;background-color:#040404;float:left;}
	#bottom{ margin:20px auto;width:100%; text-align:center;font:12px "宋体";color:#4ecbff; line-height:14px; clear:both;}
	#line{width:100%;height:1px;overflow:hidden; background-color:#389bda}
	.fontBigWhite{ font:14px "宋体" ; color:#fff;}
	.fontBlue{font:12px "宋体" ;color:#4ecbff}
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
					<div id="auTit">若果网络工作室[Zogo Network Studio]</div>
					<div id="auLine"></div>
					<div id="auCont">　
					　<p class="fontBigWhite">工作室简介</p>
					  <p>　　若果网络是致力于为客户提供各种基于网络平台解决方案的独立工作室，自成立以来，已先后与多家企业及个人用户建立了合作关系，并获得良好的声誉。
	                    <br />
	                    <br />
    　　我们是一支富有激情的年轻团队，拥有无拘无束的灵感及丰富的项目经验，一直以来，我们都在不断追求探索更加卓越的技术以及先进的理念，秉承精益求精的态度为客户服务，能提供专为您量身打造的企业及个人宣传网站、视觉传达、动画及交互设计、各类应用软件及程式。
	<br />
	<br />
    　　提升自身品牌价值，获得更加强劲的市场竞争力，是我们对自己的承诺，我们只相信：专注成就专业.</p>
					  <p id="line"></p>
					  <p class="fontBigWhite">业务介绍</p>
					  <p class="fontBlue">　　网站开发</p>
					  <p>　　工作室已经长期从事网站开发，特别擅长如新闻发布网站、电子商务网站、Flash整站,企业网站、web2.0新型网站等各种应用型网站。工作室开发人员技术稳定,技术服务专业,为客户服务提供了强有力的保障。<br />
                      </p>
					  <p class="fontBlue">　　J2EE企业级应用</p>
					  <p>　　我们的软件开发小组是由具有多年的开发经验，精通基于J2EE的企业级应用的开发，由具有开发大型管理软件的经验的专业人才组成，开发出的软件具有功能强大、稳定、美观、易用的特点。我以严谨的软件开发思路、科学的项目管理方法，严格按照标准的软件开发流程的开发方法，保证软件的内在质量和可扩充性。
</p>
						<p class="fontBlue">　　手机软件开发</p>
						<p>　　我们有专门的手机软件开发团队，精通手机软件解决方案、手机系统升级、手机汉化、手机软件系统集成、刷机包制作、手机字库汉化等服务，研发团队核心成员共有3人，都有至少三年的手机软件开发工作经验，精通当前最流行的手机开发，包括android,mtk,j2me平台等。</p>
				  <p class="fontBlue">　　平面设计/3D建模</p>
				  <p>　　本工作室可承接/广告设计/效果图制作/策划设计/传单/画册/联单!
</p><br /><br /><br /><br />
				  </div></div>
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
    </script>

</body>
</html>
