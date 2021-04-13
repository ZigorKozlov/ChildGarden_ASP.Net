<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="EmployeeLK.aspx.cs" Inherits="LAB_5_ASOIU.EmployeeLK" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style13 {
            height: 40px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Личный кабинет сотрудника:<table class="auto-style7">
            <tr>
                <td>
                    <asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click">Добавить занятие</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">
                    <asp:LinkButton ID="LinkButton6" runat="server" OnClick="LinkButton6_Click">Проставить успеваемость</asp:LinkButton>
                </td>
            </tr>
        </table>
    </p>
</asp:Content>
