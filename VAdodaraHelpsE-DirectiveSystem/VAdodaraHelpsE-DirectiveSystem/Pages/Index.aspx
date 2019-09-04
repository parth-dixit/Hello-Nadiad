<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="VAdodaraHelpsE_DirectiveSystem.Pages.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <link rel="stylesheet" href="/css/new_index.css" type="text/css" /> 
    <script type="text/javascript" src="/js/index.js"></script>
    <title></title>
    
      
   <style type="text/css"> 
  
       td
        {
            padding-bottom: 30px;
            color:white
            font-size:20px;
            padding-left:200px;
        }
       .txt	{
		width:250px;
		 border: none;
    border-bottom: 2px solid #33FFF0;
	 box-sizing: border-box;
	 
	}
      
       </style>
</head>
<body>
     
    <form id="form1" runat="server">
  <asp:ScriptManager runat="server"></asp:ScriptManager>
   
       <header>
    <div class="container">
      <h1 class="logo">
       
          
      </h1>

      <nav class="page-nav">
        <ul class="menu">
        <li><a href="Index.aspx">Home</a></li>
          <li><a href="about.aspx">About</a></li>
          <li><a href="#">Searching</a></li>
          <li><a href="#contactus">Contact</a></li>
             <li><a href="Login.aspx">Login/Singup</a></li>
 
        </ul>
      </nav>
    </div>
  </header>
        <div id="Imageslide">
            <asp:Image ID="Image1" runat="server"  Width="1300px" Height="700px"/>
            <ajaxToolkit:SlideShowExtender ID="Image1_SlideShowExtender" runat="server" BehaviorID="Image1_SlideShowExtender"  TargetControlID="Image1" ImageHeight="0" ImageWidth="0" SlideShowServiceMethod="slidingAjex" PlayInterval="4000" AutoPlay="True" Loop="True" SlideShowAnimationType="SlideRight"/>
            </div>
        <div id="About">
            </div>
         <div>
            
                <section class="search_section">
                    <table>
         <tr>
        <td class="auto-style2">City:</td>
        <td>
            <asp:TextBox ID="txt_city" runat="server" value="nadiad"></asp:TextBox>
        </td>
    </tr>
        <tr>
        <td class="auto-style2">What u r looking 4.</td>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>Advocate</asp:ListItem>
                <asp:ListItem>Automobile Showroom</asp:ListItem>
                <asp:ListItem>Bakery &amp; Cake Shop</asp:ListItem>
                <asp:ListItem>Bank</asp:ListItem>
                <asp:ListItem>Colleges</asp:ListItem>
                <asp:ListItem>Cinemas</asp:ListItem>
                <asp:ListItem>Contractors</asp:ListItem>
                <asp:ListItem>Dairy</asp:ListItem>
                <asp:ListItem>Drinking Water</asp:ListItem>
                <asp:ListItem>Fast Food</asp:ListItem>
                <asp:ListItem>Gym</asp:ListItem>
                <asp:ListItem>Book Retail</asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
            
        </td>
    </tr>
                    <tr>
        <td class="auto-style2">Area.</td>
        <td>
            <asp:DropDownList ID="DropDownList2" runat="server">
                <asp:ListItem>College Road</asp:ListItem>
                <asp:ListItem>Santram Mandir</asp:ListItem>
                <asp:ListItem>Vaniyavad</asp:ListItem>
                 <asp:ListItem>Vachhewad</asp:ListItem>
                 <asp:ListItem>Nizam Pura</asp:ListItem>
                 <asp:ListItem>paanch haatdi</asp:ListItem>
              
            </asp:DropDownList>
            
        </td>
    </tr>
        <tr>
        <td class="auto-style2" > 
              <asp:Button ID="Button2" runat="server" Text="Button" OnClick="Button2_Click" />
                </td>
        <td>&nbsp;</td>
    </tr>
    </table>
                </section>
           

        </div>
       
        <div id="contactus" style="background-color:#F0FFFF;padding-top:30px">
            <center>
                <h1>
                    Contact Us
                    </h1></center>
            <table>
                <tr>
                    <td>
                           <table>
                               <tr>
                                   <td>
                                       Your Name:
                                       </td>
                                        <td>
                                       <asp:TextBox ID="TextBox1" runat="server" CssClass="txt"></asp:TextBox>
                                             </td>
                                   </tr>
                               <tr>
                                   <td>
                                       Email:
                                       </td>
                                        <td>
                                       <asp:TextBox ID="TextBox2" runat="server" CssClass="txt"></asp:TextBox>
                                             </td>
                                   </tr>
                               <tr>
                                   <td>
                                       Subject:
                                       </td>
                                        <td>
                                       <asp:TextBox ID="TextBox3" runat="server" CssClass="txt"></asp:TextBox>
                                             </td>
                                   </tr>
                               <tr>
                                   <td>
                                       Your Message:
                                       </td>
                                        <td>
                                       <asp:TextBox ID="TextBox4" runat="server" CssClass="txt"></asp:TextBox>
                                             </td>
                                   </tr>
                               <tr>
                                        <td>
                                   <asp:Button ID="Button1" runat="server" Text="Send" style="color:white;background-color:#0000ff;font-size:20px;border:none" Width="80px" Height="40px" ></asp:Button>
                                                      </td>
                                   </tr>
                               </table>
                    </td>
                    <td>
                           <table>
                               <tr>
                                   <td>
                        <u>Email Address:</u>
                                      </br> agrawalshubham12011996@gmail.com
                                   </td>
                                   </tr>
                               <tr>
                                   <td>
                        <u>Phone Number</u>
                        <br>9974179352
                                             </td>
                                   </tr>
                               <tr>
                                   <td>
                        <u>On The Web</u>
                        </br>Gmail , Linkdn , Yahoo ,Facebook
                         </td>
                                   </tr>
                               </table>
                        
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
           
    </form>
</body>
</html>
