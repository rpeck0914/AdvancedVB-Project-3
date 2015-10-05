<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="TabSimulationForm.aspx.vb" Inherits="TabSimulationForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="TabSimulationStyleSheet.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Panel ID="TabPanel" CssClass="TabPanel" runat="server">
            <asp:Button ID="CalendarButton" runat="server" Text="Calendar" OnClick="CalendarButton_Click" Height="60px" Width="150px" />
            <asp:Button ID="TableButton" runat="server" Text="Table" OnClick="TableButton_Click" Height ="60px" Width="150px" />
            <asp:Button ID="ImageButton" runat="server" Text="Image" OnClick="ImageButton_Click" Height ="60px" Width="150px" />
            <asp:Button ID="CalculatorButton" runat="server" Text="Calculator" OnClick="CalculatorButton_Click" Height ="60px" Width="150px" />
        </asp:Panel>
        <p></p>

        <asp:Label ID="ErrorLabel" runat="server" Text=""></asp:Label>

        <asp:Panel ID="CalendarPanel" CssClass="CalendarPanel" runat="server">
            <h1>Calendar</h1>
            <asp:Calendar ID="Calendar1" runat="server" Height="840px" Width="1900px"></asp:Calendar>
        </asp:Panel>

        <asp:Panel ID="TablePanel" CssClass="TablePanel" runat="server">
            <h1>Table</h1>
            <p></p>
            <table style="width: 100%;">
                <tr>
                    <td>&nbsp;Pizza</td>
                    <td>&nbsp;Water</td>
                    <td>&nbsp;Fries</td>
                </tr>
                <tr>
                    <td>&nbsp;Hamburger</td>
                    <td>&nbsp;Pop</td>
                    <td>&nbsp;Corn</td>
                </tr>
                <tr>
                    <td>&nbsp;Spagehtti</td>
                    <td>&nbsp;Beer</td>
                    <td>&nbsp;Rice</td>
                </tr>
            </table>
        </asp:Panel>

        <asp:Panel ID="ImagePanel" CssClass="ImagePanel" runat="server">
            <h1>Image</h1>
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Circuit.png" Height="850px" Width="1900px" />
        </asp:Panel>

        <asp:Panel ID="CalculatorPanel" CssClass="CalculatorPanel" runat="server">
            <h1>Simple Calculator</h1>
            Please Insert In Two Integers Into The Textboxes
            <p></p>
            <asp:Label ID="Label1" runat="server" Text="First Number: "></asp:Label>
            <asp:TextBox ID="FirstNumberTextBox" runat="server"></asp:TextBox>
            <asp:Label ID="Label2" runat="server" Text="  Second Number: "></asp:Label>
            <asp:TextBox ID="SecondNumberTextBox" runat="server"></asp:TextBox>
            <p></p>
            <asp:Button ID="AddButton" runat="server" Text="Add" OnClick="AddButton_Click" />
            <asp:Button ID="SubtractButton" runat="server" Text="Subtract" OnClick="SubtractButton_Click" />
            <asp:Button ID="MultiplyButton" runat="server" Text="Multiply" OnClick="MultiplyButton_Click" />
            <asp:Button ID="DivideButton" runat="server" Text="Divide" OnClick="DivideButton_Click" />
            <p></p>
            <asp:Label ID="OutputLabel" runat="server" Text=""></asp:Label>
        </asp:Panel>
    </form>
</body>
</html>
