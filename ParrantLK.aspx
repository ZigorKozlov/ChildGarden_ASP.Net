<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ParrantLK.aspx.cs" Inherits="LAB_5_ASOIU.ParrantLK" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Добро пожаловать в личный кабинет!!!</p>
    <table class="auto-style7">
        <tr>
            <td>
                <asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click">Редактировать профиль</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td>
                <asp:LinkButton ID="LinkButton6" runat="server" OnClick="LinkButton6_Click">Написать отзыв о сотруднике</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td>
                <asp:LinkButton ID="LinkButton7" runat="server" OnClick="LinkButton7_Click">Информация о ребёнке</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td>
                <asp:LinkButton ID="LinkButton8" runat="server" OnClick="LinkButton8_Click">Подать заявку на поступление в детский сад</asp:LinkButton>
            </td>
        </tr>
    </table>
</asp:Content>
