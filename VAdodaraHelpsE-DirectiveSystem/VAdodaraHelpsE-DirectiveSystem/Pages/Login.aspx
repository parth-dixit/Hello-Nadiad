<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Project.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="VAdodaraHelpsE_DirectiveSystem.Pages.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   <style>   .txt
	{
		
		 border: none;
    border-bottom: 2px solid #33FFF0;
	 box-sizing: border-box;
	  padding: 4% 4%;
	}
       td.c {
             color:#ffffff;
       padding-bottom:20px;
       font-size:25px;
       }
       a
       table {
       padding-bottom:505px;
       }
       a {
      font-size:20px;
       }
   </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <center>
   <div class="login">
      <h3 class="c"  style="color:white; font-family:Jokerman; margin-left: 40px;">
         Sign In Here.....
          </h3>
        <table>
                    <tr>
                        <td class="c">Email Address:</td>
                        <td class="c">
                            <asp:TextBox ID="txtEmail" runat="server" class="txt"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="c">Password:</td>
                        <td class="c">
                            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" class="txt"></asp:TextBox>
                        </td>
           </tr>
               <tr>
                        <td class="c">Password:</td>
                        <td class="c">
                            <asp:DropDownList ID="DropDownList1" runat="server">
                                <asp:ListItem>Admin</asp:ListItem>
                                <asp:ListItem>Customer</asp:ListItem>
                            </asp:DropDownList>
                          
                        </td>
           </tr>
               
            
             <tr>
                        <td   style="color:white; font-family:Jokerman;"><a href="CreateUser.aspx"> Forgot Password </a></td>
                    </tr>
                    <tr>
                        <td class="c">
                            <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" class="buttonI" /></td>
                                      
                    </tr>
             <tr>
                        <td class="c">
                         <asp:Label ID="Label1" runat="server" Text=""></asp:Label>             
                    </tr>
             <tr>
                        <td class="c>
                         <a href="CreateUser.aspx">Do You Want Craate Acconunt</a></td>
                                      
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
            </center>
</asp:Content>
