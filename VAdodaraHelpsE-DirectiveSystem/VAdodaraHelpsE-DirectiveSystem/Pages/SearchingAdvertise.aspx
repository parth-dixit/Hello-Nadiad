<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Project.Master" AutoEventWireup="true" CodeBehind="SearchingAdvertise.aspx.cs" Inherits="VAdodaraHelpsE_DirectiveSystem.Pages.SearchingAdvertise" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        th {
            padding-left:20px;
        margin-top:20px;
        border:none;
        background-color:#0000ff;
        color:#fff;
        }
        td {
        border:none;
        padding-left:20px;
        padding-top:20px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <center>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <div>
                    <table>
                        <tr>
                            <th>
                                <%#Eval("Business_Name") %>
                            </th>
                            <th>

                            </th>
                            <th>
                                <asp:Button ID="Button1" runat="server" Text="Show Full Deatils" />
                            </th> 
                        </tr>
                        <tr>
                            <td>Area:
                            </td>
                            <td>
                                <%#Eval("Business_Area") %>
                            </td>
                        </tr>
                        <tr>
                            <td>Category:
                            </td>
                            <td>
                                <%#Eval("Business_Category") %>
                            </td>
                        </tr>
                        <tr>
                            <td>Contact:
                            </td>
                            <td>
                                <%#Eval("Business_Contact") %>
                            </td>
                        </tr>
                    </table>
                </div>

            </ItemTemplate>

        </asp:Repeater>
            <center>
    </div>
</asp:Content>
