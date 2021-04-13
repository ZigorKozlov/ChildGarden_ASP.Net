<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AddProgress.aspx.cs" Inherits="LAB_5_ASOIU.AddProgress" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style13 {
            width: 234px;
        }
        .auto-style14 {
            width: 234px;
            height: 41px;
        }
        .auto-style15 {
            height: 41px;
        }
        .auto-style16 {
            height: 51px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style7">
        <tr>
            <td colspan="2">Добавить прогресс ребёнку:</td>
        </tr>
        <tr>
            <td class="auto-style13">Фамилия</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" BackColor="#FF9900" BorderColor="White" ControlToValidate="TextBox1" EnableClientScript="False" ErrorMessage="Пустая фамилия?"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">Имя</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" BackColor="#FF9900" BorderColor="#FF9900" ControlToValidate="TextBox2" EnableClientScript="False" ErrorMessage="Пустое имя?"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">Отчество</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" BackColor="#FF9900" ControlToValidate="TextBox3" EnableClientScript="False" ErrorMessage="Пустое отчество?"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">Номер урока</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" ForeColor="Black"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" BackColor="#FF9900" ControlToValidate="TextBox4" EnableClientScript="False" ErrorMessage="Введите номер урока"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">Оценка</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" ForeColor="#FF6600"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" BackColor="#FF9900" ControlToValidate="TextBox5" EnableClientScript="False" ErrorMessage="Введите оценку"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">Поведение</td>
            <td class="auto-style15">
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" BackColor="#FF9900" ControlToValidate="TextBox6" EnableClientScript="False" ErrorMessage="Введите поведение ребёнка"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style16" colspan="2">
                <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Отправить" />
                <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
