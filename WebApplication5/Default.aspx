<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication5._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <%--<div class="jumbotron">
        <h1>ASP.NET</h1>
        <p class="lead">ASP.NET is a free web framework for building great Web sites and Web applications using HTML,CSS, and JavaScript.</p>
        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>--%>

    <%--<div class="row">
        <div class="col-md-4">
            <h2>Getting started</h2>
            <p>
                ASP.NET Web Forms lets you build dynamic websites using a familiar drag-and-drop, event-driven model.
            A design surface and hundreds of controls and components let you rapidly build sophisticated, powerful UI-driven sites with data access.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301948">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Get more libraries</h2>
            <p>
                NuGet is a free Visual Studio extension that makes it easy to add, remove, and update libraries and tools in Visual Studio projects.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301949">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Web Hosting</h2>
            <p>
                You can easily find a web hosting company that offers the right mix of features and price for your applications.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>
            </p>
        </div>
    </div>--%>
    
    <%--<div class="text-center">
    <h1 class="display-4">Exchange</h1>
        
        
        <span>Amount:</span>
        <asp:Textbox id="Amount" runat ="server"/>
        <select id="Current" name="Current" >
            <option value="USD">USD</option>
            <option value="EUR">EUR</option>
            <option value="GBP">GBP</option>
            <option value="CHF">CHF </option>
        </select>
    
    
      
       
    
        <span>Converted To:</span>
        <asp:Textbox id="Textbox2" runat ="server"/>
        <asp:DropDownList  id="Converted" runat ="server" >        
            <asp:ListItem value="USD">USD</asp:ListItem>
            <asp:ListItem value="EUR">EUR</asp:ListItem>
            <asp:ListItem value="GBP">GBP</asp:ListItem>
            <asp:ListItem value="CHF">CHF </asp:ListItem>
           
        </asp:DropDownList>
  
            
</div>
  <asp:Button id="Button1"
           Text="Converted."
           OnClick="Unnamed_Click" 
           runat="server"/>
    --%>


    <div class="jumbotron">
    <p>
        <span class=bld>
    <asp:Label ID="lbl_Amount" runat="server" Text="Amount"></asp:Label>
<asp:TextBox ID="txt_amount" runat="server"></asp:TextBox>

<asp:Label ID="lbl_FromCurrency" runat="server" Text="From Currency"></asp:Label>
<%--<asp:TextBox ID="txt_fromCurrency" runat="server"></asp:TextBox>--%>
           <asp:DropDownList  id="txt_fromCurrency" runat ="server" >        
            <asp:ListItem value="USD">USD</asp:ListItem>
            <asp:ListItem value="EUR">EUR</asp:ListItem>
            <asp:ListItem value="GBP">GBP</asp:ListItem>
            <asp:ListItem value="CHF">CHF </asp:ListItem>
           
        </asp:DropDownList>

<asp:Label ID="lbl_toCurrency" runat="server" Text="To Currency"></asp:Label>
<%--<asp:TextBox ID="txt_ToCurrency" runat="server"></asp:TextBox>--%>
         <%-- <asp:TextBox ID="txt_amount1" runat="server"></asp:TextBox>--%>
            <asp:DropDownList  id="Converted" runat ="server" >        
            <asp:ListItem value="EUR">EUR</asp:ListItem>
            <asp:ListItem value="USD">USD</asp:ListItem>
            <asp:ListItem value="GBP">GBP</asp:ListItem>
            <asp:ListItem value="CHF">CHF </asp:ListItem>
           
        </asp:DropDownList>
<asp:Label ID="lbl_value" runat="server" Text=""></asp:Label>
<asp:Button ID="Btn_Convert" runat="server" Text="Convert" OnClick="Convert"/>
            <br />
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1"
    ControlToValidate="txt_amount" runat="server"
    ErrorMessage="Only Numbers allowed"
    ValidationExpression="\d+">
</asp:RegularExpressionValidator>
<br />
<asp:Label ID="lblResult" runat="server" Text="1USA = 0.85 EUR"></asp:Label> <asp:Label ID="V" runat="server" Text=""></asp:Label>
<br />
    <asp:Label ID="Label1" runat="server" Text="History"></asp:Label>
            </span>
        </div>
</asp:Content>
