<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin_MasterPage.master" AutoEventWireup="true" CodeFile="Admin_upload.aspx.cs" Inherits="Admin_Admin_upload" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="ObjectDataSource1" ForeColor="Black" GridLines="Vertical" Width="100%">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowSelectButton="True" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FBFBF2" />
        <SortedAscendingHeaderStyle BackColor="#848384" />
        <SortedDescendingCellStyle BackColor="#EAEAD3" />
        <SortedDescendingHeaderStyle BackColor="#575357" />
    </asp:GridView>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="DeleteUpload" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataAllUpload" TypeName="DataSet_uploadTableAdapters.tbl_uploadTableAdapter">
        <DeleteParameters>
            <asp:Parameter Name="upid" Type="Int32" />
        </DeleteParameters>
    </asp:ObjectDataSource>
</asp:Content>

