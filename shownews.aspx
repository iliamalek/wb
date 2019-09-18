<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="shownews.aspx.cs" Inherits="shownews" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
    <asp:DataList ID="DataList2" runat="server" DataSourceID="ObjectDataSource1">
        
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
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataNewsByNewsid" TypeName="DataSet_newsTableAdapters.newsTableAdapter">
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="1" Name="newsid" QueryStringField="nid" Type="Int32" />
        </SelectParameters>
    </asp:ObjectDataSource>






    <br />
    <br />
    <asp:DataList ID="DataList1" runat="server" DataSourceID="ObjectDataSource2">

        <ItemTemplate>

            <div style="width:730px; height:160px; background-image:url(img/comment-back.png); background-repeat:no-repeat">

                <div style="width:730px; height:60px; background-image:url(img/comment-bala.png); background-repeat:no-repeat">
                    <div style="width:50px; height:50px; float:right"></div>
                    <div style="width:660px; height:30px; float:left; text-align:right;font-size:20px"><%# Eval("comusername") %></div>
                    <div style="width:660px; height:20px; float:left; text-align:right;font-size:10px"><%# Eval("comdate") %></div>
                </div>

                <div style="width:730px; height:100px; float:right; text-align:right;font-size:12px ;padding-top:10px;padding-right:20px"><%# Eval("comtext") %></div>
            </div>
                
<%--            نام:
            <asp:Label ID="Label1" runat="server" Text='<%# Eval("comusername") %>'></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp
            ایمیل:
            <asp:Label ID="Label2" runat="server" Text='<%# Eval("comemail") %>'></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp
            نظر:
            <asp:Label ID="Label3" runat="server" Text='<%# Eval("comtext") %>'></asp:Label>--%>

        </ItemTemplate>

    </asp:DataList>            
    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataAllComByNewsid" TypeName="DataSet_commentTableAdapters.tbl_commentTableAdapter">
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="1" Name="comnewsid" QueryStringField="nid" Type="Int32" />
        </SelectParameters>
    </asp:ObjectDataSource>
    <br />
    <br />

    <table>
        <tr>
            <td>نام:</td>
            <td><asp:TextBox ID="txt_name" runat="server"></asp:TextBox></td>
            <%--<td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="نام خود را وارد کنید" ControlToValidate="txt_name"></asp:RequiredFieldValidator></td>--%>
        </tr>
        <tr>
            <td>ایمیل:</td>
            <td><asp:TextBox ID="txt_email" runat="server"></asp:TextBox></td>
            <%--<td><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="ایمیل معتبر وارد کنید" ControlToValidate="txt_email"></asp:RegularExpressionValidator></td>--%>
        </tr>
        <tr>
            <td>دیدگاه:</td>
            <td><asp:TextBox ID="txt_comment" runat="server" TextMode="MultiLine"></asp:TextBox></td>
            <%--<td><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="نظرتان را وارد کنید" ControlToValidate="txt_comment"></asp:RequiredFieldValidator></td>--%>
        </tr>
        <tr>
            <td><asp:Button ID="btn_submitcmnt" runat="server" Text="ارسال دیدگاه" OnClick="btn_submitcmnt_Click" /></td>
            <td><asp:Label ID="lbl_comment" runat="server"></asp:Label></td>
        </tr>
    </table>

</asp:Content>

