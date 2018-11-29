<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SOGenXmlPage.aspx.cs" Inherits="XmlGenGUI.Controllers.SOGenXmlPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <h1 style="text-align: center;"><span style="color: #045fb4;">Service Order XML Generator</span></h1>
    <div style="text-align: center;">
    <form method="post" action="SOGenXmlPage.aspx" runat="server">
        NMI: <input id="nmi" size="10" type="text" runat="server"/>
        &nbsp;Checksum: <input id="checkSum" size="1" type="text" runat="server" />
        

        <select id="toDrop" runat="server">
        <option value="ToPOWERCOR">Powercor</option>
        <option value="ToPOWCP">PowCP</option>

        </select>&nbsp;From:&nbsp;

        <select id="fromDrop" runat="server">
        <option value="FromPOWERCOR">Powercor</option>
        <option value="FromPOWCP">PowCP</option>
        </select>

        <asp:Button  id="btnSubmit" Text="Generate XML" runat="server" OnClick="Submit_Click"/>

    </form>
    </div>
</body>
</html>
