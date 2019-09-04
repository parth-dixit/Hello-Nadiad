<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Project.Master" AutoEventWireup="true" CodeBehind="CreateUser.aspx.cs" Inherits="VAdodaraHelpsE_DirectiveSystem.Pages.CreateUser" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
    table{
      padding-left:340px;
       padding-top:60px;
    }
        
        td {
            color: #ffffff;
            padding-bottom: 15px;
          
        }

</style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
       <h3>Sign Up Here....</h3>
             <table class="auto-style1">
    <tr>
        <td class="auto-style2">First Name:</td>
        <td>
            <asp:TextBox ID="txtFiistName" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Last Name:</td>
        <td>
            <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Password</td>
        <td>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Confirm Password</td>
        <td>
            <asp:TextBox ID="txtcnfpass" runat="server" TextMode="Password"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Date Of Birth</td>
        <td>
            <asp:TextBox ID="txtDOB" runat="server"></asp:TextBox>
            <ajaxToolkit:CalendarExtender ID="txtDOB_CalendarExtender" runat="server" TargetControlID="txtDOB" />
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Email:</td>
        <td>
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT * FROM [UserDB]"></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">Gender:</td>
        <td class="auto-style4">
            <asp:RadioButtonList ID="rbtnGender" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                <asp:ListItem Selected="True">Male</asp:ListItem>  <asp:ListItem>Female</asp:ListItem>
              
            </asp:RadioButtonList>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Resident Address:</td>
        <td>
            <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Area Pincode</td>
        <td>
            <asp:TextBox ID="txtPincode" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Contact Number</td>
        <td>
            <asp:TextBox ID="txtContact" runat="server"></asp:TextBox>
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
       
      
   
    
</asp:Content>
