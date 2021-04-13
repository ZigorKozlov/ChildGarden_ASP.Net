<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminLK.aspx.cs" Inherits="LAB_5_ASOIU.AdminLK" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style13 {
            height: 40px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style7">
        <tr>
            <td>Личный кабинет Администратора:</td>
        </tr>
        <tr>
            <td>
                <asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click">Обработка заявок на поступление</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">
                <asp:LinkButton ID="LinkButton6" runat="server" OnClick="LinkButton6_Click">Управление сотрудниками</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td>
                <asp:LinkButton ID="LinkButton7" runat="server" OnClick="LinkButton7_Click">Управление детьми</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td>
                <asp:LinkButton ID="LinkButton8" runat="server" OnClick="LinkButton8_Click">Добавить сотрудника</asp:LinkButton>
            </td>
        </tr>
    </table>
</asp:Content>
