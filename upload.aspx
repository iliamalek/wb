<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="upload.aspx.cs" Inherits="upload" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <br />

    <table style="direction:rtl; font-family:Tahoma; font-size:12px; color:black; text-align:center; width:500px; margin:0 auto;padding:10px;border-style:solid;border-color:black;border-width:1px;">

        <tr>
            <td>عنوان فایل:</td>
            <td><asp:TextBox ID="txt_uptitle" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td>انتخاب فایل:</td>
            <td><asp:FileUpload ID="FileUpload1" runat="server" /></td>
        </tr>

        <tr>
            <td><asp:Button ID="btn_upload" runat="server" Text="Upload File" OnClick="btn_upload_Click" /></td>
            <td><asp:Label ID="lbl_upload" runat="server"></asp:Label></td>
        </tr>

    </table>

    <br />

    <center>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="ObjectDataSource1" ForeColor="Black" GridLines="Vertical">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
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
    </center>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataAllUpload" TypeName="DataSet_uploadTableAdapters.tbl_uploadTableAdapter"></asp:ObjectDataSource>

</asp:Content>

