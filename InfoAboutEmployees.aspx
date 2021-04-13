<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="InfoAboutEmployees.aspx.cs" Inherits="LAB_5_ASOIU.InfoAboutEmployees" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <table class="auto-style7">
            <tr>
                <td>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="LinqDataSource1" ForeColor="#333333" GridLines="None" OnRowDataBound="GridView1_RowDataBound" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Description" HeaderText="Отзыв" ReadOnly="True" SortExpression="Description" />
                <asp:BoundField DataField="ID_parent" HeaderText="ID_parent" ReadOnly="True" SortExpression="ID_parent" Visible="False" />
                <asp:BoundField DataField="ID_employee" HeaderText="ID_employee" ReadOnly="True" SortExpression="ID_employee" Visible="False" />
                <asp:BoundField DataField="ID_employee" HeaderText="Фамилия" SortExpression="ID_employee" />
                <asp:BoundField DataField="ID_parent" HeaderText="Имя" SortExpression="ID_parent" />
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
                </td>
                <td>
                    <asp:GridView ID="GridView2" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="LinqDataSource2" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="Surname" HeaderText="Фамилия" ReadOnly="True" SortExpression="Surname" />
                            <asp:BoundField DataField="Name" HeaderText="Имя" ReadOnly="True" SortExpression="Name" />
                            <asp:BoundField DataField="Patronymic" HeaderText="Отчество" ReadOnly="True" SortExpression="Patronymic" />
                            <asp:BoundField DataField="Position" HeaderText="Должность" ReadOnly="True" SortExpression="Position" />
                            <asp:BoundField DataField="Phone" HeaderText="Телефон" ReadOnly="True" SortExpression="Phone" />
                            <asp:BoundField DataField="Mail" HeaderText="Почта" ReadOnly="True" SortExpression="Mail" />
                            <asp:BoundField DataField="Salary" HeaderText="Зарплата" ReadOnly="True" SortExpression="Salary" />
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
                    <asp:LinqDataSource ID="LinqDataSource2" runat="server" ContextTypeName="LAB_5_ASOIU.DataClasses1DataContext" EntityTypeName="" Select="new (Surname, Name, Patronymic, Position, Phone, Mail, Salary)" TableName="Employees">
                    </asp:LinqDataSource>
                </td>
            </tr>
        </table>
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="LAB_5_ASOIU.DataClasses1DataContext" EntityTypeName="" Select="new (Description, ID_parent, ID_employee)" TableName="Reviews">
        </asp:LinqDataSource>
    </p>
</asp:Content>
