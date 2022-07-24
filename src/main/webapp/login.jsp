<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
body {
  background-image: url('image.png');
  padding: 20px;
}
body {
  font-family: sans-serif;
  background-color: #fafafa;
  font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Oxygen,
    Ubuntu, Cantarell, "Open Sans", "Helvetica Neue", sans-serif;
  box-sizing: border-box;
}

a {
  text-decoration: none;
}
h1.small {
  line-height: 0.1;
}
.container {
  max-width: 1000px;
  margin: 0 auto;
  display: flex;
  justify-content: center;
  flex-direction: column;
  align-items: center;
  margin-top: 3rem;
  font-size: 14px;
}
/* App Store */
.app p {
  line-height: 18px;
  color:#262626;
  font-size:14px;
  text-align:center;
  margin:10px 20px;
}

.app-img {
  flex-direction: row;
  justify-content: center;
  margin:10px 0;
  text-align:center;
  -webkit-box-orient: horizontal;
  -moz-box-orient: horizontal;
}

.app-img a {
  margin-right:8px;
  height: 43.5px;
}

.app-img img {
  height:40px;
}
.box {
  max-width: 350px;
  width: 100%;
  display: flex;
  justify-content: center;
  align-items: center;
  flex-direction: column;
  background-color: #ffffff;
  border: 1px solid #e6e6e6;
  border-radius: 1px;
  margin: 0 0 10px;
  padding: 10px 0;
  flex-grow: 1;
}

.heading {
  margin: 22px auto 12px;
  background-image: url("");
  background-position: -98px 0;
  height: 1px;
  width: 177px;
  overflow: hidden;
}

.field {
  margin: 10px 0;
  position: relative;
  font-size: 14px;
  width: 100%;
  text-overflow: ellipsis;
}

input {
  padding: 9px 0px 7px 9px;
  font-size: 12px;
  width: 16rem;
  height: 1.2rem;
  outline: none;
  background: #fafafa;
  border-radius: 3px;
  border: 1px solid #efefef;
}

/* label intial position*/

label {
  position: absolute;
  pointer-events: none;
  left: 10px;
  padding-bottom: 15px;
  transform: translateY(10px);
  line-height: 6px;
  transition: all ease-out 0.1s;
  font-size: 14px;
  color: #999;
  padding-top: 6px;
}
/* footer style */
.footer{
  bottom: 0;
  height: 2.5rem;
  margin-top: 50px;
}

.footer ul{
  text-align: center;
}
.footer ul li{
  display: inline;
  margin-right: 5px;
}
.footer ul li a{
  text-decoration: none;
  font-size: 12px; 
  color: #00376b;
}

.footer p{
  margin: 10px 0;
  text-align: center;
  color: #8e9096;
  font-size: 14px;
}

/* hiding placeholder in all browsers */

input::placeholder {
  visibility: hidden;
}

/* hiding  placeholder in mozilla */
.login-form ::-moz-placeholder {
  color: transparent;
}

/* label final position */
input:not(:placeholder-shown) + label {
  transform: translateY(0);
  font-size: 11px;
}

/* input padding increases if placeholder is not shown */
input:not(:placeholder-shown) {
  padding-top: 14px;
  padding-bottom: 2px;
}

.login-button {
  text-align: center;
  width: 100%;
  padding: 0.5rem;
  border: 1px solid transparent;
  background-color: #3897f0;
  color: #fff;
  font-weight: 600;
  font-size: 14px;
  cursor: pointer;
}

.separator {
  display: flex;
  justify-content: space-between;
  align-items: center;
  color: #999;
  margin-top: 6px;
}

.separator .line {
  height: 1px;
  width: 40%;
  background-color: #dbdbdb;
}

.other {
  display: flex;
  justify-content: center;
  flex-direction: column;
  align-items: center;
}

.fb-login-btn {
  margin: 1rem;
  border: 0;
  cursor: pointer;
  font-size: 14px;
  color: #385185;
  font-weight: 600;
  background: transparent;
}

.fb-icon {
  color: #385185;
  font-size: 1rem;
  padding-right: 1px;
}

.forgot-password {
  font-size: 11px;
  color: #003569;
}

.signup {
  color: #3897f0;
  font-weight: 600;
}

.button {
        background-color: #009DFF;
        border: round;
        border-radius: 4px;
        color: white;
        padding: 4px 99px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 20px;
        margin: 4px 2px;
        cursor: pointer;
      }
  
</style>
<body>

<div class="container">
      <div class="box">
        <div class="heading"></div>
              <h1 class="small"> SURVEYCORPS</h1>
      <p>Think, Explore, Survey</p> 
        <form action="AddData" method="get">
          <div class="field">
          <input id="username" type="sname" placeholder="sname"/>
            <label for="username">Phone number, username, or email</label>
                      </div>
          <div class="field">
            <input id="password" type="password" placeholder="spassword" />
            <label for="password">Password</label>
          </div>
            <center><a href="http://localhost:8080/project/index.jsp" class="button">LogIn</a></center>
             
            
            <div class="separator">
              <div class="line"></div>
              <p>OR</p>
              <div class="line"></div>
            </div>
          <div class="other">
            
            <a class="forgot-password" href="#">Forgot password?</a>
          </div>
        </form>
      </div>
      <div class="box">
        <p>Don't have an account? <a class="signup" href="#">Login below </a></p>
      </div>
    </div>
    <div class="app">
                <p>Login with Social</p>
                <div class="app-img">
                <a href="https://accounts.google.com/AddSession/identifier?continue=https%3A%2F%2Fmyaccount.google.com%2F%3Futm_source%3Dsign_in_no_continue%26pli%3D1%26authuser%3D%26pageId%3Dnone&sacu=1&acui=1&flowName=GlifWebSignIn&flowEntry=AddSession&cid=1&TL=AKqFyY8JkGzWRXRwX4cFNK8ULSvfmvQeBOYVAxjAslBWE02fFFla3geiOalN3ovf">
                   <img src= "https://www.freepnglogos.com/uploads/google-logo-png/google-logo-png-webinar-optimizing-for-success-google-business-webinar-13.png">
                  </a> 
                  <a href="https://www.facebook.com/login/?privacy_mutation_token=eyJ0eXBlIjowLCJjcmVhdGlvbl90aW1lIjoxNjU4NTU2OTI2LCJjYWxsc2l0ZV9pZCI6MjY5NTQ4NDUzMDcyMDk1MX0%3D">
                    <img src="https://www.seekpng.com/png/detail/51-516623_facebook-transparent-background-facebook-round-logo-blue-circle.png" >
                  </a> 
                  
                  <a href="https://twitter.com/?logout=1658557139720">
                   <img src= "https://static.vecteezy.com/system/resources/previews/002/534/045/original/social-media-twitter-logo-blue-isolated-free-vector.jpg ">
                  </a> 
                   
                </div>  
              </div>
              
    
    <div class="footer">
    <ul>
      <li><a href="">ABOUT US</a></li>
      <li><a href="">HELP</a></li>
      <li><a href="">API</a></li>
      <li><a href="">JOBS</a></li>
      <li><a href="">PRIVACY</a></li>
      <li><a href="">TERMS</a></li>
      <li><a href="">LOCATIONS</a></li>
      <li><a href="">SURVEYS</a></li>
      <li><a href="">HASHTAGS</a></li>
      <li><a href="">LANGUAGE</a></li>
    </ul>
    <p>© 2022 SurveyCorps</p>
  </div>
</body>
</html>