<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="View.ascx.cs" Inherits="JS.Modules.JSTestimonials.View" %>
<%@ Register TagName="label" TagPrefix="dnn" Src="~/controls/LabelControl.ascx" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.Client.ClientResourceManagement" Assembly="DotNetNuke.Web.Client" %>

<dnn:DnnCssInclude ID="bxSliderCss" runat="server" FilePath="//cdnjs.cloudflare.com/ajax/libs/bxslider/4.2.5/jquery.bxslider.min.css" />
<dnn:DnnCssInclude ID="fontAwesomeCss" runat="server" FilePath="//cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css" />



<div class="JSTestimonials">
    <div class="view">

        <%--FIRST CONTROLS--%>
        <asp:Panel ID="pnlFirstButton" runat="server" CssClass="btn-group">
            <asp:HyperLink ID="lnkFirstButton" runat="server" CssClass="btn btn-primary link-add"
                ResourceKey="lnkFirstButton" />
        </asp:Panel>

        <%--EDIT MODE GROUP BUTTONS--%>
        <asp:Panel ID="pnlAdmin" runat="server" Visible="true" CssClass="pnl-admin">
            <div class="btn-group" role="group" aria-label="Control buttons">
                <asp:Label ID="lblContentHolder" runat="server" />
                <asp:Label ID="lblContentHolderActivate" runat="server" />

                <asp:LinkButton ID="lnkCheckLicenseKey" runat="server"
                    OnClick="lnkCheckLicenseKey_Click" />
                <asp:LinkButton ID="lnkGetOwnerInfo" runat="server"
                    OnClick="lnkMoreInfo_Click" />

                <%--<asp:HyperLink ID="lnkAdd" runat="server" CssClass="btn btn-primary link-add no-txt"
                ResourceKey="lnkAdd" ToolTip="Add Testimonial Entry" />--%>
                <%--<asp:HyperLink ID="lnkEdit" runat="server" CssClass="btn btn-primary link-list no-txt"
                ResourceKey="lnkEdit" ToolTip="Edit Category Lists" />
            <asp:HyperLink ID="lnkManage" runat="server" CssClass="btn btn-primary link-settings no-txt"
                ResourceKey="lnkManage" ToolTip="Manage Categories" />--%>
                <%--<asp:HyperLink ID="lnkSettings" runat="server" CssClass="btn btn-primary link-settings no-txt"
                    ResourceKey="lnkSettings" ToolTip="Settings" />--%>
            </div>
        </asp:Panel>


        <asp:Repeater ID="rptTestimonials" runat="server">
            <ItemTemplate>
            </ItemTemplate>
        </asp:Repeater>

        <h4 style="border-bottom: 1px solid #ddd;">Templates Box using ASP Controls</h4>

        <div class="row" style="margin-top: 15px;">
            <%--TESTIMONIAL TEMPLATES--%>
            <asp:Panel ID="pnlTestimonialsItem" runat="server" CssClass="testimonials-item col-sm-6 col-md-4">
                <asp:Panel ID="pnlBox" runat="server" CssClass="bubble-box img-64">
                    <asp:Panel ID="pnlAuthorBox" runat="server" CssClass="author-box top-left">
                        <asp:Label ID="lblImageHolder" runat="server">
                            <asp:Image ID="imgAuthor" runat="server" CssClass="circle"
                                ImageUrl="~/DesktopModules/JSTestimonials/Images/me_ups.jpg" />
                        </asp:Label>
                        <asp:Label ID="lblAuthorName" runat="server" CssClass="author">Author name</asp:Label>
                        <span class="web">
                            <asp:HyperLink ID="lnkWebAuthor" runat="server" NavigateUrl="#">Position, Company</asp:HyperLink>
                        </span>
                        <asp:Label ID="lblRating" runat="server" CssClass="rating link-5-star no-txt"></asp:Label>
                    </asp:Panel>
                    <asp:Panel ID="pnlContentBox" runat="server" CssClass="content-box squared bottom-left">
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                    </asp:Panel>
                </asp:Panel>
            </asp:Panel>
        </div>

        <h4 style="border-bottom: 1px solid #ddd;">Simple Box</h4>
        <div class="row" style="margin-top: 15px;">
            <asp:Panel ID="item0_1" runat="server" CssClass="testimonials-item col-sm-6 col-md-4">
                <div class="simple-box img-64">
                    <div class="author-box top-left">
                        <span>
                            <img alt="" src="<%= ModulePath %>Images/me_ups.jpg" class="circle" />
                        </span>
                        <span class="author">Author name</span>
                        <span class="web">
                            <a href="#">Position, Company</a>
                        </span>
                        <span class="rating link-5-star no-txt"></span>
                    </div>
                    <div class="content-box squared bottom-left link-quote-left link-quote-right">
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                    </div>
                </div>
            </asp:Panel>
            <asp:Panel ID="item0_2" runat="server" CssClass="testimonials-item col-sm-6 col-md-4">
                <div class="simple-box img-64">
                    <div class="author-box top-center">
                        <span>
                            <img alt="" src="<%= ModulePath %>Images/me_ups.jpg" class="squared" />
                        </span>
                        <span class="author">Author name</span>
                        <span class="web">
                            <a href="#">Position, Company</a>
                        </span>
                        <span class="rating link-5-star no-txt"></span>
                    </div>
                    <div class="content-box squared bottom-center link-quote-left">
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                    </div>
                </div>
            </asp:Panel>
            <asp:Panel ID="item0_3" runat="server" CssClass="testimonials-item col-sm-6 col-md-4">
                <div class="simple-box img-64">
                    <div class="author-box top-right">
                        <span>
                            <img alt="" src="<%= ModulePath %>Images/me_ups.jpg" class="squared" />
                        </span>
                        <span class="author">Author name</span>
                        <span class="web">
                            <a href="#">Position, Company</a>
                        </span>
                        <span class="rating link-5-star no-txt"></span>
                    </div>
                    <div class="content-box squared bottom-right link-quote-left">
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                    </div>
                </div>
            </asp:Panel>

            <asp:Panel ID="item0_4" runat="server" CssClass="testimonials-item col-sm-6 col-md-4">
                <div class="simple-box img-64">
                    <div class="content-box squared top-left link-quote-left">
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                    </div>
                    <div class="author-box bottom-left">
                        <span>
                            <img alt="" src="<%= ModulePath %>Images/me_ups.jpg" class="circle" />
                        </span>
                        <span class="author">Author name</span>
                        <span class="web">
                            <a href="#">Position, Company</a>
                        </span>
                        <span class="rating link-5-star no-txt"></span>
                    </div>
                </div>
            </asp:Panel>
            <asp:Panel ID="item0_5" runat="server" CssClass="testimonials-item col-sm-6 col-md-4">
                <div class="simple-box img-64">
                    <div class="content-box squared top-center link-quote-left">
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                    </div>
                    <div class="author-box bottom-center">
                        <span>
                            <img alt="" src="<%= ModulePath %>Images/me_ups.jpg" class="squared" />
                        </span>
                        <span class="author">Author name</span>
                        <span class="web">
                            <a href="#">Position, Company</a>
                        </span>
                        <span class="rating link-5-star no-txt"></span>
                    </div>
                </div>
            </asp:Panel>
            <asp:Panel ID="item0_6" runat="server" CssClass="testimonials-item col-sm-6 col-md-4">
                <div class="simple-box img-64">
                    <div class="content-box squared top-right link-quote-left">
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                    </div>
                    <div class="author-box bottom-right">
                        <span>
                            <img alt="" src="<%= ModulePath %>Images/me_ups.jpg" class="squared" />
                        </span>
                        <span class="author">Author name</span>
                        <span class="web">
                            <a href="#">Position, Company</a>
                        </span>
                        <span class="rating link-5-star no-txt"></span>
                    </div>
                </div>
            </asp:Panel>

            <asp:Panel ID="item0_7" runat="server" CssClass="testimonials-item col-sm-6 col-md-4">
                <div class="simple-box no-img">
                    <div class="author-box top-left">
                        <span class="author">Author name</span>
                        <span class="web">
                            <a href="#">Position, Company</a>
                        </span>
                        <span class="rating link-5-star no-txt"></span>
                    </div>
                    <div class="content-box squared bottom-left link-quote-left">
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                    </div>
                </div>
            </asp:Panel>
            <asp:Panel ID="item0_8" runat="server" CssClass="testimonials-item col-sm-6 col-md-4">
                <div class="simple-box no-img">
                    <div class="author-box top-center">
                        <span class="author">Author name</span>
                        <span class="web">
                            <a href="#">Position, Company</a>
                        </span>
                        <span class="rating link-5-star no-txt"></span>
                    </div>
                    <div class="content-box squared bottom-center link-quote-left">
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                    </div>
                </div>
            </asp:Panel>
            <asp:Panel ID="item0_9" runat="server" CssClass="testimonials-item col-sm-6 col-md-4">
                <div class="simple-box no-img">
                    <div class="author-box top-right">
                        <span class="author">Author name</span>
                        <span class="web">
                            <a href="#">Position, Company</a>
                        </span>
                        <span class="rating link-5-star no-txt"></span>
                    </div>
                    <div class="content-box squared bottom-right link-quote-left">
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                    </div>
                </div>
            </asp:Panel>

            <asp:Panel ID="item0_10" runat="server" CssClass="testimonials-item col-sm-6 col-md-4">
                <div class="simple-box no-img">
                    <div class="content-box squared top-left link-quote-left">
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                    </div>
                    <div class="author-box bottom-left">
                        <span class="author">Author name</span>
                        <span class="web">
                            <a href="#">Position, Company</a>
                        </span>
                        <span class="rating link-5-star no-txt"></span>
                    </div>
                </div>
            </asp:Panel>
            <asp:Panel ID="item0_11" runat="server" CssClass="testimonials-item col-sm-6 col-md-4">
                <div class="simple-box no-img">
                    <div class="content-box squared top-center link-quote-left">
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                    </div>
                    <div class="author-box bottom-center">
                        <span class="author">Author name</span>
                        <span class="web">
                            <a href="#">Position, Company</a>
                        </span>
                        <span class="rating link-5-star no-txt"></span>
                    </div>
                </div>
            </asp:Panel>
            <asp:Panel ID="item0_12" runat="server" CssClass="testimonials-item col-sm-6 col-md-4">
                <div class="simple-box no-img">
                    <div class="content-box squared top-right link-quote-left">
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                    </div>
                    <div class="author-box bottom-right">
                        <span class="author">Author name</span>
                        <span class="web">
                            <a href="#">Position, Company</a>
                        </span>
                        <span class="rating link-5-star no-txt"></span>
                    </div>
                </div>
            </asp:Panel>

            <asp:Panel ID="item0_13" runat="server" CssClass="testimonials-item col-sm-6 col-md-4">
                <div class="simple-box img-64">
                    <div class="author-box vertical">
                        <span class="image">
                            <img alt="" src="<%= ModulePath %>Images/me_ups.jpg" class="circle" />
                        </span>
                        <span class="author">Author name</span>
                        <span class="web">
                            <a href="#">Position, Company</a>
                        </span>
                        <span class="rating link-5-star no-txt"></span>
                    </div>
                    <div class="content-box squared right link-quote-left">
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                    </div>
                </div>
            </asp:Panel>
            <asp:Panel ID="item0_14" runat="server" CssClass="testimonials-item col-sm-6 col-md-4">
                <div class="simple-box no-img">
                    <div class="author-box vertical">
                        <span class="author">Author name</span>
                        <span class="web">
                            <a href="#">Position, Company</a>
                        </span>
                        <span class="rating link-5-star no-txt"></span>
                    </div>
                    <div class="content-box squared right link-quote-left">
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                    </div>
                </div>
            </asp:Panel>

            <asp:Panel ID="item0_15" runat="server" CssClass="testimonials-item col-sm-6 col-md-4">
                <div class="simple-box img-64">
                    <div class="content-box squared left link-quote-left">
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                    </div>
                    <div class="author-box vertical">
                        <span class="image">
                            <img alt="" src="<%= ModulePath %>Images/me_ups.jpg" class="squared" />
                        </span>
                        <span class="author">Author name</span>
                        <span class="web">
                            <a href="#">Position, Company</a>
                        </span>
                        <span class="rating link-5-star no-txt"></span>
                    </div>
                </div>
            </asp:Panel>
            <asp:Panel ID="item0_16" runat="server" CssClass="testimonials-item col-sm-6 col-md-4">
                <div class="simple-box no-img">
                    <div class="content-box squared left link-quote-left">
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                    </div>
                    <div class="author-box vertical">
                        <span class="author">Author name</span>
                        <span class="web">
                            <a href="#">Position, Company</a>
                        </span>
                        <span class="rating link-5-star no-txt"></span>
                    </div>
                </div>
            </asp:Panel>
        </div>
        <div class="clear"></div>

        <h4 style="border-bottom: 1px solid #ddd;">Bubble Box</h4>
        <div class="row" style="margin-top: 15px;">
            <asp:Panel ID="item1_1" runat="server" CssClass="testimonials-item col-sm-6 col-md-4">
                <div class="bubble-box img-64">
                    <div class="author-box top-left">
                        <span>
                            <img alt="" src="<%= ModulePath %>Images/me_ups.jpg" class="circle" />
                        </span>
                        <span class="author">Author name</span>
                        <span class="web">
                            <a href="#">Position, Company</a>
                        </span>
                        <span class="rating link-5-star no-txt"></span>
                    </div>
                    <div class="content-box edge bottom-left">
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                    </div>
                </div>
            </asp:Panel>
            <asp:Panel ID="item1_2" runat="server" CssClass="testimonials-item col-sm-6 col-md-4">
                <div class="bubble-box img-64">
                    <div class="author-box top-center">
                        <span>
                            <img alt="" src="<%= ModulePath %>Images/me_ups.jpg" class="edge" />
                        </span>
                        <span class="author">Author name</span>
                        <span class="web">
                            <a href="#">Position, Company</a>
                        </span>
                        <span class="rating link-5-star no-txt"></span>
                    </div>
                    <div class="content-box edge bottom-center">
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                    </div>
                </div>
            </asp:Panel>
            <asp:Panel ID="item1_3" runat="server" CssClass="testimonials-item col-sm-6 col-md-4">
                <div class="bubble-box img-64">
                    <div class="author-box top-right">
                        <span>
                            <img alt="" src="<%= ModulePath %>Images/me_ups.jpg" class="squared" />
                        </span>
                        <span class="author">Author name</span>
                        <span class="web">
                            <a href="#">Position, Company</a>
                        </span>
                        <span class="rating link-5-star no-txt"></span>
                    </div>
                    <div class="content-box squared bottom-right">
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                    </div>
                </div>
            </asp:Panel>

            <asp:Panel ID="item1_4" runat="server" CssClass="testimonials-item col-sm-6 col-md-4">
                <div class="bubble-box img-64">
                    <div class="content-box edge top-left">
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                    </div>
                    <div class="author-box bottom-left">
                        <span>
                            <img alt="" src="<%= ModulePath %>Images/me_ups.jpg" class="circle" />
                        </span>
                        <span class="author">Author name</span>
                        <span class="web">
                            <a href="#">Position, Company</a>
                        </span>
                        <span class="rating link-5-star no-txt"></span>
                    </div>
                </div>
            </asp:Panel>
            <asp:Panel ID="item1_5" runat="server" CssClass="testimonials-item col-sm-6 col-md-4">
                <div class="bubble-box img-64">
                    <div class="content-box edge top-center">
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                    </div>
                    <div class="author-box bottom-center">
                        <span>
                            <img alt="" src="<%= ModulePath %>Images/me_ups.jpg" class="edge" />
                        </span>
                        <span class="author">Author name</span>
                        <span class="web">
                            <a href="#">Position, Company</a>
                        </span>
                        <span class="rating link-5-star no-txt"></span>
                    </div>
                </div>
            </asp:Panel>
            <asp:Panel ID="item1_6" runat="server" CssClass="testimonials-item col-sm-6 col-md-4">
                <div class="bubble-box img-64">
                    <div class="content-box squared top-right">
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                    </div>
                    <div class="author-box bottom-right">
                        <span>
                            <img alt="" src="<%= ModulePath %>Images/me_ups.jpg" class="squared" />
                        </span>
                        <span class="author">Author name</span>
                        <span class="web">
                            <a href="#">Position, Company</a>
                        </span>
                        <span class="rating link-5-star no-txt"></span>
                    </div>
                </div>
            </asp:Panel>

            <asp:Panel ID="item1_7" runat="server" CssClass="testimonials-item col-sm-6 col-md-4">
                <div class="bubble-box no-img">
                    <div class="author-box top-left">
                        <span class="author">Author name</span>
                        <span class="web">
                            <a href="#">Position, Company</a>
                        </span>
                        <span class="rating link-5-star no-txt"></span>
                    </div>
                    <div class="content-box edge bottom-left">
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                    </div>
                </div>
            </asp:Panel>
            <asp:Panel ID="item1_8" runat="server" CssClass="testimonials-item col-sm-6 col-md-4">
                <div class="bubble-box no-img">
                    <div class="author-box top-center">
                        <span class="author">Author name</span>
                        <span class="web">
                            <a href="#">Position, Company</a>
                        </span>
                        <span class="rating link-5-star no-txt"></span>
                    </div>
                    <div class="content-box edge bottom-center">
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                    </div>
                </div>
            </asp:Panel>
            <asp:Panel ID="item1_9" runat="server" CssClass="testimonials-item col-sm-6 col-md-4">
                <div class="bubble-box no-img">
                    <div class="author-box top-right">
                        <span class="author">Author name</span>
                        <span class="web">
                            <a href="#">Position, Company</a>
                        </span>
                        <span class="rating link-5-star no-txt"></span>
                    </div>
                    <div class="content-box squared bottom-right">
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                    </div>
                </div>
            </asp:Panel>

            <asp:Panel ID="item1_10" runat="server" CssClass="testimonials-item col-sm-6 col-md-4">
                <div class="bubble-box no-img">
                    <div class="content-box edge top-left">
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                    </div>
                    <div class="author-box bottom-left">
                        <span class="author">Author name</span>
                        <span class="web">
                            <a href="#">Position, Company</a>
                        </span>
                        <span class="rating link-5-star no-txt"></span>
                    </div>
                </div>
            </asp:Panel>
            <asp:Panel ID="item1_11" runat="server" CssClass="testimonials-item col-sm-6 col-md-4">
                <div class="bubble-box no-img">
                    <div class="content-box edge top-center">
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                    </div>
                    <div class="author-box bottom-center">
                        <span class="author">Author name</span>
                        <span class="web">
                            <a href="#">Position, Company</a>
                        </span>
                        <span class="rating link-5-star no-txt"></span>
                    </div>
                </div>
            </asp:Panel>
            <asp:Panel ID="item1_12" runat="server" CssClass="testimonials-item col-sm-6 col-md-4">
                <div class="bubble-box no-img">
                    <div class="content-box squared top-right">
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                    </div>
                    <div class="author-box bottom-right">
                        <span class="author">Author name</span>
                        <span class="web">
                            <a href="#">Position, Company</a>
                        </span>
                        <span class="rating link-5-star no-txt"></span>
                    </div>
                </div>
            </asp:Panel>

            <asp:Panel ID="item1_13" runat="server" CssClass="testimonials-item col-sm-6 col-md-4">
                <div class="bubble-box img-64">
                    <div class="author-box vertical">
                        <span class="image">
                            <img alt="" src="<%= ModulePath %>Images/me_ups.jpg" class="circle" />
                        </span>
                        <span class="author">Author name</span>
                        <span class="web">
                            <a href="#">Position, Company</a>
                        </span>
                        <span class="rating link-5-star no-txt"></span>
                    </div>
                    <div class="content-box edge right">
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                    </div>
                </div>
            </asp:Panel>
            <asp:Panel ID="item1_14" runat="server" CssClass="testimonials-item col-sm-6 col-md-4">
                <div class="bubble-box no-img">
                    <div class="author-box vertical">
                        <span class="author">Author name</span>
                        <span class="web">
                            <a href="#">Position, Company</a>
                        </span>
                        <span class="rating link-5-star no-txt"></span>
                    </div>
                    <div class="content-box edge right">
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                    </div>
                </div>
            </asp:Panel>

            <asp:Panel ID="item1_15" runat="server" CssClass="testimonials-item col-sm-6 col-md-4">
                <div class="bubble-box img-64">
                    <div class="content-box squared left">
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                    </div>
                    <div class="author-box vertical">
                        <span class="image">
                            <img alt="" src="<%= ModulePath %>Images/me_ups.jpg" class="squared" />
                        </span>
                        <span class="author">Author name</span>
                        <span class="web">
                            <a href="#">Position, Company</a>
                        </span>
                        <span class="rating link-5-star no-txt"></span>
                    </div>
                </div>
            </asp:Panel>
            <asp:Panel ID="item1_16" runat="server" CssClass="testimonials-item col-sm-6 col-md-4">
                <div class="bubble-box no-img">
                    <div class="content-box squared left">
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                    </div>
                    <div class="author-box vertical">
                        <span class="author">Author name</span>
                        <span class="web">
                            <a href="#">Position, Company</a>
                        </span>
                        <span class="rating link-5-star no-txt"></span>
                    </div>
                </div>
            </asp:Panel>
        </div>
        <div class="clear"></div>

        <h4 style="border-bottom: 1px solid #ddd;">Color Box</h4>
        <div class="row" style="margin-top: 15px;">
            <asp:Panel ID="item2_1" runat="server" CssClass="testimonials-item col-sm-6 col-md-4">
                <div class="color-box img-64">
                    <div class="author-box top-left">
                        <span>
                            <img alt="" src="<%= ModulePath %>Images/me_ups.jpg" class="circle" />
                        </span>
                        <span class="author">Author name</span>
                        <span class="web">
                            <a href="#">Position, Company</a>
                        </span>
                        <span class="rating link-3-star no-txt"></span>
                    </div>
                    <div class="content-box bottom-left">
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                    </div>
                </div>
            </asp:Panel>
            <asp:Panel ID="item2_2" runat="server" CssClass="testimonials-item col-sm-6 col-md-4">
                <div class="color-box img-64">
                    <div class="author-box top-center">
                        <span>
                            <img alt="" src="<%= ModulePath %>Images/me_ups.jpg" class="edge" />
                        </span>
                        <span class="author">Author name</span>
                        <span class="web">
                            <a href="#">Position, Company</a>
                        </span>
                        <span class="rating link-5-star no-txt"></span>
                    </div>
                    <div class="content-box bottom-center">
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                    </div>
                </div>
            </asp:Panel>
            <asp:Panel ID="item2_3" runat="server" CssClass="testimonials-item col-sm-6 col-md-4">
                <div class="color-box img-64">
                    <div class="author-box top-right">
                        <span>
                            <img alt="" src="<%= ModulePath %>Images/me_ups.jpg" class="squared" />
                        </span>
                        <span class="author">Author name</span>
                        <span class="web">
                            <a href="#">Position, Company</a>
                        </span>
                        <span class="rating link-4-star no-txt"></span>
                    </div>
                    <div class="content-box bottom-right">
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                    </div>
                </div>
            </asp:Panel>

            <asp:Panel ID="item2_4" runat="server" CssClass="testimonials-item col-sm-6 col-md-4">
                <div class="color-box img-64">
                    <div class="content-box top-left">
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                    </div>
                    <div class="author-box bottom-left">
                        <span>
                            <img alt="" src="<%= ModulePath %>Images/me_ups.jpg" class="circle" />
                        </span>
                        <span class="author">Author name</span>
                        <span class="web">
                            <a href="#">Position, Company</a>
                        </span>
                        <span class="rating link-5-star no-txt"></span>
                    </div>
                </div>
            </asp:Panel>
            <asp:Panel ID="item2_5" runat="server" CssClass="testimonials-item col-sm-6 col-md-4">
                <div class="color-box img-64">
                    <div class="content-box top-center">
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                    </div>
                    <div class="author-box bottom-center">
                        <span>
                            <img alt="" src="<%= ModulePath %>Images/me_ups.jpg" class="edge" />
                        </span>
                        <span class="author">Author name</span>
                        <span class="web">
                            <a href="#">Position, Company</a>
                        </span>
                        <span class="rating link-4-star no-txt"></span>
                    </div>
                </div>
            </asp:Panel>
            <asp:Panel ID="item2_6" runat="server" CssClass="testimonials-item col-sm-6 col-md-4">
                <div class="color-box img-64">
                    <div class="content-box top-right">
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                    </div>
                    <div class="author-box bottom-right">
                        <span>
                            <img alt="" src="<%= ModulePath %>Images/me_ups.jpg" class="squared" />
                        </span>
                        <span class="author">Author name</span>
                        <span class="web">
                            <a href="#">Position, Company</a>
                        </span>
                        <span class="rating link-3-star no-txt"></span>
                    </div>
                </div>
            </asp:Panel>

            <asp:Panel ID="item2_7" runat="server" CssClass="testimonials-item col-sm-6 col-md-4">
                <div class="color-box no-img">
                    <div class="author-box top-left">
                        <span class="author">Author name</span>
                        <span class="web">
                            <a href="#">Position, Company</a>
                        </span>
                        <span class="rating link-3-star no-txt"></span>
                    </div>
                    <div class="content-box bottom-left">
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                    </div>
                </div>
            </asp:Panel>
            <asp:Panel ID="item2_8" runat="server" CssClass="testimonials-item col-sm-6 col-md-4">
                <div class="color-box no-img">
                    <div class="author-box top-center">
                        <span class="author">Author name</span>
                        <span class="web">
                            <a href="#">Position, Company</a>
                        </span>
                        <span class="rating link-5-star no-txt"></span>
                    </div>
                    <div class="content-box bottom-center">
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                    </div>
                </div>
            </asp:Panel>
            <asp:Panel ID="item2_9" runat="server" CssClass="testimonials-item col-sm-6 col-md-4">
                <div class="color-box no-img">
                    <div class="author-box top-right">
                        <span class="author">Author name</span>
                        <span class="web">
                            <a href="#">Position, Company</a>
                        </span>
                        <span class="rating link-4-star no-txt"></span>
                    </div>
                    <div class="content-box bottom-right">
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                    </div>
                </div>
            </asp:Panel>

            <asp:Panel ID="item2_10" runat="server" CssClass="testimonials-item col-sm-6 col-md-4">
                <div class="color-box no-img">
                    <div class="content-box top-left">
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                    </div>
                    <div class="author-box bottom-left">
                        <span class="author">Author name</span>
                        <span class="web">
                            <a href="#">Position, Company</a>
                        </span>
                        <span class="rating link-5-star no-txt"></span>
                    </div>
                </div>
            </asp:Panel>
            <asp:Panel ID="item2_11" runat="server" CssClass="testimonials-item col-sm-6 col-md-4">
                <div class="color-box no-img">
                    <div class="content-box top-center">
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                    </div>
                    <div class="author-box bottom-center">
                        <span class="author">Author name</span>
                        <span class="web">
                            <a href="#">Position, Company</a>
                        </span>
                        <span class="rating link-4-star no-txt"></span>
                    </div>
                </div>
            </asp:Panel>
            <asp:Panel ID="item2_12" runat="server" CssClass="testimonials-item col-sm-6 col-md-4">
                <div class="color-box no-img">
                    <div class="content-box top-right">
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                    </div>
                    <div class="author-box bottom-right">
                        <span class="author">Author name</span>
                        <span class="web">
                            <a href="#">Position, Company</a>
                        </span>
                        <span class="rating link-3-star no-txt"></span>
                    </div>
                </div>
            </asp:Panel>

            <asp:Panel ID="item2_13" runat="server" CssClass="testimonials-item col-sm-6 col-md-4">
                <div class="color-box img-64">
                    <div class="author-box vertical">
                        <span class="image">
                            <img alt="" src="<%= ModulePath %>Images/me_ups.jpg" class="circle" />
                        </span>
                        <span class="author">Author name</span>
                        <span class="web">
                            <a href="#">Position, Company</a>
                        </span>
                        <span class="rating link-3-star no-txt"></span>
                    </div>
                    <div class="content-box right">
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                    </div>
                </div>
            </asp:Panel>
            <asp:Panel ID="item2_14" runat="server" CssClass="testimonials-item col-sm-6 col-md-4">
                <div class="color-box no-img">
                    <div class="author-box vertical">
                        <span class="author">Author name</span>
                        <span class="web">
                            <a href="#">Position, Company</a>
                        </span>
                        <span class="rating link-3-star no-txt"></span>
                    </div>
                    <div class="content-box right">
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                    </div>
                </div>
            </asp:Panel>

            <asp:Panel ID="item2_15" runat="server" CssClass="testimonials-item col-sm-6 col-md-4">
                <div class="color-box img-64">
                    <div class="content-box left">
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                    </div>
                    <div class="author-box vertical">
                        <span class="image">
                            <img alt="" src="<%= ModulePath %>Images/me_ups.jpg" class="squared" />
                        </span>
                        <span class="author">Author name</span>
                        <span class="web">
                            <a href="#">Position, Company</a>
                        </span>
                        <span class="rating link-4-star no-txt"></span>
                    </div>
                </div>
            </asp:Panel>
            <asp:Panel ID="item2_16" runat="server" CssClass="testimonials-item col-sm-6 col-md-4">
                <div class="color-box no-img">
                    <div class="content-box left">
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                    </div>
                    <div class="author-box vertical">
                        <span class="author">Author name</span>
                        <span class="web">
                            <a href="#">Position, Company</a>
                        </span>
                        <span class="rating link-4-star no-txt"></span>
                    </div>
                </div>
            </asp:Panel>
        </div>
        <div class="clear"></div>

        <h4 style="border-bottom: 1px solid #ddd;">Use as slider with pager & controls</h4>
        <div id="bxSlider" class="bx-slider row">
            <asp:Panel ID="Panel1" runat="server" CssClass="testimonials-slide">
                <div class="color-box img-64">
                    <div class="author-box top-left">
                        <span>
                            <img alt="" src="<%= ModulePath %>Images/me_ups.jpg" class="circle" />
                        </span>
                        <span class="author">Author name</span>
                        <span class="web">
                            <a href="#">Position, Company</a>
                        </span>
                        <span class="rating link-3-star no-txt"></span>
                    </div>
                    <div class="content-box bottom-left">
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                    </div>
                </div>
            </asp:Panel>
            <asp:Panel ID="Panel2" runat="server" CssClass="testimonials-slide">
                <div class="color-box img-64">
                    <div class="author-box top-center">
                        <span>
                            <img alt="" src="<%= ModulePath %>Images/me_ups.jpg" class="edge" />
                        </span>
                        <span class="author">Author name</span>
                        <span class="web">
                            <a href="#">Position, Company</a>
                        </span>
                        <span class="rating link-5-star no-txt"></span>
                    </div>
                    <div class="content-box bottom-center">
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                    </div>
                </div>
            </asp:Panel>
            <asp:Panel ID="Panel3" runat="server" CssClass="testimonials-slide">
                <div class="color-box img-64">
                    <div class="author-box top-right">
                        <span>
                            <img alt="" src="<%= ModulePath %>Images/me_ups.jpg" class="squared" />
                        </span>
                        <span class="author">Author name</span>
                        <span class="web">
                            <a href="#">Position, Company</a>
                        </span>
                        <span class="rating link-4-star no-txt"></span>
                    </div>
                    <div class="content-box bottom-right">
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                    </div>
                </div>
            </asp:Panel>

            <asp:Panel ID="Panel4" runat="server" CssClass="testimonials-slide">
                <div class="color-box img-64">
                    <div class="content-box top-left">
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                    </div>
                    <div class="author-box bottom-left">
                        <span>
                            <img alt="" src="<%= ModulePath %>Images/me_ups.jpg" class="circle" />
                        </span>
                        <span class="author">Author name</span>
                        <span class="web">
                            <a href="#">Position, Company</a>
                        </span>
                        <span class="rating link-5-star no-txt"></span>
                    </div>
                </div>
            </asp:Panel>
            <asp:Panel ID="Panel5" runat="server" CssClass="testimonials-slide">
                <div class="color-box img-64">
                    <div class="content-box top-center">
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                    </div>
                    <div class="author-box bottom-center">
                        <span>
                            <img alt="" src="<%= ModulePath %>Images/me_ups.jpg" class="edge" />
                        </span>
                        <span class="author">Author name</span>
                        <span class="web">
                            <a href="#">Position, Company</a>
                        </span>
                        <span class="rating link-4-star no-txt"></span>
                    </div>
                </div>
            </asp:Panel>
            <asp:Panel ID="Panel6" runat="server" CssClass="testimonials-slide">
                <div class="bubble-box img-64">
                    <div class="content-box edge top-left">
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                    </div>
                    <div class="author-box bottom-left">
                        <span>
                            <img alt="" src="<%= ModulePath %>Images/me_ups.jpg" class="circle" />
                        </span>
                        <span class="author">Author name</span>
                        <span class="web">
                            <a href="#">Position, Company</a>
                        </span>
                        <span class="rating link-5-star no-txt"></span>
                    </div>
                </div>
            </asp:Panel>
            <asp:Panel ID="Panel7" runat="server" CssClass="testimonials-slide">
                <div class="bubble-box img-64">
                    <div class="content-box edge top-center">
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                    </div>
                    <div class="author-box bottom-center">
                        <span>
                            <img alt="" src="<%= ModulePath %>Images/me_ups.jpg" class="edge" />
                        </span>
                        <span class="author">Author name</span>
                        <span class="web">
                            <a href="#">Position, Company</a>
                        </span>
                        <span class="rating link-5-star no-txt"></span>
                    </div>
                </div>
            </asp:Panel>
            <asp:Panel ID="Panel8" runat="server" CssClass="testimonials-slide">
                <div class="bubble-box img-64">
                    <div class="content-box squared top-right">
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                    </div>
                    <div class="author-box bottom-right">
                        <span>
                            <img alt="" src="<%= ModulePath %>Images/me_ups.jpg" class="squared" />
                        </span>
                        <span class="author">Author name</span>
                        <span class="web">
                            <a href="#">Position, Company</a>
                        </span>
                        <span class="rating link-5-star no-txt"></span>
                    </div>
                </div>
            </asp:Panel>
            <asp:Panel ID="Panel9" runat="server" CssClass="testimonials-slide">
                <div class="simple-box img-64">
                    <div class="author-box top-left">
                        <span>
                            <img alt="" src="<%= ModulePath %>Images/me_ups.jpg" class="circle" />
                        </span>
                        <span class="author">Author name</span>
                        <span class="web">
                            <a href="#">Position, Company</a>
                        </span>
                        <span class="rating link-5-star no-txt"></span>
                    </div>
                    <div class="content-box squared bottom-left link-quote-left link-quote-right">
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                    </div>
                </div>
            </asp:Panel>
            <asp:Panel ID="Panel10" runat="server" CssClass="testimonials-slide">
                <div class="simple-box img-64">
                    <div class="author-box top-center">
                        <span>
                            <img alt="" src="<%= ModulePath %>Images/me_ups.jpg" class="squared" />
                        </span>
                        <span class="author">Author name</span>
                        <span class="web">
                            <a href="#">Position, Company</a>
                        </span>
                        <span class="rating link-5-star no-txt"></span>
                    </div>
                    <div class="content-box squared bottom-center link-quote-left">
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                    </div>
                </div>
            </asp:Panel>
            <asp:Panel ID="Panel11" runat="server" CssClass="testimonials-slide">
                <div class="simple-box img-64">
                    <div class="author-box top-right">
                        <span>
                            <img alt="" src="<%= ModulePath %>Images/me_ups.jpg" class="squared" />
                        </span>
                        <span class="author">Author name</span>
                        <span class="web">
                            <a href="#">Position, Company</a>
                        </span>
                        <span class="rating link-5-star no-txt"></span>
                    </div>
                    <div class="content-box squared bottom-right link-quote-left">
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                    </div>
                </div>
            </asp:Panel>

            <asp:Panel ID="Panel12" runat="server" CssClass="testimonials-slide">
                <div class="simple-box img-64">
                    <div class="content-box squared top-left link-quote-left">
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                    </div>
                    <div class="author-box bottom-left">
                        <span>
                            <img alt="" src="<%= ModulePath %>Images/me_ups.jpg" class="circle" />
                        </span>
                        <span class="author">Author name</span>
                        <span class="web">
                            <a href="#">Position, Company</a>
                        </span>
                        <span class="rating link-5-star no-txt"></span>
                    </div>
                </div>
            </asp:Panel>
            <asp:Panel ID="Panel13" runat="server" CssClass="testimonials-slide">
                <div class="simple-box img-64">
                    <div class="content-box squared top-center link-quote-left">
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                    </div>
                    <div class="author-box bottom-center">
                        <span>
                            <img alt="" src="<%= ModulePath %>Images/me_ups.jpg" class="squared" />
                        </span>
                        <span class="author">Author name</span>
                        <span class="web">
                            <a href="#">Position, Company</a>
                        </span>
                        <span class="rating link-5-star no-txt"></span>
                    </div>
                </div>
            </asp:Panel>
        </div>
        <div class="clear"></div>

        <h4 style="border-bottom: 1px solid #ddd;">Use as slider with pager without controls</h4>
        <div id="bxSliderNoCtrls" class="bx-slider no-controls row">
            <asp:Panel ID="Panel14" runat="server" CssClass="testimonials-slide-full">
                <div class="color-box img-64">
                    <div class="author-box top-left">
                        <span>
                            <img alt="" src="<%= ModulePath %>Images/me_ups.jpg" class="circle" />
                        </span>
                        <span class="author">Author name</span>
                        <span class="web">
                            <a href="#">Position, Company</a>
                        </span>
                        <span class="rating link-3-star no-txt"></span>
                    </div>
                    <div class="content-box bottom-left">
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                    </div>
                </div>
            </asp:Panel>
            <asp:Panel ID="Panel15" runat="server" CssClass="testimonials-slide-full">
                <div class="color-box img-64">
                    <div class="author-box top-center">
                        <span>
                            <img alt="" src="<%= ModulePath %>Images/me_ups.jpg" class="edge" />
                        </span>
                        <span class="author">Author name</span>
                        <span class="web">
                            <a href="#">Position, Company</a>
                        </span>
                        <span class="rating link-5-star no-txt"></span>
                    </div>
                    <div class="content-box bottom-center">
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                    </div>
                </div>
            </asp:Panel>
            <asp:Panel ID="Panel16" runat="server" CssClass="testimonials-slide-full">
                <div class="color-box img-64">
                    <div class="author-box top-right">
                        <span>
                            <img alt="" src="<%= ModulePath %>Images/me_ups.jpg" class="squared" />
                        </span>
                        <span class="author">Author name</span>
                        <span class="web">
                            <a href="#">Position, Company</a>
                        </span>
                        <span class="rating link-4-star no-txt"></span>
                    </div>
                    <div class="content-box bottom-right">
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                    </div>
                </div>
            </asp:Panel>

            <asp:Panel ID="Panel17" runat="server" CssClass="testimonials-slide-full">
                <div class="color-box img-64">
                    <div class="content-box top-left">
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                    </div>
                    <div class="author-box bottom-left">
                        <span>
                            <img alt="" src="<%= ModulePath %>Images/me_ups.jpg" class="circle" />
                        </span>
                        <span class="author">Author name</span>
                        <span class="web">
                            <a href="#">Position, Company</a>
                        </span>
                        <span class="rating link-5-star no-txt"></span>
                    </div>
                </div>
            </asp:Panel>
            <asp:Panel ID="Panel18" runat="server" CssClass="testimonials-slide-full">
                <div class="color-box img-64">
                    <div class="content-box top-center">
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                    </div>
                    <div class="author-box bottom-center">
                        <span>
                            <img alt="" src="<%= ModulePath %>Images/me_ups.jpg" class="edge" />
                        </span>
                        <span class="author">Author name</span>
                        <span class="web">
                            <a href="#">Position, Company</a>
                        </span>
                        <span class="rating link-4-star no-txt"></span>
                    </div>
                </div>
            </asp:Panel>
            <asp:Panel ID="Panel19" runat="server" CssClass="testimonials-slide-full">
                <div class="bubble-box img-64">
                    <div class="content-box edge top-left">
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                    </div>
                    <div class="author-box bottom-left">
                        <span>
                            <img alt="" src="<%= ModulePath %>Images/me_ups.jpg" class="circle" />
                        </span>
                        <span class="author">Author name</span>
                        <span class="web">
                            <a href="#">Position, Company</a>
                        </span>
                        <span class="rating link-5-star no-txt"></span>
                    </div>
                </div>
            </asp:Panel>
            <asp:Panel ID="Panel20" runat="server" CssClass="testimonials-slide-full">
                <div class="bubble-box img-64">
                    <div class="content-box edge top-center">
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                    </div>
                    <div class="author-box bottom-center">
                        <span>
                            <img alt="" src="<%= ModulePath %>Images/me_ups.jpg" class="edge" />
                        </span>
                        <span class="author">Author name</span>
                        <span class="web">
                            <a href="#">Position, Company</a>
                        </span>
                        <span class="rating link-5-star no-txt"></span>
                    </div>
                </div>
            </asp:Panel>
            <asp:Panel ID="Panel21" runat="server" CssClass="testimonials-slide-full">
                <div class="bubble-box img-64">
                    <div class="content-box squared top-right">
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                    </div>
                    <div class="author-box bottom-right">
                        <span>
                            <img alt="" src="<%= ModulePath %>Images/me_ups.jpg" class="squared" />
                        </span>
                        <span class="author">Author name</span>
                        <span class="web">
                            <a href="#">Position, Company</a>
                        </span>
                        <span class="rating link-5-star no-txt"></span>
                    </div>
                </div>
            </asp:Panel>
            <asp:Panel ID="Panel22" runat="server" CssClass="testimonials-slide-full">
                <div class="simple-box img-64">
                    <div class="author-box top-left">
                        <span>
                            <img alt="" src="<%= ModulePath %>Images/me_ups.jpg" class="circle" />
                        </span>
                        <span class="author">Author name</span>
                        <span class="web">
                            <a href="#">Position, Company</a>
                        </span>
                        <span class="rating link-5-star no-txt"></span>
                    </div>
                    <div class="content-box squared bottom-left link-quote-left link-quote-right">
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                    </div>
                </div>
            </asp:Panel>
            <asp:Panel ID="Panel23" runat="server" CssClass="testimonials-slide-full">
                <div class="simple-box img-64">
                    <div class="author-box top-center">
                        <span>
                            <img alt="" src="<%= ModulePath %>Images/me_ups.jpg" class="squared" />
                        </span>
                        <span class="author">Author name</span>
                        <span class="web">
                            <a href="#">Position, Company</a>
                        </span>
                        <span class="rating link-5-star no-txt"></span>
                    </div>
                    <div class="content-box squared bottom-center link-quote-left">
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                    </div>
                </div>
            </asp:Panel>
            <asp:Panel ID="Panel24" runat="server" CssClass="testimonials-slide-full">
                <div class="simple-box img-64">
                    <div class="author-box top-right">
                        <span>
                            <img alt="" src="<%= ModulePath %>Images/me_ups.jpg" class="squared" />
                        </span>
                        <span class="author">Author name</span>
                        <span class="web">
                            <a href="#">Position, Company</a>
                        </span>
                        <span class="rating link-5-star no-txt"></span>
                    </div>
                    <div class="content-box squared bottom-right link-quote-left">
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                    </div>
                </div>
            </asp:Panel>

            <asp:Panel ID="Panel25" runat="server" CssClass="testimonials-slide-full">
                <div class="simple-box img-64">
                    <div class="content-box squared top-left link-quote-left">
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                    </div>
                    <div class="author-box bottom-left">
                        <span>
                            <img alt="" src="<%= ModulePath %>Images/me_ups.jpg" class="circle" />
                        </span>
                        <span class="author">Author name</span>
                        <span class="web">
                            <a href="#">Position, Company</a>
                        </span>
                        <span class="rating link-5-star no-txt"></span>
                    </div>
                </div>
            </asp:Panel>
            <asp:Panel ID="Panel26" runat="server" CssClass="testimonials-slide-full">
                <div class="simple-box img-64">
                    <div class="content-box squared top-center link-quote-left">
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                    </div>
                    <div class="author-box bottom-center">
                        <span>
                            <img alt="" src="<%= ModulePath %>Images/me_ups.jpg" class="squared" />
                        </span>
                        <span class="author">Author name</span>
                        <span class="web">
                            <a href="#">Position, Company</a>
                        </span>
                        <span class="rating link-5-star no-txt"></span>
                    </div>
                </div>
            </asp:Panel>
        </div>
        <div class="clear"></div>

        <h4 style="border-bottom: 1px solid #ddd;">Use as slider without pager with controls</h4>
        <div id="bxSliderNoPgr" class="bx-slider no-pager row">
            <asp:Panel ID="Panel40" runat="server" CssClass="testimonials-slide">
                <div class="color-box img-64">
                    <div class="author-box top-left">
                        <span>
                            <img alt="" src="<%= ModulePath %>Images/me_ups.jpg" class="circle" />
                        </span>
                        <span class="author">Author name</span>
                        <span class="web">
                            <a href="#">Position, Company</a>
                        </span>
                        <span class="rating link-3-star no-txt"></span>
                    </div>
                    <div class="content-box bottom-left">
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                    </div>
                </div>
            </asp:Panel>
            <asp:Panel ID="Panel41" runat="server" CssClass="testimonials-slide">
                <div class="color-box img-64">
                    <div class="author-box top-center">
                        <span>
                            <img alt="" src="<%= ModulePath %>Images/me_ups.jpg" class="edge" />
                        </span>
                        <span class="author">Author name</span>
                        <span class="web">
                            <a href="#">Position, Company</a>
                        </span>
                        <span class="rating link-5-star no-txt"></span>
                    </div>
                    <div class="content-box bottom-center">
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                    </div>
                </div>
            </asp:Panel>
            <asp:Panel ID="Panel42" runat="server" CssClass="testimonials-slide">
                <div class="color-box img-64">
                    <div class="author-box top-right">
                        <span>
                            <img alt="" src="<%= ModulePath %>Images/me_ups.jpg" class="squared" />
                        </span>
                        <span class="author">Author name</span>
                        <span class="web">
                            <a href="#">Position, Company</a>
                        </span>
                        <span class="rating link-4-star no-txt"></span>
                    </div>
                    <div class="content-box bottom-right">
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                    </div>
                </div>
            </asp:Panel>

            <asp:Panel ID="Panel43" runat="server" CssClass="testimonials-slide">
                <div class="color-box img-64">
                    <div class="content-box top-left">
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                    </div>
                    <div class="author-box bottom-left">
                        <span>
                            <img alt="" src="<%= ModulePath %>Images/me_ups.jpg" class="circle" />
                        </span>
                        <span class="author">Author name</span>
                        <span class="web">
                            <a href="#">Position, Company</a>
                        </span>
                        <span class="rating link-5-star no-txt"></span>
                    </div>
                </div>
            </asp:Panel>
            <asp:Panel ID="Panel44" runat="server" CssClass="testimonials-slide">
                <div class="color-box img-64">
                    <div class="content-box top-center">
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                    </div>
                    <div class="author-box bottom-center">
                        <span>
                            <img alt="" src="<%= ModulePath %>Images/me_ups.jpg" class="edge" />
                        </span>
                        <span class="author">Author name</span>
                        <span class="web">
                            <a href="#">Position, Company</a>
                        </span>
                        <span class="rating link-4-star no-txt"></span>
                    </div>
                </div>
            </asp:Panel>
            <asp:Panel ID="Panel45" runat="server" CssClass="testimonials-slide">
                <div class="bubble-box img-64">
                    <div class="content-box edge top-left">
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                    </div>
                    <div class="author-box bottom-left">
                        <span>
                            <img alt="" src="<%= ModulePath %>Images/me_ups.jpg" class="circle" />
                        </span>
                        <span class="author">Author name</span>
                        <span class="web">
                            <a href="#">Position, Company</a>
                        </span>
                        <span class="rating link-5-star no-txt"></span>
                    </div>
                </div>
            </asp:Panel>
            <asp:Panel ID="Panel46" runat="server" CssClass="testimonials-slide">
                <div class="bubble-box img-64">
                    <div class="content-box edge top-center">
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                    </div>
                    <div class="author-box bottom-center">
                        <span>
                            <img alt="" src="<%= ModulePath %>Images/me_ups.jpg" class="edge" />
                        </span>
                        <span class="author">Author name</span>
                        <span class="web">
                            <a href="#">Position, Company</a>
                        </span>
                        <span class="rating link-5-star no-txt"></span>
                    </div>
                </div>
            </asp:Panel>
            <asp:Panel ID="Panel47" runat="server" CssClass="testimonials-slide">
                <div class="bubble-box img-64">
                    <div class="content-box squared top-right">
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                    </div>
                    <div class="author-box bottom-right">
                        <span>
                            <img alt="" src="<%= ModulePath %>Images/me_ups.jpg" class="squared" />
                        </span>
                        <span class="author">Author name</span>
                        <span class="web">
                            <a href="#">Position, Company</a>
                        </span>
                        <span class="rating link-5-star no-txt"></span>
                    </div>
                </div>
            </asp:Panel>
            <asp:Panel ID="Panel48" runat="server" CssClass="testimonials-slide">
                <div class="simple-box img-64">
                    <div class="author-box top-left">
                        <span>
                            <img alt="" src="<%= ModulePath %>Images/me_ups.jpg" class="circle" />
                        </span>
                        <span class="author">Author name</span>
                        <span class="web">
                            <a href="#">Position, Company</a>
                        </span>
                        <span class="rating link-5-star no-txt"></span>
                    </div>
                    <div class="content-box squared bottom-left link-quote-left link-quote-right">
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                    </div>
                </div>
            </asp:Panel>
            <asp:Panel ID="Panel49" runat="server" CssClass="testimonials-slide">
                <div class="simple-box img-64">
                    <div class="author-box top-center">
                        <span>
                            <img alt="" src="<%= ModulePath %>Images/me_ups.jpg" class="squared" />
                        </span>
                        <span class="author">Author name</span>
                        <span class="web">
                            <a href="#">Position, Company</a>
                        </span>
                        <span class="rating link-5-star no-txt"></span>
                    </div>
                    <div class="content-box squared bottom-center link-quote-left">
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                    </div>
                </div>
            </asp:Panel>
            <asp:Panel ID="Panel50" runat="server" CssClass="testimonials-slide">
                <div class="simple-box img-64">
                    <div class="author-box top-right">
                        <span>
                            <img alt="" src="<%= ModulePath %>Images/me_ups.jpg" class="squared" />
                        </span>
                        <span class="author">Author name</span>
                        <span class="web">
                            <a href="#">Position, Company</a>
                        </span>
                        <span class="rating link-5-star no-txt"></span>
                    </div>
                    <div class="content-box squared bottom-right link-quote-left">
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                    </div>
                </div>
            </asp:Panel>

            <asp:Panel ID="Panel51" runat="server" CssClass="testimonials-slide">
                <div class="simple-box img-64">
                    <div class="content-box squared top-left link-quote-left">
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                    </div>
                    <div class="author-box bottom-left">
                        <span>
                            <img alt="" src="<%= ModulePath %>Images/me_ups.jpg" class="circle" />
                        </span>
                        <span class="author">Author name</span>
                        <span class="web">
                            <a href="#">Position, Company</a>
                        </span>
                        <span class="rating link-5-star no-txt"></span>
                    </div>
                </div>
            </asp:Panel>
            <asp:Panel ID="Panel52" runat="server" CssClass="testimonials-slide">
                <div class="simple-box img-64">
                    <div class="content-box squared top-center link-quote-left">
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                    </div>
                    <div class="author-box bottom-center">
                        <span>
                            <img alt="" src="<%= ModulePath %>Images/me_ups.jpg" class="squared" />
                        </span>
                        <span class="author">Author name</span>
                        <span class="web">
                            <a href="#">Position, Company</a>
                        </span>
                        <span class="rating link-5-star no-txt"></span>
                    </div>
                </div>
            </asp:Panel>
        </div>
        <div class="clear"></div>

        <h4 style="border-bottom: 1px solid #ddd;">Use as slider without pager without controls</h4>
        <div id="bxSliderNoPgrNoCtrls" class="bx-slider no-pager no-controls row">
            <asp:Panel ID="Panel27" runat="server" CssClass="testimonials-slide-full">
                <div class="color-box img-64">
                    <div class="author-box top-left">
                        <span>
                            <img alt="" src="<%= ModulePath %>Images/me_ups.jpg" class="circle" />
                        </span>
                        <span class="author">Author name</span>
                        <span class="web">
                            <a href="#">Position, Company</a>
                        </span>
                        <span class="rating link-3-star no-txt"></span>
                    </div>
                    <div class="content-box bottom-left">
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                    </div>
                </div>
            </asp:Panel>
            <asp:Panel ID="Panel28" runat="server" CssClass="testimonials-slide-full">
                <div class="color-box img-64">
                    <div class="author-box top-center">
                        <span>
                            <img alt="" src="<%= ModulePath %>Images/me_ups.jpg" class="edge" />
                        </span>
                        <span class="author">Author name</span>
                        <span class="web">
                            <a href="#">Position, Company</a>
                        </span>
                        <span class="rating link-5-star no-txt"></span>
                    </div>
                    <div class="content-box bottom-center">
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                    </div>
                </div>
            </asp:Panel>
            <asp:Panel ID="Panel29" runat="server" CssClass="testimonials-slide-full">
                <div class="color-box img-64">
                    <div class="author-box top-right">
                        <span>
                            <img alt="" src="<%= ModulePath %>Images/me_ups.jpg" class="squared" />
                        </span>
                        <span class="author">Author name</span>
                        <span class="web">
                            <a href="#">Position, Company</a>
                        </span>
                        <span class="rating link-4-star no-txt"></span>
                    </div>
                    <div class="content-box bottom-right">
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                    </div>
                </div>
            </asp:Panel>

            <asp:Panel ID="Panel30" runat="server" CssClass="testimonials-slide-full">
                <div class="color-box img-64">
                    <div class="content-box top-left">
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                    </div>
                    <div class="author-box bottom-left">
                        <span>
                            <img alt="" src="<%= ModulePath %>Images/me_ups.jpg" class="circle" />
                        </span>
                        <span class="author">Author name</span>
                        <span class="web">
                            <a href="#">Position, Company</a>
                        </span>
                        <span class="rating link-5-star no-txt"></span>
                    </div>
                </div>
            </asp:Panel>
            <asp:Panel ID="Panel31" runat="server" CssClass="testimonials-slide-full">
                <div class="color-box img-64">
                    <div class="content-box top-center">
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                    </div>
                    <div class="author-box bottom-center">
                        <span>
                            <img alt="" src="<%= ModulePath %>Images/me_ups.jpg" class="edge" />
                        </span>
                        <span class="author">Author name</span>
                        <span class="web">
                            <a href="#">Position, Company</a>
                        </span>
                        <span class="rating link-4-star no-txt"></span>
                    </div>
                </div>
            </asp:Panel>
            <asp:Panel ID="Panel32" runat="server" CssClass="testimonials-slide-full">
                <div class="bubble-box img-64">
                    <div class="content-box edge top-left">
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                    </div>
                    <div class="author-box bottom-left">
                        <span>
                            <img alt="" src="<%= ModulePath %>Images/me_ups.jpg" class="circle" />
                        </span>
                        <span class="author">Author name</span>
                        <span class="web">
                            <a href="#">Position, Company</a>
                        </span>
                        <span class="rating link-5-star no-txt"></span>
                    </div>
                </div>
            </asp:Panel>
            <asp:Panel ID="Panel33" runat="server" CssClass="testimonials-slide-full">
                <div class="bubble-box img-64">
                    <div class="content-box edge top-center">
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                    </div>
                    <div class="author-box bottom-center">
                        <span>
                            <img alt="" src="<%= ModulePath %>Images/me_ups.jpg" class="edge" />
                        </span>
                        <span class="author">Author name</span>
                        <span class="web">
                            <a href="#">Position, Company</a>
                        </span>
                        <span class="rating link-5-star no-txt"></span>
                    </div>
                </div>
            </asp:Panel>
            <asp:Panel ID="Panel34" runat="server" CssClass="testimonials-slide-full">
                <div class="bubble-box img-64">
                    <div class="content-box squared top-right">
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                    </div>
                    <div class="author-box bottom-right">
                        <span>
                            <img alt="" src="<%= ModulePath %>Images/me_ups.jpg" class="squared" />
                        </span>
                        <span class="author">Author name</span>
                        <span class="web">
                            <a href="#">Position, Company</a>
                        </span>
                        <span class="rating link-5-star no-txt"></span>
                    </div>
                </div>
            </asp:Panel>
            <asp:Panel ID="Panel35" runat="server" CssClass="testimonials-slide-full">
                <div class="simple-box img-64">
                    <div class="author-box top-left">
                        <span>
                            <img alt="" src="<%= ModulePath %>Images/me_ups.jpg" class="circle" />
                        </span>
                        <span class="author">Author name</span>
                        <span class="web">
                            <a href="#">Position, Company</a>
                        </span>
                        <span class="rating link-5-star no-txt"></span>
                    </div>
                    <div class="content-box squared bottom-left link-quote-left link-quote-right">
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                    </div>
                </div>
            </asp:Panel>
            <asp:Panel ID="Panel36" runat="server" CssClass="testimonials-slide-full">
                <div class="simple-box img-64">
                    <div class="author-box top-center">
                        <span>
                            <img alt="" src="<%= ModulePath %>Images/me_ups.jpg" class="squared" />
                        </span>
                        <span class="author">Author name</span>
                        <span class="web">
                            <a href="#">Position, Company</a>
                        </span>
                        <span class="rating link-5-star no-txt"></span>
                    </div>
                    <div class="content-box squared bottom-center link-quote-left">
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                    </div>
                </div>
            </asp:Panel>
            <asp:Panel ID="Panel37" runat="server" CssClass="testimonials-slide-full">
                <div class="simple-box img-64">
                    <div class="author-box top-right">
                        <span>
                            <img alt="" src="<%= ModulePath %>Images/me_ups.jpg" class="squared" />
                        </span>
                        <span class="author">Author name</span>
                        <span class="web">
                            <a href="#">Position, Company</a>
                        </span>
                        <span class="rating link-5-star no-txt"></span>
                    </div>
                    <div class="content-box squared bottom-right link-quote-left">
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                    </div>
                </div>
            </asp:Panel>

            <asp:Panel ID="Panel38" runat="server" CssClass="testimonials-slide-full">
                <div class="simple-box img-64">
                    <div class="content-box squared top-left link-quote-left">
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                    </div>
                    <div class="author-box bottom-left">
                        <span>
                            <img alt="" src="<%= ModulePath %>Images/me_ups.jpg" class="circle" />
                        </span>
                        <span class="author">Author name</span>
                        <span class="web">
                            <a href="#">Position, Company</a>
                        </span>
                        <span class="rating link-5-star no-txt"></span>
                    </div>
                </div>
            </asp:Panel>
            <asp:Panel ID="Panel39" runat="server" CssClass="testimonials-slide-full">
                <div class="simple-box img-64">
                    <div class="content-box squared top-center link-quote-left">
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                    </div>
                    <div class="author-box bottom-center">
                        <span>
                            <img alt="" src="<%= ModulePath %>Images/me_ups.jpg" class="squared" />
                        </span>
                        <span class="author">Author name</span>
                        <span class="web">
                            <a href="#">Position, Company</a>
                        </span>
                        <span class="rating link-5-star no-txt"></span>
                    </div>
                </div>
            </asp:Panel>
        </div>
        <div class="clear"></div>


        <%--POPUP--%>
        <asp:Panel ID="pnlPopUp" runat="server" Visible="false" CssClass="popup overlay">
            <div class="popup-wrapper">
                <asp:Label ID="lblPopUpIcon" runat="server" />
                <h3>
                    <asp:Label ID="lblPopUpTitle" runat="server" CssClass="popup-msg" />
                </h3>

                <asp:Panel ID="pnlInputGroups" runat="server" CssClass="input-group">
                    <asp:Label ID="lblKey" runat="server" CssClass="input-group-addon"
                        ClientIDMode="Static" />
                    <asp:TextBox ID="txtKey" runat="server" CssClass="form-control" Enabled="true"
                        aria-describedby="lblKey"
                        Placeholder="Enter Installed Key" />
                    <span class="input-group-btn">
                        <asp:HyperLink ID="lnkSubmit" runat="server" CssClass="btn btn-primary link-key no-txt"
                            data-toggle="tooltip" />
                    </span>
                </asp:Panel>

                <asp:Panel ID="pnlAlerts" runat="server" CssClass="alert alert-danger alert-dismissible">
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true" class="link-close no-txt">&times;</span>
                    </button>
                    <asp:Label ID="lblPopUpMsg" runat="server"
                        Text="Error messaging status text.." />
                </asp:Panel>

                <asp:Panel ID="pnlButtonGroups" runat="server" CssClass="btn-group" role="group" aria-label="Control buttons">
                    <asp:LinkButton ID="btnGenConfirmKey" runat="server" CssClass="btn btn-primary link-key"
                        ResourceKey="btnGenConfirmKey"
                        data-toggle="tooltip" ToolTip="Generate Confirm Key" />

                    <asp:LinkButton ID="btnActivateModule" runat="server" CssClass="btn btn-primary link-lock"
                        ResourceKey="btnActivateModule"
                        data-toggle="tooltip" ToolTip="Activate Module" />

                    <asp:HyperLink ID="lnkOwnerInfo" runat="server" CssClass="btn btn-primary link-info"
                        href="#pnlOwnerInfo" aria-expanded="false" ResourceKey="lnkOwnerInfo"
                        data-toggle="collapse" data-toggle-tooltip="tooltip" ToolTip="Owner Info" />
                </asp:Panel>

                <asp:Panel ID="pnlOwnerInfo" runat="server" ClientIDMode="Static">
                    <div class="owner-wrapper">
                        <asp:Label ID="lblInfoInstalledKey" runat="server"
                            Text="<strong>Installed Key: </strong>47334jLJND#@fsssdg#dvjjbb343#$$" />
                        <asp:Label ID="lblInfoConfirmKey" runat="server"
                            Text="<strong>Confirm Key: </strong>fsjjdv34347bbs33D#@#$s4jLJNdg#$" />
                        <asp:Label ID="lblInfoCompany" runat="server"
                            Text="<strong>Company: </strong>JoopSOFT Ltd." />
                        <asp:Label ID="lblInfoEmail" runat="server"
                            Text="<strong>Email: </strong><a href='mailto:iliya@devedjiev.me' title='Send mail to iliya@devedjiev.me'>iliya@devedjiev.me</a>" />
                        <asp:Label ID="lblInfoCellPhone" runat="server"
                            Text="<strong>Cell: </strong>+359878/209292" />
                        <asp:Label ID="lblInfoDomain" runat="server"
                            Text="<strong>Installed on: </strong><a href='www.devedjiev.me' title='Installed domain' target='_blank'>www.devedjiev.me</a>" />
                    </div>
                </asp:Panel>


                <asp:LinkButton ID="btnClose" runat="server" CssClass="close-action btn btn-danger link-close no-txt"
                    data-toggle="tooltip" ToolTip="Close" OnClick="btnClose_Click" />
            </div>
        </asp:Panel>

    </div>
</div>

<script type="text/javascript">
    (function ($, Sys) {

        $(document).ready(function () {

            $('.JSTestimonials #bxSlider')
                .bxSlider({
                    mode: 'horizontal',                   //{'horizontal'}, 'vertical', 'fade'
                    speed: 600,                     //{500}
                    //startSlide: 4,                  //{Int}
                    randomStart: true,              //{false}, true
                    infiniteLoop: false,             //{true}, false
                    easing: 'easeInOutBack',                   //Selected values from dropdown 
                    tickerHover: true,               //{false}, true
                    adaptiveHeight: true,           //{false}, true
                    adaptiveHeightSpeed: 600,       //{500}
                    useCSS: false,                  //{true}, false

                    pager: true,                    //{true}, false
                    pagerType: 'full',             //{'full'}, 'short'
                    pagerShortSeparator: ' / ',     // Some string

                    controls: true,                  //{true}, false

                    auto: false,                     //true, {false}
                    pause: 3000,                    //{4000}
                    autoStart: false,                //{true}, false
                    autoHover: false,                //{false}, true

                    slideWidth: 300,                  //{0}
                    minSlides: 2,                   //{1}
                    maxSlides: 3,                   //{1}
                    moveSlides: 1,                  //{0}
                    slideMargin: 15                 //{0}

                });

            $('.JSTestimonials #bxSliderNoCtrls')
                .bxSlider({
                    mode: 'fade',                   //{'horizontal'}, 'vertical', 'fade'
                    speed: 600,                     //{500}
                    //startSlide: 4,                  //{Int}
                    randomStart: true,              //{false}, true
                    easing: null,                   //Selected values from dropdown 
                    tickerHover: true,               //{false}, true
                    adaptiveHeight: true,           //{false}, true
                    adaptiveHeightSpeed: 600,       //{500}
                    useCSS: true,                  //{true}, false

                    pager: true,                    //{true}, false
                    pagerType: 'short',             //{'full'}, 'short'
                    pagerShortSeparator: ' / ',     // Some string

                    controls: false,                  //{true}, false

                    auto: true,                     //true, {false}
                    pause: 3000,                    //{4000}
                    autoStart: true,                //{true}, false
                    autoHover: true,                //{false}, true

                    slideWidth: 0,                  //{0}
                    minSlides: 1,                   //{1}
                    maxSlides: 1,                   //{1}
                    moveSlides: 0,                  //{0}
                    slideMargin: 15                  //{0}

                });

            $('.JSTestimonials #bxSliderNoPgr')
                .bxSlider({
                    mode: 'horizontal',                   //{'horizontal'}, 'vertical', 'fade'
                    speed: 600,                     //{500}
                    //startSlide: 4,                  //{Int}
                    randomStart: true,              //{false}, true
                    easing: 'easeInOutElastic',                   //Selected values from dropdown 
                    tickerHover: true,               //{false}, true
                    adaptiveHeight: true,           //{false}, true
                    adaptiveHeightSpeed: 600,       //{500}
                    useCSS: false,                  //{true}, false

                    pager: false,                    //{true}, false
                    pagerType: 'full',             //{'full'}, 'short'
                    pagerShortSeparator: ' / ',     // Some string

                    controls: true,                  //{true}, false

                    auto: false,                     //true, {false}
                    pause: 3000,                    //{4000}
                    autoStart: false,                //{true}, false
                    autoHover: false,                //{false}, true

                    slideWidth: 300,                  //{0}
                    minSlides: 2,                   //{1}
                    maxSlides: 3,                   //{1}
                    moveSlides: 1,                  //{0}
                    slideMargin: 15                 //{0}

                });

            $('.JSTestimonials #bxSliderNoPgrNoCtrls')
                .bxSlider({
                    mode: 'fade',                   //{'horizontal'}, 'vertical', 'fade'
                    speed: 600,                     //{500}
                    //startSlide: 4,                  //{Int}
                    randomStart: true,              //{false}, true
                    easing: null,                   //Selected values from dropdown 
                    tickerHover: true,               //{false}, true
                    adaptiveHeight: true,           //{false}, true
                    adaptiveHeightSpeed: 600,       //{500}
                    useCSS: true,                  //{true}, false

                    pager: false,                    //{true}, false
                    pagerType: 'full',             //{'full'}, 'short'
                    pagerShortSeparator: ' / ',     // Some string

                    controls: false,                  //{true}, false

                    auto: true,                     //true, {false}
                    pause: 3000,                    //{4000}
                    autoStart: true,                //{true}, false
                    autoHover: true,                //{false}, true

                    slideWidth: 0,                  //{0}
                    minSlides: 1,                   //{1}
                    maxSlides: 1,                   //{1}
                    moveSlides: 0,                  //{0}
                    slideMargin: 15                  //{0}

                });

            $('.JSTestimonials .bx-controls .bx-controls-direction a.bx-next').addClass('btn btn-primary').html('<i class="fa fa-angle-right"></i>');
            $('.JSTestimonials .bx-controls .bx-controls-direction a.bx-prev').addClass('btn btn-primary').html('<i class="fa fa-angle-left"></i>');
        });


    })(jQuery, window.Sys);
</script>

<dnn:DnnJsInclude ID="bxSliderJs" runat="server" FilePath="//cdnjs.cloudflare.com/ajax/libs/bxslider/4.2.5/jquery.bxslider.min.js" Priority="17" />
<dnn:DnnJsInclude ID="bootstrapJs" runat="server" FilePath="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.6/js/bootstrap.min.js" Priority="18" />
<dnn:DnnJsInclude ID="bootstrapSelectJs" runat="server" FilePath="//cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.10.0/js/bootstrap-select.min.js" Priority="19" />
<dnn:DnnJsInclude ID="bootstrapColorPickerJs" runat="server" FilePath="//cdnjs.cloudflare.com/ajax/libs/bootstrap-colorpicker/2.3.3/js/bootstrap-colorpicker.min.js" Priority="20" />
<dnn:DnnJsInclude ID="mainJs" runat="server" FilePath="~/DesktopModules/JSTestimonials/Js/main.min.js" Priority="21" />
