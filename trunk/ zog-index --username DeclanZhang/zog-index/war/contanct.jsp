<%@page pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>若果网络</title>
<script src="Scripts/swfobject_modified.js" type="text/javascript"></script>
<style type="text/css">
	html,body,div,img{boder:0px;margin:0px;padding:0px; font:12px "宋体";}

	body{width:100%;margin-top:0px;text-align:left;background-color:#151515;}
	#container{width:1000px;margin:0 auto;text-align:left;}
	
	#head{width:100%;height:125px;border:0px;margin:0px;padding:0px;background-image:url(images/index_01.gif);}
	#navigation{width:100%;	height:35px;}
	
	#main{width:100%;height:100%;background-color:#151515;}
	
	#main #left{width:99px;height:100%;background-color:#151515;background-image:url(images/index_04.gif);background-repeat:no-repeat; float:left;}
	
	#main #right{width:106px;height:100%;margin-left:0px;background-color:#151515;	background-image:url(images/index_09.gif);background-repeat:no-repeat;float:right;}
	
	#main #middle{width:795px;margin-left:0px;background-color:#040404;float:left; }
	
	#middle #pic{width:100%;height:107px; background-image:url(images/subConn_07.jpg)}
	#middle #subTitle{width:745px;height:57px; margin-left:25px; background-image:url(images/subAbout_12.jpg); text-align:left}
	
	#subTitle #titWord{width:145px;height:100%; background-image:url(images/subconn_11.jpg);float:left;}
	#subTitle #titEnd{width:23px;height:100%; background-image:url(images/subAbout_14.jpg);float:right;}
	
	#middle #mainM{ margin:0px auto;width:743px; height:300px; border-left:#666 1px solid; border-right:#666 1px solid; background-color:#3a3a3a;}
	#mainM #mainLine{ margin-top:0px;width:100%;height:6px; background-image:url(images/subAbout_16.jpg); overflow:hidden;}
	#mainM #contact{ width:285px; height:188px; margin-top:40px; margin-left:230px; background-image:url(images/subConn_21.jpg)}
	#contact #space{ height:66px;}
	#contact #email{ margin-left:80px;color:#4ecbff}
	#contact #tel{ margin-top:20px; margin-left:80px;color:#4ecbff}
	#contact #qq{ margin-top:20px; margin-left:80px;color:#4ecbff}
		
		
	#middle #mainBottom{ margin:0px auto;width:745px; height:18px; background-image:url(images/sub_38.jpg)}
	#mainBottom #mbStart{width:18px;height:100%; background-image:url(images/sub_37.jpg);float:left;}
	#mainBottom #mbEnd{width:17px;height:100%; background-image:url(images/sub_41.jpg);float:right;}
	
	#midBottom{width:795px;height:20px;margin-left:0px;background-color:#040404;float:left;}
	#bottom{ margin-bottom:20px; width:1000px; text-align:center;font:12px "宋体";color:#4ecbff; line-height:14px; clear:both;}
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
					<div id="contact">
						<div id="space"></div>
						<div id="email">zogostudio@gmail.com</div>
						<div id="tel">13668101966 13550006439 </div>
						<div id="qq">29540500 87472301</div>
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

