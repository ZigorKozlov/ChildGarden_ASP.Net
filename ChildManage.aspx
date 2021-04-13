<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ChildManage.aspx.cs" Inherits="LAB_5_ASOIU.ChildManage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID_child" DataSourceID="LinqDataSource1" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="ID_child" HeaderText="Номер ребёнка" InsertVisible="False" ReadOnly="True" SortExpression="ID_child" />
            <asp:BoundField DataField="Surname" HeaderText="Фамилия" SortExpression="Surname" />
            <asp:BoundField DataField="Name" HeaderText="Имя" SortExpression="Name" />
            <asp:BoundField DataField="Patronymic" HeaderText="Отчество" SortExpression="Patronymic" />
            <asp:BoundField DataField="ID_group" HeaderText="Номер группы" SortExpression="ID_group" />
            <asp:BoundField DataField="BirthDate" HeaderText="Дата рождения" SortExpression="BirthDate" />
            <asp:BoundField DataField="Gender" HeaderText="Пол" SortExpression="Gender" />
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
    <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="LAB_5_ASOIU.DataClasses1DataContext" EnableDelete="True" EnableInsert="True" EnableUpdate="True" EntityTypeName="" TableName="Children">
    </asp:LinqDataSource>
</asp:Content>
