<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Default.aspx.vb" Inherits="Tracking._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>MVL - MV Logistics Tracking status</title>
    <style type="text/css">
        .style1
        {
            width: 130px;
        }
        .style6
        {
            height: 26px;
        }
        .styleLabel
        {
            text-align:right ;
            color :CaptionText ;
            font-size : 14px;
            font-family : Tahoma ;
        }

        .styleText
        {
            text-align: left;
            color : Blue;
            font-size : 14px;
            font-family : Tahoma ;
        }
        .styleBtn
        {
            width: 130px;
            text-align: left;
            height: 26px;
            font-family : Tahoma ;
        }

        .style13
        {
            text-align: right;
            color : CaptionText;
            font-size : 14px;
            font-family : Tahoma;
            height: 21px;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table style="width:100%;" bgcolor="#FFCC99">
            <tr><td colspan="3" width="60%"><font color="#6699FF" size="16" 
                    style="font-family: 'Microsoft Sans Serif'; font-size: 16px; font-weight: bold; font-style: normal; color: #008080">ระบบงานงานสถานะการจัดส่ง - บริษัท เมืองวัสดุ จำกัด</font></td>
            <td class="style6" align ="right" >
                <asp:HyperLink ID="HyperLink1" runat="server">HyperLink</asp:HyperLink>
                <asp:Label ID="lblUserName" runat="server" Text="LoginName"></asp:Label>
                </td>
                </tr>

            <tr>
                <td width="10%" class="styleLabel">รหัสลูกค้า :</td>
                <td width="20%" class="styleText"><asp:TextBox ID="txtARCode" runat="server" MaxLength="10"></asp:TextBox></td>
                <td width="30%" class="style6"><asp:Label ID="lblStatus" runat="server" Text="สถานะ" ForeColor="Red"></asp:Label></td>
                <td class="style6" align="right" ><asp:Button ID="btnListALL" runat="server" Text="แสดงทุกรายการ" />
                <asp:Label ID="lblToday" runat="server" Text="dd-mm-yyyy"></asp:Label></td>
            </tr>
            <tr>
                <td width="10%" class="styleLabel">เลขที่ใบส่งของ :</td>
                <td width="20%" class="styleText"><asp:TextBox ID="txtDocNo" runat="server" MaxLength="20"></asp:TextBox></td>
                <td colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td width="10%" class="style1">&nbsp;</td>
                <td wisth-"20%" class="styleBtn">
                    <asp:Button ID="btnOK" runat="server" Text="ตกลง" />
                    <asp:Button ID="btnCancel" runat="server" Text="ยกเลิก" />
                </td>
                <td colspan="2">&nbsp;</td>
            </tr>

        </table>

    <table width="100%" bgcolor="#FFFFCC">
    <tr><td class="style13" colspan="3"></td></tr>
    <tr><td class="styleLabel" width="10%">เลขที่ใบส่งของ :</td>
    <td class="styleText" width="10%" bgcolor="#CCFFCC"><asp:Label ID="lblDocNo" runat="server"></asp:Label></td>
    <td class="styleLabel" width="10%">รายการ : </td>
        <td class="styleText" width="*" 
            bgcolor="#CCFFCC">
    <asp:Label ID="lblTitles" runat="server"></asp:Label></td></tr>
    <tr><td class="styleLabel">ลูกค้า :</td>
        <td class="styleText" colspan="3" 
            bgcolor="#CCFFCC">
    <asp:Label ID="lblAR" runat="server"></asp:Label></td></tr>
    </table>
    <hr />
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
    </form>

</body>
</html>
