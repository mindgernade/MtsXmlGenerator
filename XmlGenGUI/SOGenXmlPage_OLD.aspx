<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SOGenXmlPage.aspx.cs" Inherits="XmlGenGUI.Controllers.SOGenXmlPage" UnobtrusiveValidationMode="None" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../Content/Site.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <h1 style="text-align: center;"><span style="color: #045fb4;">Service Order XML Generator</span></h1>
    <div >
    <form method="post" action="SOGenXmlPage.aspx" runat="server">
        <table id="table1">
            <tr>
                <td>NMI:</td>
                <td><input id="nmi" size="10" type="text" runat="server"/> </td>
                <td>
                    <asp:RequiredFieldValidator ID="NmiSumEmptyValidator" runat="server" ControlToValidate ="nmi" ForeColor="Red" ErrorMessage="*"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="nmi" ErrorMessage="NMI must be a unique 10 digit number" ForeColor="Red" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>Checksum:</td>
                <td><input id="checkSum" size="10" type="text" runat="server" /></td>
                <td>
                    <asp:RequiredFieldValidator ID="CheckSumEmptyValidator" runat="server" ControlToValidate ="checkSum" ForeColor="Red" ErrorMessage="*"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="CheckSumValidator" runat="server" ControlToValidate="checkSum" ErrorMessage="Checksum must be a 1 digit number" ForeColor="Red" ValidationExpression="\d{1}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <select id="toDrop" runat="server">
                        <option value="ToPOWERCOR">Powercor</option>
                        <option value="ToPOWCP">PowCP</option>
                    </select>
                </td>
                <td>
                    <select id="fromDrop" runat="server">
                        <option value="FromPOWERCOR">Powercor</option>
                        <option value="FromPOWCP">PowCP</option>
                    </select>
                </td>
            </tr>
        </table>
        <br />
        <div style="text-align:center">
            <asp:Button id="Button1" Text="Generate XML" runat="server" OnClick="Submit_Click"/>
        </div>
    </form>
    </div>
</body>
</html>
