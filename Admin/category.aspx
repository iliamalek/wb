<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin_MasterPage.master" AutoEventWireup="true" CodeFile="category.aspx.cs" Inherits="Admin_category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table>

        <tr>
            <td>نام موضوع:</td>
            <td><asp:TextBox ID="txt_catname" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td><asp:Button ID="btn_cat" runat="server" Text="ثبت موضوع" OnClick="btn_cat_Click" /></td>
            <td><asp:Label ID="lbl_cat" runat="server"></asp:Label></td>
        </tr>
    </table>

    <br />
    <br />

    <div dir="rtl">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="ObjectDataSource1" ForeColor="Black" GridLines="Vertical" Width="100%">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
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
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete_categoryBycatid" InsertMethod="Insert_category" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataAllcategory" TypeName="DataSet_categoryTableAdapters.categoryTableAdapter" UpdateMethod="Update_catnameBycatid">
            <DeleteParameters>
                <asp:Parameter Name="catid" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="catname" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="catname" Type="String" />
                <asp:Parameter Name="catid" Type="Int32" />
            </UpdateParameters>
        </asp:ObjectDataSource>
    </div>
</asp:Content>

