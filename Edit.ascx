<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Edit.ascx.cs" Inherits="JS.Modules.JSTestimonials.Edit" %>
<%@ Register TagName="label" TagPrefix="dnn" Src="~/controls/LabelControl.ascx" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.Client.ClientResourceManagement" Assembly="DotNetNuke.Web.Client" %>

<dnn:DnnCssInclude ID="fontAwesomeCss" runat="server" FilePath="//cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css" />
<dnn:DnnCssInclude ID="bootstrapCss" runat="server" FilePath="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.6/css/bootstrap.min.css" />
<dnn:DnnCssInclude ID="bootstrapSelectCss" runat="server" FilePath="//cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.10.0/css/bootstrap-select.min.css" />
<dnn:DnnCssInclude ID="bootstrapColorPickerCss" runat="server" FilePath="//cdnjs.cloudflare.com/ajax/libs/bootstrap-colorpicker/2.3.3/css/bootstrap-colorpicker.min.css" />

<div class="JSTestimonials">
    <div class="dnnForm add-new">
        <div class="dnnFormSectionHead">
            <h3 class="dnnFormMessage dnnFormTitle dnnFormIcon no-spacing">
                <%=LocalizeString("Title")%>
                <asp:HyperLink ID="joopSoft" runat="server" />
            </h3>
            <div class="dnnFormItem JSTestimonialsMenu">
                <asp:Panel ID="headerMenu" runat="server" CssClass="dnnFormMessage one-control dnnFormTitle no-spacing">
                    <asp:Label ID="lblSubTitle" runat="server" Text="Add/Edit Entries" />
                </asp:Panel>
                <asp:HyperLink ID="lnkSettings" runat="server" CssClass="btn btn-primary link-settings no-txt"
                    data-toggle="tooltip" ToolTip="Settings" />
            </div>
        </div>
        <fieldset>
            <div class="fieldset">
                <div class="dnnFormItem">
                    <dnn:label ID="lblCategoryOption" runat="server" />
                    <asp:RadioButtonList ID="rblCategoryOption" runat="server" CssClass="hidder-radio-option"
                        data-grouped-class=".categoryOption" >
                        <asp:ListItem data-target=".createOption" Value="new" Text="Create New"></asp:ListItem>
                        <asp:ListItem data-target=".selectOption" Value="list" Text="Select from Available List" Selected="True"></asp:ListItem>
                    </asp:RadioButtonList>
                </div>
            </div>
            <div class="fieldset">
                <div class="categoryOption createOption dnnFormItem">
                    <dnn:label ID="lblCategoryName" runat="server" />
                    <asp:TextBox ID="txtCategoryName" runat="server" CssClass="form-control"
                        Placeholder="Enter Category Name" />
                </div>
                <div class="categoryOption selectOption dnnFormItem no-spacing">
                    <dnn:label ID="lblCategoryList" runat="server" />
                    <asp:DropDownList ID="ddCategoryList" runat="server" CssClass="selectpicker form-control single-select">
                        <asp:ListItem Value="category1" Text="Category 1" />
                        <asp:ListItem Value="category2" Text="Category 2" />
                        <asp:ListItem Value="category3" Text="Category 3" />
                    </asp:DropDownList>
                </div>
            </div>
            <div class="fieldset">
                <div class="dnnFormItem">
                    <dnn:Label ID="lblAuthorName" runat="server" />
                    <asp:TextBox ID="txtAuthorName" runat="server" CssClass="form-control" 
                        Placeholder="Enter Author Name" />                
                </div>
            </div>
            <div class="fieldset">
                <div class="dnnFormItem">
                    <dnn:Label ID="lblEmailAddress" runat="server" />
                    <asp:TextBox ID="txtEmailAddress" runat="server" CssClass="form-control" 
                        Placeholder="Enter Email Address"/>                
                </div>
            </div>
            <div class="fieldset">
                <div class="dnnFormItem">
                    <dnn:Label ID="lblCompany" runat="server" />
                    <asp:TextBox ID="txtCompany" runat="server" CssClass="form-control" 
                        Placeholder="Enter Company" />                
                </div>
            </div>
            <div class="fieldset">
                <div class="dnnFormItem">
                    <dnn:Label ID="lblCompanyPosition" runat="server" />
                    <asp:TextBox ID="txtCompanyPosition" runat="server" CssClass="form-control" 
                        Placeholder="Enter Company Position" />                
                </div>
            </div>
            <div class="fieldset">
                <div class="dnnFormItem">
                    <dnn:Label ID="lblWebsite" runat="server" />
                    <asp:TextBox ID="txtWebsite" runat="server" CssClass="form-control" 
                        Placeholder="Enter Website" />                
                </div>
            </div>
            <div class="fieldset">
                <div class="dnnFormItem">
                    <dnn:Label ID="lblRating" runat="server" />
                    <asp:DropDownList ID="ddRating" runat="server" CssClass="selectpicker single-select form-control">
                        <asp:ListItem class="link-5-star" Value="excellent" Text="Excellent"></asp:ListItem>
                        <asp:ListItem class="link-4-star" Value="very-good" Text="Very Good"></asp:ListItem>
                        <asp:ListItem class="link-3-star" Value="good" Text="Good"></asp:ListItem>
                        <asp:ListItem class="link-2-star" Value="average" Text="Average"></asp:ListItem>
                        <asp:ListItem class="link-1-star" Value="poor" Text="Poor"></asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <div class="fieldset">
                <div class="dnnFormItem">
                    <dnn:label ID="lblAuthorImage" runat="server" />
                    <asp:FileUpload ID="btnImageSelect" runat="server" data-target=".btnImgUpload" />
                    <asp:LinkButton ID="btnImageUpload" runat="server" CssClass="btnImgUpload dnnSecondaryAction link-upload"
                        ResourceKey="btnUpload" />
                </div>
                <asp:Panel ID="pnlImgSelected" runat="server" CssClass="dnnFormItem group" Visible="false">
                    <dnn:label ID="lblImgSelected" runat="server" />
                    <asp:Image ID="imgPreview" runat="server" CssClass="rotator-image"
                        AlternateText="Rotator Image" ImageUrl="~/DesktopModules/JSTestimonials/Images/Default Image.svg" />
                    <asp:LinkButton ID="btnDeleteImg" runat="server" CssClass="btn btn-danger link-delete"
                        ResourceKey="btnDeleteImg" />
                    <asp:TextBox ID="txtImageUrl" runat="server" CssClass="form-control txt-img-url" Enabled="false" />
                </asp:Panel>
            </div>
            <div class="fieldset">
                <div class="dnnFormItem">
                    <dnn:Label ID="lblContent" runat="server" />
                    <asp:TextBox ID="txtContent" runat="server" CssClass="form-control"
                        TextMode="MultiLine" Rows="3" Columns="20"
                        Placeholder="Enter Testimonial Content" />
                </div>
            </div>

            <asp:LinkButton ID="btnScrollTop" runat="server" CssClass="scroll-action btn btn-primary link-up no-txt"
                ToolTip="Top" />
        </fieldset>
    </div>
    <div class="dnnForm controls">
        <div class="dnnFormItem">
            <asp:LinkButton ID="btnAddTestimonial" runat="server" CssClass="btn btn-primary link-save"
                ResourceKey="btnAddTestimonial" />
            <asp:LinkButton ID="btnCancel" runat="server" CssClass="btn btn-default link-cancel"
                ResourceKey="btnCancel" />
        </div>
    </div>
</div>

<script type="text/javascript">
    $(function () {

    });
</script>

<dnn:DnnJsInclude ID="bootstrapJs" runat="server" FilePath="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.6/js/bootstrap.min.js" Priority="18" />
<dnn:DnnJsInclude ID="bootstrapSelectJs" runat="server" FilePath="//cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.10.0/js/bootstrap-select.min.js" Priority="19" />
<dnn:DnnJsInclude ID="bootstrapColorPickerJs" runat="server" FilePath="//cdnjs.cloudflare.com/ajax/libs/bootstrap-colorpicker/2.3.3/js/bootstrap-colorpicker.min.js" Priority="20" />
<dnn:DnnJsInclude ID="mainJs" runat="server" FilePath="~/DesktopModules/JSTestimonials/Js/main.min.js" Priority="21" />