<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin_MasterPage.master" AutoEventWireup="true" CodeFile="News.aspx.cs" Inherits="Admin_News" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <%--<table style="margin:0 auto; border-color:black; border-width:1px ; border-style:solid ; padding:10px; ">--%>
    <table>
        <tr>
            <td>عنوان مطلب :</td>

            <td><asp:TextBox ID="txt_title" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>متن مطلب :</td>

            <td><asp:TextBox ID="txt_desc" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>موضوع مطلب :</td>

            <td><asp:DropDownList ID="drp_catid" runat="server" Width="173px" AutoPostBack="True" DataSourceID="ObjectDataSource2" DataTextField="catname" DataValueField="catid">
                </asp:DropDownList>
                <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataAllcategory" TypeName="DataSet_categoryTableAdapters.categoryTableAdapter"></asp:ObjectDataSource>
            </td>
        </tr>
        <tr>
            <td>نویسنده مطلب :</td>

            <td><asp:TextBox ID="txt_writer" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>تصویر مطلب :</td>

            <td><asp:FileUpload ID="File_image" runat="server" /></td>
        </tr>
        <tr>
            <td><asp:Button ID="Btn_SendNews" runat="server" Text="ارسال مطلب" OnClick="Btn_SendNews_Click" /></td>
            <td><asp:Label ID="lbl_SendNews" runat="server" ></asp:Label></td>
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
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="DeleteNews" InsertMethod="InsertNews" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataAllNews" TypeName="DataSet_newsTableAdapters.newsTableAdapter" UpdateMethod="UpdateNews">
        <DeleteParameters>
            <asp:Parameter Name="newsid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="newstitle" Type="String" />
            <asp:Parameter Name="newsdesc" Type="String" />
            <asp:Parameter Name="newsdate" Type="DateTime" />
            <asp:Parameter Name="newsvisited" Type="Int32" />
            <asp:Parameter Name="newswriter" Type="String" />
            <asp:Parameter Name="newsimage" Type="String" />
            <asp:Parameter Name="newscatid" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="newstitle" Type="String" />
            <asp:Parameter Name="newsdesc" Type="String" />
            <asp:Parameter Name="newsdate" Type="DateTime" />
            <asp:Parameter Name="newsvisited" Type="Int32" />
            <asp:Parameter Name="newswriter" Type="String" />
            <asp:Parameter Name="newsimage" Type="String" />
            <asp:Parameter Name="newscatid" Type="Int32" />
            <asp:Parameter Name="newsid" Type="Int32" />
        </UpdateParameters>
    </asp:ObjectDataSource>




</asp:Content>

