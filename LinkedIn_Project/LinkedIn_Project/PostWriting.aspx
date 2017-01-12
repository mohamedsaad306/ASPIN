<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PostWriting.aspx.cs" Inherits="LinkedIn_Project.PostWriting" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title id="title">New Draft </title>
        <link  rel="icon" href="images/favicon.png"/>
        <link  rel="stylesheet" href="css/bootstrap.css"/>
        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </head>
    <body>
        <form id="form1" runat="server">
            <section id="bar">
                <img  src="images/favicon.png" id="logoimg"/><span  id="logotxt">PUBLISHING</span>
                <asp:Label ID="savedtxt" runat="server" Text="Saved" cssclass="txtstyle"></asp:Label>
                <div class="dropdown">
                  <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                    More
                    <span class="caret"></span>
                  </button>
                  <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
                    <li><a href="#">Start a new article</a></li>
                    <li><a href="#">Drafts</a></li>
                    <li><a href="#">Articles</a></li>
                    <li role="separator" class="divider"></li>
                    <li><a href="#">Help center</a></li>
                  </ul>
                </div>
                <asp:Button runat="server" CssClass="btn btn-primary btnpublish" text="Publish"  />
            </section>
            <section id="toolbar">
                <section id="centertools">
                    <%--<div class="dropdown">
                          <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Normal</button>
                           <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                <a class="dropdown-item" href="#">Heading1</a>
                                <a class="dropdown-item" href="#">Heading2 </a>
                                <a class="dropdown-item" href="#">Normal</a>
                           </div>
                  </div>--%>
                    <asp:DropDownList ID="dropdownMenuButton" runat="server" CssClass=" btn btn-secondary dropdown-toggle " data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <asp:ListItem>Heading 1</asp:ListItem>
                        <asp:ListItem>Heading 2</asp:ListItem>
                        <asp:ListItem Selected="True">Normal</asp:ListItem>
                    </asp:DropDownList>
                    <span>|</span>
                    <asp:HyperLink  runat="server" CssClass="glyphicon glyphicon-bold reset"></asp:HyperLink>
                    <asp:HyperLink  runat="server" CssClass="glyphicon glyphicon-italic reset"></asp:HyperLink>
                    <asp:HyperLink  runat="server" CssClass="glyphicon glyphicon-picture reset"></asp:HyperLink>
                    <span>|</span>



                    
                </section>
            </section>
            <section id="postcover"><img src="images/close.png" id="closeimg"/></section>
            <section id="posttext">
                <asp:TextBox ID="postheadline" runat="server" placeholder="Headline" CssClass="posthead"  MaxLength="150" TextMode="MultiLine" rows="4"  ></asp:TextBox>
            </section>
             
        </form>
        <script src="js/postplugin.js"></script>
    </body>
</html>
