<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Panel.Master" AutoEventWireup="true" CodeBehind="UpdateBusinessInfo.aspx.cs" Inherits="VAdodaraHelpsE_DirectiveSystem.Pages.UpdateBusinessInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <center> <h1>Update Business Information</h1></center>
   <table class="auto-style1">
    
              <tr>
        <td class="auto-style5" >Business Name:</td>
        <td>
            <asp:TextBox ID="txtName" runat="server" class="txt"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">Business Address:</td>
        <td>
            <asp:TextBox ID="txtAdress" runat="server" class="txt"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">Business Category</td>
        <td>
            <asp:DropDownList ID="ddlCategory" runat="server" class="txt">
                <asp:ListItem  Selected="True">---select---</asp:ListItem>
                <asp:ListItem >Bank</asp:ListItem>
                <asp:ListItem >Grocary</asp:ListItem>
                <asp:ListItem >Automobile</asp:ListItem>
                <asp:ListItem >Medical</asp:ListItem>
                <asp:ListItem >School/Collage</asp:ListItem>
                <asp:ListItem >Hadware Shop</asp:ListItem>
                <asp:ListItem >Parlour</asp:ListItem>
                <asp:ListItem >Shoe shop</asp:ListItem>
                <asp:ListItem >Cloth Shop</asp:ListItem>
                <asp:ListItem >Mobile Shop</asp:ListItem>
                <asp:ListItem >Mall</asp:ListItem>
                <asp:ListItem >Restorent</asp:ListItem>
                <asp:ListItem >Optical House</asp:ListItem>
                <asp:ListItem >Stationary</asp:ListItem>
                <asp:ListItem >Fast Food</asp:ListItem>
            </asp:DropDownList>   
        </td>
    </tr>
     <tr>
        <td class="auto-style5">Business Contact:</td>
        <td>
            <asp:TextBox ID="txtContact" runat="server" class="txt"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>Business Area</td>
        <td>
            <asp:DropDownList ID="ddlArea" runat="server" class="txt">
                <asp:ListItem >---Select---</asp:ListItem>
                <asp:ListItem >Subhanpura</asp:ListItem>
                <asp:ListItem >Vagodia</asp:ListItem>
                <asp:ListItem >Vip Road</asp:ListItem>
                <asp:ListItem >Gorva</asp:ListItem>
                <asp:ListItem >Nizampura</asp:ListItem>
                <asp:ListItem >Fateganj</asp:ListItem>
                <asp:ListItem >Syajigang</asp:ListItem>
                <asp:ListItem >Station</asp:ListItem>
                <asp:ListItem >Harinagar</asp:ListItem>
                <asp:ListItem >Ellorapark</asp:ListItem>
                <asp:ListItem >Harni Road</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">Business Email:</td>
        <td>
            <asp:TextBox ID="txtEmail" runat="server" class="txt"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">Business Description</td>
        <td class="auto-style4">
             <asp:TextBox ID="txtDescription" runat="server" class="txt"></asp:TextBox>
        </td>
    </tr>
     <tr>
        <td class="auto-style3">
            <asp:Button ID="btnSubmit" runat="server" Text="Upadte" OnClick="btnSubmit_Click" style="color:white;background-color:#0000ff;font-size:20px;border:none" Width="80px" Height="40px"/></td>
    </tr>

        <tr>
        <td class="auto-style5">
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </td>
        <td>
            &nbsp;</td>
    </tr>
</table>
   
</asp:Content>
