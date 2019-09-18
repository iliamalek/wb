<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>سایت گروه مهندسی هوش مصنوعی ایلیا</title>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <center>
    <asp:DataList ID="DataList1" runat="server" DataSourceID="ObjectDataSource1">

        <ItemTemplate>

        
            <div class="bdnlb"><h4><a href="<%# Eval("newsid","shownews.aspx?nid={0}") %>" title="<%# Eval("newstitle") %>" target="_blank"><%# Eval("newstitle") %></a></h4></div>
            <div class="bdnlv">
                
                <img src="<%# Eval("newsimage","Upload_img/{0}") %>" alt="<%# Eval("newstitle") %>" title="<%# Eval("newstitle") %>" width="300px" height="300px" />
                <br />
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("newsdesc") %>'></asp:Label>
                <br />
                <br />
                <a href="<%# Eval("newsid","shownews.aspx?nid={0}") %>" title="<%# Eval("newstitle") %>" target="_blank"><div class="more">ادامه مطلب</div></a>
                <br />

            </div> <%--bdnlv--%>
            <br />
            <div class="bdnlp"></div>


        </ItemTemplate>
        
    </asp:DataList>
    </center>
    
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" 
        SelectMethod="GetDataAllNews" TypeName="DataSet_newsTableAdapters.newsTableAdapter"></asp:ObjectDataSource>
</asp:Content>

