<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerDashboard.aspx.cs" Inherits="VAdodaraHelpsE_DirectiveSystem.CustomerDashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel = "stylesheet" type = "text/css" href = "/css/style.css" />

</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 216px">
        <div>
       <header>
    <div class="container">
      <h1 class="logo">
          
      </h1>

      <nav class="page-nav">
        <ul class="menu">
          <li><a href="#">Home</a></li>
          <li><a href="#advert">Advertise</a></li>
        
          <li><a href="#">Contact-Us</a></li>
          <li><a href="Login_page.aspx">Sign-In</a></li>
          <li><a href="CreateUser.aspx">Sign-up</a></li>
          <li><a href="logout.aspx">Log_Out</a></li> 

        </ul>
      </nav>
    </div>
  </header>
    <div>
    
    </div>
        <table style="width: 95%; height: 200px">
                <tr>
                    <td class="style10">
                        
                            <h3>
                            Usefull LINKS</h3>
                      
                    </td>
                    <td colspan="2">
                    <center><h3 >Profile </h3></center>
                    </td>
                </tr>
                <tr>
                    <td class="style10">
                        <table>
                            <tr>
                                <td> <a href="AddBusiness.aspx">Add Advertisement</a> </td>
                            </tr>
                            <tr>
                                <td> <a href="see_your_ad.aspx">See Your Advertisement</a> </td>
                           
                       
                        </table>
                    </td>
                    <td class="style2">
                        <table>
                            <tr>
                                <td class="style9">
                                    <strong> Name:</strong>
                                </td>
                                <td class="style9">
                                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style9">
                                    <strong>Email:</strong>
                                </td>
                                <td class="style9">
                                    <asp:Label ID="lblEmail" runat="server"></asp:Label>
                                </td>
                                <td>
                                    <asp:label ID="lab" runat="server"></asp:label>
                                    </td>
                            </tr>
                            <tr>
                                <td class="style9">
                                    <strong>Residental Area Pincode::</strong>
                                </td>
                                <td class="style9">
                                    <asp:Label ID="lblAddress" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style9">
                                    Residental Address:
                                </td>
                                <td class="style9">
                                    <asp:Label ID="lblResidentalArea" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style9">
                                    <strong>Contact:&nbsp;&nbsp; </strong>&nbsp;
                                </td>
                                <td class="style9">
                                    <asp:Label ID="lblContact" runat="server"></asp:Label>
                                </td>
                            </tr>
                            
                            
                        </table>
                    </td>
                    <td class="style6">
                  </td>
                </tr>
            </table>
        <p>
            &nbsp;</p>
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [customer]"></asp:SqlDataSource>
            </form>
</body>
</html>
