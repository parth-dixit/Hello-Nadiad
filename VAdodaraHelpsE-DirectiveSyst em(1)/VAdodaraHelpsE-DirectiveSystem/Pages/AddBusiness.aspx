<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddBusiness.aspx.cs" Inherits="VAdodaraHelpsE_DirectiveSystem.Pages.AddBusiness" %>

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
          <li><a href="Login_page">See Your Advertise</a></li>
        
          <li><a href="#">Contact-Us</a></li>
          <li><a href="Login_page.aspx">Sign-In</a></li>
          <li><a href="CreateUser.aspx">Sign-up</a></li> 
          <li><a href="Log_Out.aspx">Log Out</a></li> 
        </ul>
      </nav>
    </div>
  </header>
         <h3>Enter your bussiness details</h3>
             <table class="auto-style1">
    <tr>
        <td class="auto-style2">Bussiness Name:</td>
        <td>
            <asp:TextBox ID="textbox1" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Bussiness Address:</td>
        <td>
            <asp:TextBox ID="textbox2" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Pincode</td>
        <td>
            <asp:TextBox ID="textbox3" runat="server" ></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Area</td>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>Collage Road</asp:ListItem>
                <asp:ListItem>Vaniyavad</asp:ListItem>
                <asp:ListItem>Vachhewad</asp:ListItem>
                <asp:ListItem>Nizam Pura</asp:ListItem>
                <asp:ListItem>Panch Hathdi</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Bussiness Type</td>
        <td>
            <asp:DropDownList ID="DropDownList2" runat="server">
                <asp:ListItem>Automobile Showroom</asp:ListItem>
                <asp:ListItem>Advocate</asp:ListItem>
                <asp:ListItem>Book Retail</asp:ListItem>
                <asp:ListItem>Gym</asp:ListItem>
                <asp:ListItem>Restaurant</asp:ListItem>
                <asp:ListItem>Cinema</asp:ListItem>
                <asp:ListItem>Collage</asp:ListItem>
                <asp:ListItem Value="Contractor"></asp:ListItem>
                <asp:ListItem>Dairy</asp:ListItem>
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT * FROM [Ad_request]"></asp:SqlDataSource>
        </td>
    </tr>
    
    <tr>
        <td class="auto-style2" > 
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Submit" style="font-family:'Times New Roman', Times, serif;font-size:18px;color:#ffffff;  background-color: Transparent;
    border: none; color: white; padding: 15px 32px;  text-align: center;  text-decoration: none; display: inline-block; font-size: 18px;;background-color:#55d6aa; "/>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </td>
        <td>
            &nbsp;</td>
    </tr>
</table>
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
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT * FROM [customer]"></asp:SqlDataSource>
    </form>
</body>
</html>
