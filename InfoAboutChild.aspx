<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="InfoAboutChild.aspx.cs" Inherits="LAB_5_ASOIU.InfoAboutChild" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style7">
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="Name" HeaderText="Название" SortExpression="Name" />
                        <asp:BoundField DataField="Date" HeaderText="Дата" SortExpression="Date" />
                        <asp:BoundField DataField="Difficulty" HeaderText="Сложность" SortExpression="Difficulty" />
                        <asp:BoundField DataField="Description" HeaderText="Описание" SortExpression="Description" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ASOUI2_lab4SQLConnectionString %>" SelectCommand="SELECT [Name], [Date], [Difficulty], [Description] FROM [Lesson]"></asp:SqlDataSource>
            </td>
            <td>
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="LinqDataSource1" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="ID_child" HeaderText="Номер ребёнка" ReadOnly="True" SortExpression="ID_child" />
                        <asp:BoundField DataField="ID_lesson" HeaderText="Номер урока" ReadOnly="True" SortExpression="ID_lesson" />
                        <asp:BoundField DataField="Behavior" HeaderText="Поведение" ReadOnly="True" SortExpression="Behavior" />
                        <asp:BoundField DataField="Grade" HeaderText="Успиваемость" ReadOnly="True" SortExpression="Grade" />
                    </Columns>
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>
                <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="LAB_5_ASOIU.DataClasses1DataContext" EntityTypeName="" Select="new (ID_child, ID_lesson, Behavior, Grade, Children, Lesson)" TableName="Progress">
                </asp:LinqDataSource>
            </td>
        </tr>
    </table>
</asp:Content>
