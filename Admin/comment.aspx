<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin_MasterPage.master" AutoEventWireup="true" CodeFile="comment.aspx.cs" Inherits="Admin_comment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

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
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="DeleteComment" InsertMethod="InsertComment" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataAllComByDate" TypeName="DataSet_commentTableAdapters.tbl_commentTableAdapter" UpdateMethod="UpdateComment">
        <DeleteParameters>
            <asp:Parameter Name="comid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="comusername" Type="String" />
            <asp:Parameter Name="comemail" Type="String" />
            <asp:Parameter Name="comdate" Type="DateTime" />
            <asp:Parameter Name="comtext" Type="String" />
            <asp:Parameter Name="comapproved" Type="Boolean" />
            <asp:Parameter Name="comnewsid" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="comusername" Type="String" />
            <asp:Parameter Name="comemail" Type="String" />
            <asp:Parameter Name="comdate" Type="DateTime" />
            <asp:Parameter Name="comtext" Type="String" />
            <asp:Parameter Name="comapproved" Type="Boolean" />
            <asp:Parameter Name="comnewsid" Type="Int32" />
            <asp:Parameter Name="comid" Type="Int32" />
        </UpdateParameters>
    </asp:ObjectDataSource>



    <br />
    <center>
        <asp:Label ID="Label1" runat="server" Text="ارسال نظر:"></asp:Label>
    </center>
    <br />

    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AllowPaging="True" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="ObjectDataSource2" DefaultMode="Insert" ForeColor="Black" GridLines="Vertical">
        <AlternatingRowStyle BackColor="White" />
        <EditRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
    </asp:DetailsView>

    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" InsertMethod="InsertComment" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataAllComByDate" TypeName="DataSet_commentTableAdapters.tbl_commentTableAdapter">
        <InsertParameters>
            <asp:Parameter Name="comusername" Type="String" />
            <asp:Parameter Name="comemail" Type="String" />
            <asp:Parameter Name="comdate" Type="DateTime" />
            <asp:Parameter Name="comtext" Type="String" />
            <asp:Parameter Name="comapproved" Type="Boolean" />
            <asp:Parameter Name="comnewsid" Type="Int32" />
        </InsertParameters>
    </asp:ObjectDataSource>
    <br />
    <center>
        <asp:Button ID="btn_refresh" runat="server" Text="بروزرسانی صفحه" Width="206px" OnClick="btn_refresh_Click" />
    </center>
</asp:Content>

