<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CreateApplication.aspx.cs" Inherits="LAB_5_ASOIU.CreateApplication" %>
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
            <td class="auto-style13">&nbsp;</td>
            <td>ЗАЯВКА В ДЕТСКИЙ САД:</td>
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
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" BackColor="#FF9900" ControlToValidate="TextBox3" EnableClientScript="False" ErrorMessage="Пустое отчество?(Вы же русский человек!!)"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">Достижения</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" ForeColor="Black"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" BackColor="#FF9900" ControlToValidate="TextBox4" EnableClientScript="False" ErrorMessage="Пустая др?"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">Привелегии</td>
            <td class="auto-style15">
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" BackColor="#FF9900" ControlToValidate="TextBox6" EnableClientScript="False" ErrorMessage="Не введЕНЫ привелегии"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">Возраст</td>
            <td>
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" BackColor="#FF9933" ControlToValidate="TextBox7" EnableClientScript="False" ErrorMessage="Не введён возраст"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style16" colspan="2">
                <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Подать" />
                <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
