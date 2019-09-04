<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Panel.Master" AutoEventWireup="true" CodeBehind="AdminDashBoard.aspx.cs" Inherits="VAdodaraHelpsE_DirectiveSystem.Pages.AdminDeshBoard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<center>
    <br /><br />
    <asp:Button ID="btnAccept" runat="server" Text="Accept Request" Visible="false" OnClick="btnAccept_Click" style="color:white;background-color:#0000ff;font-size:20px;border:none" Width="190px" Height="40px"></asp:Button> &nbsp;
     <asp:Button ID="btnReject" runat="server" Text="Reject Request" Visible="false" OnClick="btnReject_Click" style="color:white;background-color:#0000ff;font-size:20px;border:none" Width="190px" Height="40px"></asp:Button>
    </br>
    <br /><br /><br /><br /><asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" DataKeyNames="BId">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="BId" HeaderText="BId" SortExpression="BId" InsertVisible="False" ReadOnly="True" />
            <asp:BoundField DataField="User_Id" HeaderText="User_Id" SortExpression="User_Id" />
            <asp:BoundField DataField="Business_Name" HeaderText="Business_Name" SortExpression="Business_Name" />
            <asp:BoundField DataField="Business_Address" HeaderText="Business_Address" SortExpression="Business_Address" />
            <asp:BoundField DataField="Business_Category" HeaderText="Business_Category" SortExpression="Business_Category" />
            <asp:BoundField DataField="Business_Contact" HeaderText="Business_Contact" SortExpression="Business_Contact" />
            <asp:BoundField DataField="Business_Area" HeaderText="Business_Area" SortExpression="Business_Area" />
            <asp:BoundField DataField="Request_Status" HeaderText="Request_Status" SortExpression="Request_Status" />
            <asp:BoundField DataField="Business_Email" HeaderText="Business_Email" SortExpression="Business_Email" />
            <asp:CommandField ShowSelectButton="True" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />

    </asp:GridView>
   
</center>
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProjectDataConnection %>" SelectCommand="SELECT [BId], [User_Id], [Business_Name], [Business_Address], [Business_Category], [Business_Contact], [Business_Area], [Request_Status], [Business_Email] FROM [User_Business] WHERE ([Request_Status] = @Request_Status)">
        <SelectParameters>
            <asp:Parameter DefaultValue="Requesting" Name="Request_Status" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
