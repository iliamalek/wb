<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin_MasterPage.master" AutoEventWireup="true" CodeFile="Link.aspx.cs" Inherits="Admin_Link" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table style="">

        <tr>
            <td>عنوان پیوند:</td>
            <td><asp:TextBox ID="txt_title" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td>آدرس پیوند:</td>
            <td><asp:TextBox ID="txt_url" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td>توضیحات پیوند:</td>
            <td><asp:TextBox ID="txt_desc" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td><asp:Button ID="btn_link" runat="server" Text="ثبت پیوند" OnClick="btn_link_Click" /></td>
            <td><asp:Label ID="lbl_link" runat="server"></asp:Label></td>
        </tr>

    </table>

    <br />
    <br />

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

    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="DeleteLink" InsertMethod="InsertLink" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataAllLink" TypeName="DataSet_linkTableAdapters.tbl_linkTableAdapter" UpdateMethod="UpdateLink">
        <DeleteParameters>
            <asp:Parameter Name="linkid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="linkname" Type="String" />
            <asp:Parameter Name="linkurl" Type="String" />
            <asp:Parameter Name="linkdesc" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="linkname" Type="String" />
            <asp:Parameter Name="linkurl" Type="String" />
            <asp:Parameter Name="linkdesc" Type="String" />
            <asp:Parameter Name="linkid" Type="Int32" />
        </UpdateParameters>
    </asp:ObjectDataSource>



</asp:Content>

