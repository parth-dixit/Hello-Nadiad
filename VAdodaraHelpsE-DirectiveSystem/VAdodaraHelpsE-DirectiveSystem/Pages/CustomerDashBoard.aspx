<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Panel.Master" AutoEventWireup="true" CodeBehind="CustomerDashBoard.aspx.cs" Inherits="VAdodaraHelpsE_DirectiveSystem.Pages.CustomerDashBoard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  <style>  td
        {
            padding-bottom: 30px;
            color:#0000ff;
            font-size:20px
        }
  td.style10{
      padding-left:55px;
      color:white;
      font-size:20px;
      font-family:Jokerman;
  }
  h3{
      color:white; font-family:Jokerman;
  }
  td.style2{
      color:lightseagreen;
      padding-left:330px;
      font-size:24px;
  }
  td.style9{
       color:lightseagreen;
  }
      a {
      text-decoration:none;
      }
      a{
          color:lightgreen;
      }
    
  </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <center>
            <h2 style="color:white; font-family:Jokerman;">
                WelCome Customer
            </h2>
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
                                <td> <a href="UpdateBusinessInfo.aspx">Upadte Advertisement</a> </td>
                            </tr>
                            <tr>
                                <td> <a href="UpadteCustomer.aspx">Upadte Information</a> </td>
                            </tr>
                                  <tr>
                                <td> <a href="DeleteBusiness.aspx">Delete Advertisement</a> </td>
                            </tr>
                           
                       
                        </table>
                    </td>
                    <td class="style2">
                        <table>
                            <tr>
                                <td class="style9">
                                    <strong> Name:</strong>
                                </td>
                                <td class="style9">
                                    <asp:Label ID="lblName" runat="server" Text=""></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style9">
                                    <strong>Email:</strong>
                                </td>
                                <td class="style9">
                                    <asp:Label ID="lblEmail" runat="server"></asp:Label>
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
            <br />
</asp:Content>
