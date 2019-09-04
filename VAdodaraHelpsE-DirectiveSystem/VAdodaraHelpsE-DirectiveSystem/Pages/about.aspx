<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="VAdodaraHelpsE_DirectiveSystem.Pages.about" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
       <link rel = "stylesheet" type = "text/css" href = "/css/new_index.css" />
     <style type="text/css">
          body {
            
            font-size: 20px;
             }
           h3{
            font-family:Jokerman;
            color:#ffffff;
            padding-left:540px;
            padding-top:15px;
           }
           table{
             padding-left:30px;
             padding-top:60px;
             }
         td {
            color: #ffffff;
            padding-bottom: 15px;
          
          }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <header>
    <div class="container">
      <h1 class="logo">
      </h1>

           <nav class="page-nav">
        <ul class="menu">
          <li><a href="#">Home</a></li>        
          <li><a href="Contact_us.aspx">Contact-Us</a></li>
          <li><a href="Login_page.aspx">Sign-In</a></li>
          <li><a href="CreateUser.aspx">Sign-up</a></li> 
        </ul>
      </nav>
        
         </div>
  </header>
     <h3> About Us...</h3>
           <table>
           
       <tr>
           
           <td > 
                 <u> Our Mission :</u>
					<p style="color:white; text-align:center;"> Our mission is to make every buisness should be available on internet.So it can be accessible anytime & everywhere, though small buisness can easily being explore in the city.
                     </p>   
	           <u>What Do Website Do :</u>
						<p style="color:white; text-align:center;">  	This website helps small buisnessman to grow their buisness up on the internet, because google maps are not capable to show each shops available in the city so this website will help them to advertis their buissness on this website. it also helps the people in the city to find shops easily in the city by click just a "search :-)" button.
             </p>
           </td>
       </tr>
   </table>
    </div>
           <div class="footer">
               <div id="button"></div>
               <div id="container">
               <div id="cont">
               <div class="footer_center">
	                  <p>Developed By : Karan Ganwani & Parth Dixit.
                          @copyright 2017 by The Nadiad Helps
	                  </p>
                      
               </div>
               </div>
               </div>
             </div>
    </div>
    </form>
</body>
</html>
