<%@ Page Language="C#"  AutoEventWireup="true" CodeBehind="Login_page.aspx.cs" Inherits="VAdodaraHelpsE_DirectiveSystem.Pages.Login_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel = "stylesheet" type = "text/css" href = "/css/style.css" />
    <style type="text/css">
          body {
            
            font-size: 14px;
             }
           h3{
            font-family:Jokerman;
            color:#ffffff;
            padding-left:540px;
            padding-top:15px;
           }
           table{
             padding-left:340px;
             padding-top:60px;
             }
         td {
            color: #ffffff;
            padding-bottom: 15px;
          
          }
        

         .auto-style1 {
        width: 100%;
        }
        .auto-style2 {
        width: 407px;
        }
         .auto-style3 {
        width: 407px;
        height: 23px;
        }
         .auto-style4 {
        height: 23px;
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

      <nav>
        <ul>
          <li><a href="index.aspx">Home</a></li>
          
          <li><a href="index.aspx">Advertise</a></li>
         
          <li><a href="CreateUser.aspx">Sign-Up</a></li> 
        </ul>
      </nav>
    </div>
  </header>
              <h3>Welcome! Login Here.....</h3>
    <table>
         <tr>
        <td class="auto-style2">Email:</td>
        <td>
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        </td>
    </tr>
        <tr>
        <td class="auto-style2">Password</td>
        <td>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
        </td>
            </tr>
            <tr>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    <asp:ListItem>--SELECT CATEGORY</asp:ListItem>
                    <asp:ListItem>Customer</asp:ListItem>
                    <asp:ListItem>Admin</asp:ListItem>
        </asp:DropDownList>
        </td>
    </tr>
        <tr>
        <td class="auto-style2" >   
            <asp:Button  ID="log_in" runat="server"  Text="LOG-IN" style="font-family:'Times New Roman', Times, serif;font-size:18px;color:#ffffff;  background-color: Transparent;
    border: none; color: white; padding: 15px 32px;  border-radius: 15px; text-align: center;  text-decoration: none; display: inline-block; font-size: 18px;;background-color:#55d6aa; "/>
        </td>
        <td>&nbsp;</td>
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT * FROM [UserDB]"></asp:SqlDataSource>
    </form>
</body>
</html>
