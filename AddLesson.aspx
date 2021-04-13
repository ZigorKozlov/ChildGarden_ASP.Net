<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AddLesson.aspx.cs" Inherits="LAB_5_ASOIU.AddLesson" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style13 {
            width: 266px;
        }
        .auto-style14 {
            width: 266px;
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
            <td class="auto-style13">Название</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" BackColor="#FF9900" BorderColor="White" ControlToValidate="TextBox1" EnableClientScript="False" ErrorMessage="Введите название"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">Дата</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Date"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" BackColor="#FF9900" BorderColor="#FF9900" ControlToValidate="TextBox2" EnableClientScript="False" ErrorMessage="Неверная дата"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">Сложность</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" BackColor="#FF9900" ControlToValidate="TextBox3" EnableClientScript="False" ErrorMessage="Введите сложность"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">Описание</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" ForeColor="Black"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" BackColor="#FF9900" ControlToValidate="TextBox4" EnableClientScript="False" ErrorMessage="Введите описание"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">Номер сотрудника</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" ForeColor="#FF6600" TextMode="Number"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" BackColor="#FF9900" ControlToValidate="TextBox5" EnableClientScript="False" ErrorMessage="Введите номер"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">Длительность</td>
            <td class="auto-style15">
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" BackColor="#FF9900" ControlToValidate="TextBox6" EnableClientScript="False" ErrorMessage="Введите длительность"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">Индивидуальное</td>
            <td>
                <asp:TextBox ID="TextBox7" runat="server" TextMode="Number"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" BackColor="#FF9933" ControlToValidate="TextBox7" EnableClientScript="False" ErrorMessage="1-да, 0-нет"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">Номер комнаты</td>
            <td>
                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" BackColor="#FF9933" ControlToValidate="TextBox8" EnableClientScript="False" ErrorMessage="Введите номер комнаты!"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">Номертипа занятия</td>
            <td>
                <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" BackColor="#FF9933" ControlToValidate="TextBox9" EnableClientScript="False" ErrorMessage="Введите номер тиа занятия"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style16" colspan="2">
                <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Ок" />
                <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
