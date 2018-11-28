<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SOGenXmlPage.aspx.cs" Inherits="XmlGenGUI.Controllers.SOGenXmlPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <h1 style="text-align: center;"><span style="color: #045fb4;">Service Order XML Generator</span></h1>
    <p style="text-align: center;">NMI: <input name="nmi" size="10" type="text" />&nbsp;Checksum: <input size="1/" type="text" /></p>

    <p style="text-align: center;">To:&nbsp;<select>
    <option value="ToPOWERCOR">Powercor</option>
    <option value="ToPOWCP">PowCP</option>

    </select>&nbsp;From:&nbsp;<select>
    <option value="FromPOWERCOR">Powercor</option>
    <option value="FromPOWCP">PowCP</option>
    </select></p>
    
    <form runat="server">
        <p style="text-align: center;">
        <asp:Button  id="btnSubmit" Text="Generate XML" runat="server" OnClick="Submit_Click"/>

    </form>
    
</body>
</html>
