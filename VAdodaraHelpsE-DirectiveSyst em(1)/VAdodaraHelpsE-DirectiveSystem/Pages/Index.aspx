<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="VAdodaraHelpsE_DirectiveSystem.Pages.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   <link rel = "stylesheet" type = "text/css" href = "/css/style.css" />
    
</head>
<body>
   
    <form id="form1" runat="server">
       <header>
    <div class="container">
      <h1 class="logo">
          
      </h1>

      <nav class="page-nav">
        <ul class="menu">
          <li><a href="#">Home</a></li>
          <li><a href="CustomerDashboard.aspx">See Your Advertise</a></li>
        
          <li><a href="#">Contact-Us</a></li>
          <li><a href="Login_page.aspx">Sign-In</a></li>
          <li><a href="CreateUser.aspx">Sign-up</a></li> 
                      <li><a href="Log_Out.aspx">Log Out</a></li> 
        </ul>
      </nav>
    </div>
  </header>
        <!-- image slider using ajax -->
         <asp:ScriptManager ID="ScriptManager1" runat="server">   </asp:ScriptManager>
         <div id="Imageslide">
         <asp:Image ID="Image1" runat="server"  Width="1300px" Height="700px"/>
         <ajaxToolkit:SlideShowExtender ID="Image1_SlideShowExtender" runat="server" BehaviorID="Image1_SlideShowExtender"  TargetControlID="Image1" ImageHeight="0" ImageWidth="0" SlideShowServiceMethod="slidingAjex" PlayInterval="4000" AutoPlay="True" Loop="True" SlideShowAnimationType="SlideRight"/>
         </div>

        <div>
            
   <section class="search_section">
   <table>
      
    <tr>
        <td class="auto-style2">City:</td>
        <td>
            <asp:TextBox ID="txt_city" runat="server" value="nadiad"></asp:TextBox>
        </td>
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
                         <td class="auto-style2" >   
            <asp:Button  ID="log_in" runat="server"  Text="Search" style="font-family:'Times New Roman', Times, serif;font-size:18px;color:#ffffff;  background-color: Transparent;
    border: none; color: white; padding: 15px 32px;  border-radius: 15px; text-align: center;  text-decoration: none; display: inline-block; font-size: 18px;;background-color:#55d6aa; " OnClick="log_in_Click"/>
        </td>
    </tr>
        
    </table>
                </section>
           

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
