<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="search.aspx.cs" Inherits="search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
    <asp:DataList ID="DataList1" runat="server" DataKeyField="newsid" DataSourceID="SqlDataSource1">
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
            
<%--            newsid:
            <asp:Label ID="newsidLabel" runat="server" Text='<%# Eval("newsid") %>' />
            <br />
            newstitle:
            <asp:Label ID="newstitleLabel" runat="server" Text='<%# Eval("newstitle") %>' />
            <br />
            newsdesc:
            <asp:Label ID="newsdescLabel" runat="server" Text='<%# Eval("newsdesc") %>' />
            <br />
            newsdate:
            <asp:Label ID="newsdateLabel" runat="server" Text='<%# Eval("newsdate") %>' />
            <br />
            newsvisited:
            <asp:Label ID="newsvisitedLabel" runat="server" Text='<%# Eval("newsvisited") %>' />
            <br />
            newswriter:
            <asp:Label ID="newswriterLabel" runat="server" Text='<%# Eval("newswriter") %>' />
            <br />
            newsimage:
            <asp:Label ID="newsimageLabel" runat="server" Text='<%# Eval("newsimage") %>' />
            <br />
            newscatid:
            <asp:Label ID="newscatidLabel" runat="server" Text='<%# Eval("newscatid") %>' />
            <br />--%>
<br />
        </ItemTemplate>
    </asp:DataList>
    </center>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" SelectCommand="SELECT * FROM [news] WHERE ([newsdesc] LIKE '%' + @newsdesc + '%') ORDER BY [newsid] DESC">
        <SelectParameters>
            <asp:QueryStringParameter Name="newsdesc" QueryStringField="search" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

