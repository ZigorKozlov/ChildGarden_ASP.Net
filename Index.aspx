<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="LAB_5_ASOIU.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style12 {
            height: 152px;
        }
    .auto-style13 {
        height: 292px;
    }
    .auto-style14 {
        width: 875px;
    }
    .auto-style15 {
        height: 70px;
    }
    .auto-style16 {
        width: 84%;
        margin-right: 0px;
    }
    .auto-style17 {
        width: 645px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style7">
        <tr>
            <td class="auto-style12">
                <asp:Image ID="Image2" runat="server" Height="138px" ImageUrl="resources/rainbow.png" Width="818px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style15">
                <asp:Label ID="Label7" runat="server" Font-Bold="False" Font-Names="Gigi" Font-Size="X-Large" Text="Добро пожаловать!!!"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">
                <table class="auto-style16">
                    <tr>
                        <td class="auto-style17"><strong>Наш детский сад расположен по адресу: </strong></td>
                        <td class="auto-style14">Санкт-Петербург, Улица классная, дом 12</td>
                    </tr>
                    <tr>
                        <td colspan="2"><strong>График работы:</strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style17">Понедельник-Пятница:</td>
                        <td class="auto-style14">7:00 - 19:00</td>
                    </tr>
                    <tr>
                        <td class="auto-style17">Суббота, воскресенье</td>
                        <td class="auto-style14">Выходной</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
