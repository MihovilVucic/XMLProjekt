<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Stranica.aspx.cs" Inherits="Test.Stranica" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 842px">
    <form id="form1" runat="server">
        <div style="width: 1000px; margin-left: 300px;">
            <h2>Base64 Converter&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="LabelHiddenEncode" runat="server" Text="HiddenEncode" Visible="False"></asp:Label>
&nbsp;&nbsp;&nbsp;
                <asp:Label ID="LabelHiddenDecode" runat="server" Text="HiddenDecode" Visible="False"></asp:Label>
            </h2>
            <asp:Button ID="ButtonEncode" runat="server" OnClick="ButtonEncode_Click" Text="Base64Enkodiraj" Height="30px" Width="150px" BorderColor="#000066" BorderStyle="Solid" BorderWidth="2px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="ButtonDecode" runat="server" OnClick="ButtonDecode_Click" Text="Base64Dekodiraj" Height="30px" Width="150px" BorderColor="#000066" BorderStyle="Solid" BorderWidth="2px" />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;
            <asp:Label ID="LabelInput" runat="server" BorderStyle="None" Text="Unos"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="LabelOutput" runat="server" Text="Rezultat"></asp:Label>
            <br />
            <asp:TextBox ID="TextBoxInput" runat="server" Height="200px" Width="250px" BorderColor="#000066" BorderStyle="Solid" BorderWidth="2px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBoxOutput" runat="server" Height="200px" Width="250px" BorderColor="#000066" BorderStyle="Solid" BorderWidth="2px"></asp:TextBox>
            <br />
            <br />
            Ako Vam je naša aplikacija pomogla, molim Vas ispunite kratku,<br />
            anonimnu anketu koja će nam dati bolji uvid u potrebe naših korisnika.<br />
            Unaprijed hvala!<br />
            <br />
            <br />
&nbsp;<asp:Label ID="LabelGodine" runat="server" Text="Godine"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <asp:Label ID="LabelTitle" runat="server" Text="Poslovna titula (ako ste zaposleni) "></asp:Label>
&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <asp:TextBox ID="TextBoxGodine" runat="server" BorderColor="#000066" BorderStyle="Solid" BorderWidth="2px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBoxTitle" runat="server" BorderColor="#000066" BorderStyle="Solid" BorderWidth="2px"></asp:TextBox>
            <br />
            <br />
&nbsp;<asp:Label ID="LabelSpol" runat="server" Text="Spol"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Panel ID="Panel1" runat="server" Height="65px" Width="107px" BorderColor="#000066" BorderStyle="Dashed" BorderWidth="2px">
                <asp:RadioButton ID="RadioButtonFemale" runat="server" GroupName="Spol" Text="Ženski" />
                <br />
                <asp:RadioButton ID="RadioButtonMale" runat="server" GroupName="Spol" Text="Muški" />
                <br />
                <asp:RadioButton ID="RadioButtonUnknown" runat="server" Checked="True" GroupName="Spol" Text="Nepoznat" />
            </asp:Panel>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="ButtonSubmit" runat="server" OnClick="ButtonSubmit_Click" Text="Pošalji" BorderColor="#000066" BorderStyle="Solid" BorderWidth="2px" />
            
        </div>
    </form>
</body>
</html>
