<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="Pricing.aspx.cs" Inherits="Project.Pricing" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="text-align: center; margin: 50px auto; max-width: 90%;">
        <h1 style="color: #2c3e50; font-size: 50px; font-weight: bold; margin-bottom: 30px;">
            Package Details
        </h1>

        <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal">
            <ItemTemplate>
                <div style="
                    background: #fff;
                    display: inline-block;
                    width: 300px;
                    margin: 20px;
                    padding: 20px;
                    border-radius: 10px;
                    box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
                    text-align: center;
                    transition: transform 0.3s ease-in-out;">
                    
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Image") %>' 
                        Style="width: 100px; height: 50px; border-radius: 10px;" />
                    
                    <div style="margin-top: 15px;">
                        <p style="color: #34495e; font-size: 18px; font-weight: 500; margin: 10px 0;">
                            <strong>Name:</strong> 
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                        </p>
                        <p style="color: #34495e; font-size: 18px; font-weight: 500; margin: 10px 0;">
                            <strong>Photos:</strong> 
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("Photos") %>'></asp:Label>
                        </p>
                        <p style="color: #34495e; font-size: 18px; font-weight: 500; margin: 10px 0;">
                            <strong>Retouch:</strong> 
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Retouchphoto") %>'></asp:Label>
                        </p>
                        <p style="color: #34495e; font-size: 18px; font-weight: 500; margin: 10px 0;">
                            <strong>Makeup:</strong> 
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Makeup") %>'></asp:Label>
                        </p>
                        <p style="font-size: 24px; color: #e74c3c; font-weight: bold;">
                            ₹<asp:Label ID="Label4" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                        </p>
                        <p style="font-size: 24px; color: #e74c3c; font-weight: bold;">
                            <asp:Button ID="Button1" runat="server" Text="Inquiry" OnClick="Button1_Click"></asp:Button>
                        </p>
                    </div>
                </div>
            </ItemTemplate>
        </asp:DataList>
    </div>
</asp:Content>
