<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="showcat.aspx.cs" Inherits="showcats" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <center>
    <asp:DataList ID="DataList3" runat="server" DataSourceID="ObjectDataSource1">

        <ItemTemplate>

        
            <div class="bdnlb"><h4><a href="<%# Eval("newsid","shownews.aspx?nid={0}") %>" title="<%# Eval("newstitle") %>" target="_blank"><%# Eval("newstitle") %></a></h4></div>
            <div class="bdnlv">
                
                <img src="<%# Eval("newsimage","Upload_img/{0}") %>" alt="<%# Eval("newstitle") %>" title="<%# Eval("newstitle") %>" width="300px" height="300px" />
                <br /> <br />
                شرح:
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("newsdesc") %>'></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp
                تاریخ:
                <asp:Label ID="Label2" runat="server" Text='<%# Eval("newsdate") %>'></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp
                تعداد بازدید:
                <asp:Label ID="Label3" runat="server" Text='<%# Eval("newsvisited") %>'></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp
                نویسنده:
                <asp:Label ID="Label4" runat="server" Text='<%# Eval("newswriter") %>'></asp:Label>



            </div> <%--bdnlv--%>
            <br />
            <div class="bdnlp"></div>


        </ItemTemplate>

    </asp:DataList>
    </center>

    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
        OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataNewsByCatid" 
        TypeName="DataSet_newsTableAdapters.newsTableAdapter">
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="1" Name="newscatid" QueryStringField="cid" Type="Int32" />
        </SelectParameters>
    </asp:ObjectDataSource>


</asp:Content>

