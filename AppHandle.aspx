<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AppHandle.aspx.cs" Inherits="LAB_5_ASOIU.AppHandle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style7">
        <tr>
            <td>Заявки на поступление:</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="LinqDataSource1" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="Surname_ch" HeaderText="Фамилия" ReadOnly="True" SortExpression="Surname_ch" />
                        <asp:BoundField DataField="Name_ch" HeaderText="Имя" ReadOnly="True" SortExpression="Name_ch" />
                        <asp:BoundField DataField="Patronymic_ch" HeaderText="Отчество" ReadOnly="True" SortExpression="Patronymic_ch" />
                        <asp:BoundField DataField="Age_ch" HeaderText="Возраст" ReadOnly="True" SortExpression="Age_ch" />
                        <asp:BoundField DataField="Privileges" HeaderText="Привелегии" ReadOnly="True" SortExpression="Privileges" />
                        <asp:BoundField DataField="Achievements" HeaderText="Достижения" ReadOnly="True" SortExpression="Achievements" />
                        <asp:BoundField DataField="ID_parent" HeaderText="ID_parent" ReadOnly="True" SortExpression="ID_parent" Visible="False" />
                        <asp:BoundField DataField="ID_app" HeaderText="Номер заявки" ReadOnly="True" SortExpression="ID_app" />
                    </Columns>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                    <SortedDescendingHeaderStyle BackColor="#820000" />
                </asp:GridView>
                <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="LAB_5_ASOIU.DataClasses1DataContext" EntityTypeName="" Select="new (Surname_ch, Name_ch, Patronymic_ch, Age_ch, Privileges, Achievements, ID_parent, ID_app)" TableName="Applications">
                </asp:LinqDataSource>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Принять" />
                <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Отклонить" />
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
