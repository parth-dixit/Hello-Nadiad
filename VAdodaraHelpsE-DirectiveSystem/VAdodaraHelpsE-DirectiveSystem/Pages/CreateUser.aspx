<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Project.Master" AutoEventWireup="true" CodeBehind="CreateUser.aspx.cs" Inherits="VAdodaraHelpsE_DirectiveSystem.Pages.CreateUser" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
      td.auto-style5
        {
            padding-bottom: 15px;
            padding-top: 12px;
            color:#ffffff;
            font-size:18px
        }
        table {
        padding-left:550px;
            color:#ffffff;
        font-size:18px;
        }
     
        h3{
            padding-left: 540px;
            color:#ffffff;
            font-family:Jokerman;
       
        }
         .txt
	{
		width:250px;
		 border: none;
    border-bottom: 2px solid #33FFF0;
	 box-sizing: border-box;
	 
	}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3  style="color:white; font-family:Jokerman;">
         Sign Up Here.....
          </h3>
   <asp:Panel ID="PnlForm" runat="server">
          <table class="auto-style1">
    
              <tr>
        <td class="auto-style5" >First Name:</td>
        <td>
            <asp:TextBox ID="txtFiistName" runat="server" class="txt"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">Last Name:</td>
        <td>
            <asp:TextBox ID="txtLastName" runat="server" class="txt"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">Password</td>
        <td>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" class="txt"></asp:TextBox>
        </td>
    </tr>
     <tr>
        <td class="auto-style5">Confirm Password</td>
        <td>
            <asp:TextBox ID="txtConfirm" runat="server" TextMode="Password" class="txt"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>Date Of Birth</td>
        <td>
            <asp:TextBox ID="txtDOB" runat="server" class="txt"></asp:TextBox>
            <ajaxToolkit:CalendarExtender ID="txtDOB_CalendarExtender" runat="server" TargetControlID="txtDOB" />
        </td>
    </tr>
    <tr>
        <td class="auto-style5">Email:</td>
        <td>
            <asp:TextBox ID="txtEmail" runat="server" class="txt"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">Gender:</td>
        <td class="auto-style4">
            <asp:RadioButtonList ID="rbtnGender" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                <asp:ListItem Selected="True">Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
            </asp:RadioButtonList>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">Resident Address:</td>
        <td>
            <asp:TextBox ID="txtAddress" runat="server" class="txt"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">Area Pincode</td>
        <td>
            <asp:TextBox ID="txtPincode" runat="server" class="txt"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">Contact Number</td>
        <td>
            <asp:TextBox ID="txtContact" runat="server" class="txt"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Submit" style="color:white;background-color:#0000ff;font-size:20px;border:none" Width="80px" Height="40px" />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style5">
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
       </asp:Panel>
        
    </asp:Content>
