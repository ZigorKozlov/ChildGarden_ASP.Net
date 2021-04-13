<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="EmpManage.aspx.cs" Inherits="LAB_5_ASOIU.EmpManage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID_employee" DataSourceID="LinqDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="ID_employee" HeaderText="Номер сотрудника" InsertVisible="False" ReadOnly="True" SortExpression="ID_employee" />
            <asp:BoundField DataField="Surname" HeaderText="Фамилия" SortExpression="Surname" />
            <asp:BoundField DataField="Name" HeaderText="Имя" SortExpression="Name" />
            <asp:BoundField DataField="Patronymic" HeaderText="Отчество" SortExpression="Patronymic" />
            <asp:BoundField DataField="Position" HeaderText="Должность" SortExpression="Position" />
            <asp:BoundField DataField="Phone" HeaderText="Телефон" SortExpression="Phone" />
            <asp:BoundField DataField="Mail" HeaderText="Почта" SortExpression="Mail" />
            <asp:BoundField DataField="Salary" HeaderText="Зарплата" SortExpression="Salary" />
            <asp:BoundField DataField="Login" HeaderText="Логин" SortExpression="Login" />
            <asp:BoundField DataField="Password" HeaderText="Пароль" SortExpression="Password" />
            <asp:BoundField DataField="PhotoURL" HeaderText="PhotoURL" SortExpression="PhotoURL" Visible="False" />
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
    <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="LAB_5_ASOIU.DataClasses1DataContext" EnableDelete="True" EnableInsert="True" EnableUpdate="True" EntityTypeName="" TableName="Employees">
    </asp:LinqDataSource>
</asp:Content>
