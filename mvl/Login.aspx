<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Login.aspx.vb" Inherits="Tracking.Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    <table cellspacing="0" cellpadding="0" width="100%" border="0">
        <tbody>
            <tr>
                <td>&nbsp;
                    </td>
            </tr>
            <tr>
                <td>&nbsp;
                    </td>
            </tr>
            <tr>
                <td valign="center" align="middle">
                        <table bordercolor="#000000" cellspacing="0" cellpadding="0" width="47%" align="center" border="1">
                            <tbody>
                                <tr>
                                    <td align="center" >
                                        <table cellspacing="4" cellpadding="3" width="100%"  border="0" 
                                            bgcolor="#CCCCCC">
                                            <tbody>
                                                <tr>
                                                    <td nowrap="nowrap" colspan="2">
                                                        <img height="40" src="keys.jpg" width="36" /><font face="Verdana, Arial, Helvetica, sans-serif" color="#000000" size="2"><strong>Please
                                                        ป้อนชื่อผู้ใช้งาน(UserID) และรหัส(Password) ให้ถูกต้อง</strong></font></td>
                                                </tr>
                                                <tr>
                                                    <td>&nbsp;
                                                        </td>
                                                    <td>&nbsp;
                                                        </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <div align="right"><font face="Verdana, Arial, Helvetica, sans-serif" size="2">User
                                                            ID:</font>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <asp:textbox id="txtUserID" runat="server" TextMode="SingleLine" MaxLength="20"></asp:textbox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <div align="right"><font face="Verdana, Arial, Helvetica, sans-serif" size="2">Password:</font>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <asp:textbox id="txtUserPassword" runat="server" TextMode="Password"></asp:textbox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>&nbsp;
                                                        </td>
                                                    <td>
                                                   
                                                        <asp:button ID="btnSubmit" runat="server" Text="Submit"></asp:button>
                                                        <asp:button id="btnClear" runat="server" Text="Reset"></asp:button>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>&nbsp;
                                                        </td>
                                                    <td>&nbsp;
                                                        </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    <br />
                    <asp:Label id="lbl_track" runat="server"></asp:Label></td>
            </tr>
        </tbody>
    </table>
    
    </div>
    </form>
</body>
</html>
