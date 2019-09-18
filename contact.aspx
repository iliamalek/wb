<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <div class="bdnlb"><h4>تماس با ما</h4></div>
    <br />
    <br />
    <div class="bdnlv">

        <center>
            <table>
                <tr>
                    <td>نام و نام خانوادگی:</td>
                    <td><asp:TextBox ID="txt_name" runat="server"></asp:TextBox></td>
                    <%--<td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="لطفأ نام ونام خانوادگی را وارد کنید" ControlToValidate="txt_name" ForeColor="#CC0000"></asp:RequiredFieldValidator></td>--%>
                </tr>
                <tr>
                    <td>پست الکترونیکی:</td>
                    <td><asp:TextBox ID="txt_email" runat="server"></asp:TextBox></td>
                    <%--<td><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt_email" ErrorMessage="ایمیل نامعتبر میباشد" ForeColor="#CC0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></td>--%>
                </tr>
                <tr>
                    <td>موضوع پیام:</td>
                    <td><asp:TextBox ID="txt_title" runat="server"></asp:TextBox></td>
                    <%--<td><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_title" ErrorMessage="لطفأموضوع پیام خود را وارد فرمایید" ForeColor="#CC0000"></asp:RequiredFieldValidator></td>--%>
                </tr>
                <tr>
                    <td>پیغام شما:</td>
                    <td><asp:TextBox ID="txt_desc" runat="server" TextMode="MultiLine" Height="278px" Width="375px"></asp:TextBox></td>
                    <%--<td><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_desc" ErrorMessage="لطفأ پیام خود را وارد فرمایید" ForeColor="#CC0000"></asp:RequiredFieldValidator></td>--%>
                </tr>
                <tr>
<%--                    <td> &nbsp;&nbsp;&nbsp;&nbsp  </td>
                    <td> &nbsp;&nbsp;&nbsp;&nbsp  </td>--%>
                </tr>
                <tr>
                    <td><asp:Button ID="btn_contact" runat="server" Text="ارسال پیام" Width="115px" Height="37px" OnClick="btn_contact_Click" /></td>
                    <td><asp:Label ID="lbl_contact" runat="server" ForeColor="#009900"></asp:Label></td>
                </tr>
            </table>

            
            

        </center>
    </div> <%--bdnlv--%>
    <br />
    <div class="bdnlp"></div>

</asp:Content>

