<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html style="font-size: 16px;">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="Payment Registration">
    <meta name="description" content="">
    <meta name="page_type" content="np-template-header-footer-from-plugin">
    <title>User Management</title>
    <link rel="stylesheet" href="admin/nicepage.css" media="screen">
<link rel="stylesheet" href="User-Management.css" media="screen">
    <script class="u-script" type="text/javascript" src="admin/jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="admin/nicepage.js" defer=""></script>
    <meta name="generator" content="Nicepage 3.19.1, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">
    
    
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
    <meta property="og:title" content="User Management">
    <meta property="og:type" content="website">
  </head>
  <body class="u-body"><header class="u-align-center u-clearfix u-custom-color-1 u-header u-header" id="sec-6dad"><div class="u-clearfix u-sheet u-sheet-1">
        <a href="#" class="u-image u-logo u-image-1" data-image-width="1990" data-image-height="2693" title="home">
          <img src="images/originalcolor.png" class="u-logo-image u-logo-image-1" data-image-width="114.6487">
        </a>
        <h1 class="u-align-center-xl u-text u-text-custom-color-2 u-text-1">Admin panel</h1>
        <nav class="u-menu u-menu-dropdown u-offcanvas u-menu-1">
          <div class="menu-collapse" style="font-size: 1rem; letter-spacing: 0px; text-transform: uppercase; font-weight: 500;">
            <a class="u-button-style u-custom-active-border-color u-custom-active-color u-custom-border u-custom-border-color u-custom-borders u-custom-hover-border-color u-custom-hover-color u-custom-left-right-menu-spacing u-custom-padding-bottom u-custom-text-active-color u-custom-text-color u-custom-text-hover-color u-custom-top-bottom-menu-spacing u-nav-link" href="#" style="padding: 2px 0px; font-size: calc(1em + 4px);">
              <svg><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#menu-hamburger"></use></svg>
              <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"><defs><symbol id="menu-hamburger" viewBox="0 0 16 16" style="width: 16px; height: 16px;"><rect y="1" width="16" height="2"></rect><rect y="7" width="16" height="2"></rect><rect y="13" width="16" height="2"></rect>
</symbol>
</defs></svg>
            </a>
          </div>
          <div class="u-custom-menu u-nav-container">
            <ul class="u-nav u-spacing-2 u-unstyled u-nav-1"><li class="u-nav-item"><a class="u-active-palette-1-base u-border-active-palette-1-base u-border-hover-palette-1-light-1 u-button-style u-hover-palette-1-light-1 u-nav-link u-text-active-white u-text-grey-90 u-text-hover-white" href="ListUsers" style="padding: 10px 20px;">User Management</a>
</li><li class="u-nav-item"><a class="u-active-palette-1-base u-border-active-palette-1-base u-border-hover-palette-1-light-1 u-button-style u-hover-palette-1-light-1 u-nav-link u-text-active-white u-text-grey-90 u-text-hover-white" href="ListPayment" style="padding: 10px 20px;">Payment Management</a>
</li></ul>
          </div>
          <div class="u-custom-menu u-nav-container-collapse">
            <div class="u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
              <div class="u-sidenav-overflow">
                <div class="u-menu-close"></div>
                <ul class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-2"><li class="u-nav-item"><a class="u-button-style u-nav-link" href="ListUsers" style="padding: 10px 20px;">User Management</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="ListPayment" style="padding: 10px 20px;">Payment Management</a>
</li></ul>
              </div>
            </div>
            <div class="u-black u-menu-overlay u-opacity u-opacity-70"></div>
          </div>
        </nav>
      </div></header>
    <section class="u-align-center u-clearfix u-grey-10 u-section-1" id="sec-c617">
      <div class="u-clearfix u-sheet u-sheet-1">
        <div class="u-form u-form-1">

          <form method="POST" action="SearchUser" class="horzontalform" name="form" style="padding: 10px;">
            <div class="u-form-group u-form-name">
              <label for="name-94b8" class="u-form-control-hidden u-label"></label>
              <input type="text" placeholder="Search PRG" id="name-94b8" name="query" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white">
            </div>
            <div class="u-align-left u-form-group u-form-submit">
              <a href="#" class="u-btn u-btn-submit u-button-style"><span class="u-icon u-icon-1"><svg class="u-svg-content" viewBox="0 0 512 512" style="width: 1em; height: 1em;"><g><g><path d="m13.217 498.794c-8.524-8.523-13.217-19.855-13.217-31.908s4.693-23.385 13.217-31.908l329.861-329.861c5.857-5.858 15.355-5.857 21.213 0l42.604 42.603c2.813 2.813 4.394 6.628 4.394 10.606s-1.58 7.793-4.394 10.606l-329.862 329.862c-8.797 8.797-20.353 13.195-31.908 13.195s-23.111-4.398-31.908-13.195z" fill="#464b52"></path>
</g><path d="m406.895 147.72c2.813 2.813 4.394 6.628 4.394 10.606s-1.58 7.793-4.394 10.606l-329.862 329.862c-8.797 8.797-20.353 13.195-31.908 13.195s-23.111-4.398-31.908-13.195l372.376-372.376z" fill="#292b2f"></path><circle cx="316.25" cy="195.761" fill="#76cefb" r="195.75"></circle><path d="m454.601 57.409c35.446 35.446 57.399 84.383 57.399 138.352 0 107.937-87.813 195.75-195.75 195.75-53.968 0-102.906-21.953-138.351-57.399z" fill="#6897f4"></path><circle cx="316.25" cy="195.761" fill="#e1faff" r="135.5"></circle><path d="m316.25 331.261c-37.357 0-71.232-15.196-95.768-39.732l191.536-191.536c24.536 24.536 39.732 58.411 39.732 95.768 0 74.715-60.785 135.5-135.5 135.5z" fill="#c7f5ff"></path>
</g></svg><img></span>&nbsp;Search
              </a>
              <input type="submit" value="submit" class="u-form-control-hidden">
            </div>
            <input type="hidden" value="" name="recaptchaResponse">
          </form>

        </div>
        <a href="User-Registration.jsp" data-page-id="1554707019" class="u-border-1 u-border-custom-color-2 u-btn u-btn-round u-button-style u-palette-1-light-2 u-radius-3 u-text-palette-1-dark-2 u-btn-2">Add User&nbsp;&nbsp;<span class="u-icon u-icon-2"><svg class="u-svg-content" viewBox="0 0 512 512" style="width: 1em; height: 1em;"><path d="m256 0c-141.164062 0-256 114.835938-256 256s114.835938 256 256 256 256-114.835938 256-256-114.835938-256-256-256zm0 0" fill="#2196f3"></path><path d="m368 277.332031h-90.667969v90.667969c0 11.777344-9.554687 21.332031-21.332031 21.332031s-21.332031-9.554687-21.332031-21.332031v-90.667969h-90.667969c-11.777344 0-21.332031-9.554687-21.332031-21.332031s9.554687-21.332031 21.332031-21.332031h90.667969v-90.667969c0-11.777344 9.554687-21.332031 21.332031-21.332031s21.332031 9.554687 21.332031 21.332031v90.667969h90.667969c11.777344 0 21.332031 9.554687 21.332031 21.332031s-9.554687 21.332031-21.332031 21.332031zm0 0" fill="#fafafa"></path></svg><img></span>
        </a>
        <div class="u-expanded-width u-table u-table-responsive u-table-1">
          <table class="u-table-entity u-table-entity-1">
            <colgroup>
              <col width="33%">
              <col width="33%">
              <col width="34%">
            </colgroup>
            <thead class="u-align-center u-black u-table-header u-table-header-1">
              <tr style="height: 21px;">
                <th class="u-border-1 u-border-black u-table-cell">PRG</th>
                <th class="u-border-1 u-border-black u-table-cell">Password</th>
                <th class="u-border-1 u-border-black u-table-cell">Action</th>
              </tr>
            </thead>
            <tbody class="u-table-body">

              <c:forEach var="user" items="${userList}">

              <tr style="height: 30px;">
                <td class="u-border-1 u-border-grey-30 u-table-cell">${user.prg}</td>
                <td class="u-border-1 u-border-grey-30 u-table-cell">${user.password}</td>
                <td class="u-border-1 u-border-grey-30 u-table-cell">
                  <div class="absolute-center">
                    <a href ="Update?username=${user.prg}" class="button2">Update</a>
                    <a href ="DeleteUser?username=${user.prg}"class="button3">Delete</a>
                  </div>
                </td>
              </tr>

            </c:forEach>

            </tbody>
          </table>
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
      </div></footer>
  </body>
</html>

<style>

  .horzontalform {
    display: flex;
    flex-flow: row;
    align-items: center;
    flex-grow: 1;
    margin-left: -10px;
    width: calc(100% +  10px);
  }

  .absolute-center {
      display: -ms-flexbox;
      display: -webkit-flex;
      display: flex;

      -ms-flex-align: center;
      -webkit-align-items: center;
      -webkit-box-align: center;

      align-items: center;
      justify-content: center;
  }
  .button2 {
    background-color: #4CAF50; /* Green */
    border: none;
    color: white;
    padding: 8px 16px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 15px;
    margin: 8px 4px;
    transition-duration: 0.4s;
    cursor: pointer;
    background-color: white; 
    color: black; 
    border: 2px solid #008CBA;
  }
  
  .button2:hover {
    background-color: #008CBA;
    color: white;
  }
  
  .button3 {
    background-color: #4CAF50; /* Green */
    border: none;
    color: white;
    padding: 8px 16px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 15px;
    margin: 8px 4px;
    transition-duration: 0.4s;
    cursor: pointer;
    background-color: white; 
    color: black; 
    border: 2px solid #f44336;
  }
  
  .button3:hover {
    background-color: #f44336;
    color: white;
  }
  
  .button5 {
    background-color: #4CAF50; /* Green */
    border: none;
    color: white;
    padding: 8px 16px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 15px;
    margin: 8px 4px;
    transition-duration: 0.4s;
    cursor: pointer;
    background-color: white;
    color: black;
    border: 2px solid #555555;
  }
  
  .button5:hover {
    background-color: #555555;
    color: white;
  }
  </style>