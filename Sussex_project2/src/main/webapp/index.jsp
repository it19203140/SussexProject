<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html style="font-size: 16px;">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="Sussex College Network">
    <meta name="description" content="">
    <meta name="page_type" content="np-template-header-footer-from-plugin">
    <title>index</title>
    <link rel="stylesheet" href="nicepage.css" media="screen">
<link rel="stylesheet" href="index.css" media="screen">
    <script class="u-script" type="text/javascript" src="jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="nicepage.js" defer=""></script>
    <meta name="generator" content="Nicepage 3.19.1, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">
    
        <style>
      .alert {
        padding: 20px;
        background-color: #F6BE00;
        color: black;
      }
      
      .closebtn {
        margin-left: 15px;
        color: black;
        font-weight: bold;
        float: right;
        font-size: 22px;
        line-height: 20px;
        cursor: pointer;
        transition: 0.3s;
      }
      
      .closebtn:hover {
        color: black;
      }
      </style>
    
    <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "",
		"logo": "images/originalcolor.png",
		"sameAs": [
				"https://www.facebook.com/sussexcollegenetworks",
				"https://www.instagram.com/sussexcolombo/",
				"https://www.linkedin.com/in/sussex-college-network-2518a81b7/",
				"https://www.youtube.com/channel/UC0f4-_YQHuMjFLdB0-TxYHA",
				"www.pinterest.com/sussexcolombo"
		]
}</script>
    <meta name="theme-color" content="#478ac9">
    <meta property="og:title" content="index">
    <meta property="og:type" content="website">
  </head>
  <body data-home-page="index.html" data-home-page-title="index" class="u-body"><header class="u-clearfix u-custom-color-1 u-header u-header" id="sec-6dad"><div class="u-clearfix u-sheet u-sheet-1">
        <a href="#" class="u-image u-logo u-image-1" data-image-width="1990" data-image-height="2693">
          <img src="images/originalcolor.png" class="u-logo-image u-logo-image-1" data-image-width="114.6487">
        </a>
        <h1 class="u-text u-text-palette-1-base u-text-1">Sussex College Network</h1>
        <h4 class="u-custom-font u-text u-text-font u-text-2">Nurturing our very own to be leading citizens</h4>
      </div></header>
    <section class="u-clearfix u-image u-section-1" id="sec-ca42" data-image-width="960" data-image-height="400">
      <div class="u-clearfix u-sheet u-sheet-1">
        <div class="u-align-center u-container-style u-grey-10 u-group u-radius-50 u-shape-round u-group-1">
          <div class="u-container-layout u-container-layout-1"><span class="u-icon u-icon-circle u-text-palette-1-base u-icon-1"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 45.532 45.532" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-862c"></use></svg><svg class="u-svg-content" viewBox="0 0 45.532 45.532" x="0px" y="0px" id="svg-862c" style="enable-background:new 0 0 45.532 45.532;"><g><path d="M22.766,0.001C10.194,0.001,0,10.193,0,22.766s10.193,22.765,22.766,22.765c12.574,0,22.766-10.192,22.766-22.765   S35.34,0.001,22.766,0.001z M22.766,6.808c4.16,0,7.531,3.372,7.531,7.53c0,4.159-3.371,7.53-7.531,7.53   c-4.158,0-7.529-3.371-7.529-7.53C15.237,10.18,18.608,6.808,22.766,6.808z M22.761,39.579c-4.149,0-7.949-1.511-10.88-4.012   c-0.714-0.609-1.126-1.502-1.126-2.439c0-4.217,3.413-7.592,7.631-7.592h8.762c4.219,0,7.619,3.375,7.619,7.592   c0,0.938-0.41,1.829-1.125,2.438C30.712,38.068,26.911,39.579,22.761,39.579z"></path>
</g></svg></span>
            <h3 class="u-text u-text-default u-text-1">User Log In</h3>
            <div class="u-expanded-width u-form u-login-control u-form-1">
            
              <form action="LoginUser" method="POST" source="custom" name="form-3" style="padding: 10px;">
                <div class="u-form-group u-form-name">
                  <label for="username-5b0a" class="u-form-control-hidden u-label"></label>
                  <input type="text" placeholder="Enter your PRG" id="username-5b0a" name="username" class="u-border-2 u-border-white u-input u-input-rectangle u-radius-43 u-white" required="">
                </div>
                <br>
                <div class="u-form-group u-form-password">
                  <label for="password-5b0a" class="u-form-control-hidden u-label"></label>
                  <input type="password" placeholder="Enter your Password" id="password-5b0a" name="password" class="u-border-2 u-border-white u-input u-input-rectangle u-radius-43 u-white" required="">
                </div>
                <div class="u-align-left u-form-group u-form-submit">
                  <br><br>
                  
                  <c:if test="${errorMessage !=null}">
                  <div class="alert">
                    <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span> 
                    <strong><center>Invalid Login Credentials!</center></strong><center>Please re-enter login credentials or contact support</center>
                  </div>
                  </c:if>
                  
                  
                  <br><br>
                  <a href="#" class="u-border-none u-btn u-btn-round u-btn-submit u-button-style u-radius-50 u-btn-1">Login</a>
                  <input type="submit" value="submit" class="u-form-control-hidden">
                </div>
                <input type="hidden" value="" name="recaptchaResponse">
              </form>
              
            </div>
          </div>
        </div>
      </div>
    </section>
    
    
    <footer class="u-clearfix u-footer u-grey-80" id="sec-e316"><div class="u-clearfix u-sheet u-sheet-1">
        <div class="u-align-left u-social-icons u-spacing-10 u-social-icons-1">
          <a class="u-social-url" title="Facebook" target="_blank" href="https://www.facebook.com/sussexcollegenetworks"><span class="u-icon u-icon-circle u-social-facebook u-social-icon u-icon-1"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 112 112" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-717c"></use></svg><svg class="u-svg-content" viewBox="0 0 112 112" x="0" y="0" id="svg-717c"><circle fill="currentColor" cx="56.1" cy="56.1" r="55"></circle><path fill="#FFFFFF" d="M73.5,31.6h-9.1c-1.4,0-3.6,0.8-3.6,3.9v8.5h12.6L72,58.3H60.8v40.8H43.9V58.3h-8V43.9h8v-9.2
            c0-6.7,3.1-17,17-17h12.5v13.9H73.5z"></path></svg></span>
          </a>
          <a class="u-social-url" title="instagram" target="_blank" href="https://www.instagram.com/sussexcolombo/"><span class="u-icon u-icon-circle u-social-icon u-social-instagram u-icon-2"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 112 112" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-da49"></use></svg><svg class="u-svg-content" viewBox="0 0 112 112" x="0" y="0" id="svg-da49"><circle fill="currentColor" cx="56.1" cy="56.1" r="55"></circle><path fill="#FFFFFF" d="M55.9,38.2c-9.9,0-17.9,8-17.9,17.9C38,66,46,74,55.9,74c9.9,0,17.9-8,17.9-17.9C73.8,46.2,65.8,38.2,55.9,38.2
            z M55.9,66.4c-5.7,0-10.3-4.6-10.3-10.3c-0.1-5.7,4.6-10.3,10.3-10.3c5.7,0,10.3,4.6,10.3,10.3C66.2,61.8,61.6,66.4,55.9,66.4z"></path><path fill="#FFFFFF" d="M74.3,33.5c-2.3,0-4.2,1.9-4.2,4.2s1.9,4.2,4.2,4.2s4.2-1.9,4.2-4.2S76.6,33.5,74.3,33.5z"></path><path fill="#FFFFFF" d="M73.1,21.3H38.6c-9.7,0-17.5,7.9-17.5,17.5v34.5c0,9.7,7.9,17.6,17.5,17.6h34.5c9.7,0,17.5-7.9,17.5-17.5V38.8
            C90.6,29.1,82.7,21.3,73.1,21.3z M83,73.3c0,5.5-4.5,9.9-9.9,9.9H38.6c-5.5,0-9.9-4.5-9.9-9.9V38.8c0-5.5,4.5-9.9,9.9-9.9h34.5
            c5.5,0,9.9,4.5,9.9,9.9V73.3z"></path></svg></span>
          </a>
          <a class="u-social-url" title="linkedin" target="_blank" href="https://www.linkedin.com/in/sussex-college-network-2518a81b7/"><span class="u-icon u-icon-circle u-social-icon u-social-linkedin u-icon-3"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 112 112" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-ab4a"></use></svg><svg class="u-svg-content" viewBox="0 0 112 112" x="0" y="0" id="svg-ab4a"><circle fill="currentColor" cx="56.1" cy="56.1" r="55"></circle><path fill="#FFFFFF" d="M41.3,83.7H27.9V43.4h13.4V83.7z M34.6,37.9L34.6,37.9c-4.6,0-7.5-3.1-7.5-7c0-4,3-7,7.6-7s7.4,3,7.5,7
            C42.2,34.8,39.2,37.9,34.6,37.9z M89.6,83.7H76.2V62.2c0-5.4-1.9-9.1-6.8-9.1c-3.7,0-5.9,2.5-6.9,4.9c-0.4,0.9-0.4,2.1-0.4,3.3v22.5
            H48.7c0,0,0.2-36.5,0-40.3h13.4v5.7c1.8-2.7,5-6.7,12.1-6.7c8.8,0,15.4,5.8,15.4,18.1V83.7z"></path></svg></span>
          </a>
          <a class="u-social-url" target="_blank" title="YouTube" href="https://www.youtube.com/channel/UC0f4-_YQHuMjFLdB0-TxYHA"><span class="u-icon u-icon-circle u-social-icon u-social-youtube u-icon-4"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 112 112" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-d007"></use></svg><svg class="u-svg-content" viewBox="0 0 112 112" x="0" y="0" id="svg-d007"><circle fill="currentColor" cx="56.1" cy="56.1" r="55"></circle><path fill="#FFFFFF" d="M74.9,33.3H37.3c-7.4,0-13.4,6-13.4,13.4v18.8c0,7.4,6,13.4,13.4,13.4h37.6c7.4,0,13.4-6,13.4-13.4V46.7 C88.3,39.3,82.3,33.3,74.9,33.3L74.9,33.3z M65.9,57l-17.6,8.4c-0.5,0.2-1-0.1-1-0.6V47.5c0-0.5,0.6-0.9,1-0.6l17.6,8.9 C66.4,56,66.4,56.8,65.9,57L65.9,57z"></path></svg></span>
          </a>
          <a class="u-social-url" target="_blank" title="Pinterest" href="www.pinterest.com/sussexcolombo"><span class="u-icon u-icon-circle u-social-icon u-social-pinterest u-icon-5"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 112 112" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-69b1"></use></svg><svg class="u-svg-content" viewBox="0 0 112 112" x="0" y="0" id="svg-69b1"><circle fill="currentColor" cx="56.1" cy="56.1" r="55"></circle><path fill="#FFFFFF" d="M61.1,76.9c-4.7-0.3-6.7-2.7-10.3-5c-2,10.7-4.6,20.9-11.9,26.2c-2.2-16.1,3.3-28.2,5.9-41
            c-4.4-7.5,0.6-22.5,9.9-18.8c11.6,4.6-10,27.8,4.4,30.7C74.2,72,80.3,42.8,71,33.4C57.5,19.6,31.7,33,34.9,52.6
            c0.8,4.8,5.8,6.2,2,12.9c-8.7-1.9-11.2-8.8-10.9-17.8C26.5,32.8,39.3,22.5,52.2,21c16.3-1.9,31.6,5.9,33.7,21.2
            C88.2,59.5,78.6,78.2,61.1,76.9z"></path></svg></span>
          </a>
        </div>
      </div>
    </footer>
  </body>
</html>