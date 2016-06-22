<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Settings.ascx.cs" Inherits="JS.Modules.JSTestimonials.Settings" %>
<%@ Register TagName="label" TagPrefix="dnn" Src="~/controls/LabelControl.ascx" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.Client.ClientResourceManagement" Assembly="DotNetNuke.Web.Client" %>

<dnn:DnnCssInclude ID="fontAwesomeCss" runat="server" FilePath="//cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css" />
<dnn:DnnCssInclude ID="bootstrapCss" runat="server" FilePath="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.6/css/bootstrap.min.css" />
<dnn:DnnCssInclude ID="bootstrapSelectCss" runat="server" FilePath="//cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.10.0/css/bootstrap-select.min.css" />
<dnn:DnnCssInclude ID="bootstrapColorPickerCss" runat="server" FilePath="//cdnjs.cloudflare.com/ajax/libs/bootstrap-colorpicker/2.3.3/css/bootstrap-colorpicker.min.css" />

<div class="JSTestimonials">
    <div class="dnnForm settings">
        <div class="dnnFormSectionHead">
            <h3 class="dnnFormMessage dnnFormTitle dnnFormIcon no-spacing">
                <%=LocalizeString("Title")%>
                <asp:HyperLink ID="joopSoft" runat="server" />
            </h3>
            <div class="dnnFormItem JSTestimonialsMenu">
                <asp:Panel ID="headerMenu" runat="server" CssClass="dnnFormMessage one-control dnnFormTitle no-spacing">
                    <asp:Label ID="lblSubTitle" runat="server" Text="Settings" />
                </asp:Panel>
                <asp:HyperLink ID="btnAddEntry" runat="server" CssClass="btn btn-primary link-add no-txt"
                    data-toggle="tooltip" ToolTip="Add Entry" />            
            </div>
        </div>
        <fieldset>
            <div class="fieldset">
                <div class="dnnFormItem">
                    <dnn:label ID="lblLayoutOption" runat="server" />
                    <asp:RadioButtonList ID="rblLayoutOption" runat="server" CssClass="hidder-radio-option"
                        data-grouped-class=".groupLayoutOption" >
                        <asp:ListItem data-target=".simpleOption" Value="simple" Text="Simple Box" Selected="True" />
                        <asp:ListItem data-target=".bubbleOption" Value="bubble" Text="Bubble Box" />
                        <asp:ListItem data-target=".colorizeOption" Value="colorize" Text="Color Box" />
                    </asp:RadioButtonList>
                </div>
                <div class="groupLayoutOption bubbleOption dnnFormItem">
                    <dnn:Label ID="lblContentLayout" runat="server" />
                    <asp:DropDownList ID="ddContentLayout" runat="server" CssClass="selectpicker single-select form-control">
                        <asp:ListItem Value="rounded" Text="Rounded" />
                        <asp:ListItem Value="squared" Text="Squared" />
                        <asp:ListItem Value="none" Text="None" Selected="True" />
                    </asp:DropDownList>
                </div>
                <div class="dnnFormItem">
                    <dnn:Label ID="lblContentBoxPosition" runat="server" />
                    <asp:DropDownList ID="ddContentBoxPosition" runat="server" CssClass="selectpicker single-select form-control check-equal-two-options"
                        data-target=".authorPosition" data-equal="top" data-equal-two="bottom">
                        <asp:ListItem Value="top" Text="Top" />
                        <asp:ListItem Value="right" Text="Right" />
                        <asp:ListItem Value="bottom" Text="Bottom" Selected="True" />
                        <asp:ListItem Value="left" Text="Left" />
                    </asp:DropDownList>
                </div>
                <div class="authorPosition dnnFormItem">
                    <dnn:Label ID="lblAuthorBoxPosition" runat="server" />
                    <asp:DropDownList ID="ddAuthorBoxPosition" runat="server" CssClass="selectpicker single-select form-control">
                        <asp:ListItem Value="left" Text="Left" />
                        <asp:ListItem Value="center" Text="Center" />
                        <asp:ListItem Value="right" Text="Right" />
                    </asp:DropDownList>
                </div>
                <div class="dnnFormItem group">
                    <dnn:Label ID="lblAuthorBoxTextColor" runat="server" />
                    <div class="input-group colorpicker-component color-picker">
                        <asp:TextBox ID="txtAuthorBoxTextColor" runat="server" CssClass="form-control grouped squared-box" 
                            Placeholder="Enter Text Color" />
                        <span class="input-group-addon"><i></i></span>
                    </div>
                </div>
                <div class="groupLayoutOption colorizeOption dnnFormItem group">
                    <dnn:Label ID="lblAuthorBoxBgColor" runat="server" />
                    <div class="input-group colorpicker-component color-picker">
                        <asp:TextBox ID="txtAuthorBoxBgColor" runat="server" CssClass="form-control grouped squared-box" 
                            Placeholder="Enter Background Color" />
                        <span class="input-group-addon"><i></i></span>
                    </div>
                </div>
                <div class="dnnFormItem group">
                    <dnn:Label ID="lblContentBoxTextColor" runat="server" />
                    <div class="input-group colorpicker-component color-picker">
                        <asp:TextBox ID="txtContentBoxTextColor" runat="server" CssClass="form-control grouped squared-box" 
                            Placeholder="Enter Text Color" />
                        <span class="input-group-addon"><i></i></span>
                    </div>
                </div>
                <div class="groupLayoutOption bubbleOption colorizeOption dnnFormItem group">
                    <dnn:Label ID="lblContentBoxBgColor" runat="server" />
                    <div class="input-group colorpicker-component color-picker">
                        <asp:TextBox ID="txtContentBoxBgColor" runat="server" CssClass="form-control grouped squared-box" 
                            Placeholder="Enter Background Color" />
                        <span class="input-group-addon"><i></i></span>
                    </div>
                </div>
            </div>
            <div class="fieldset">
                <div class="dnnFormItem">
                    <dnn:Label ID="lblViewMode" runat="server" />
                    <asp:RadioButtonList ID="rblViewModeList" runat="server" CssClass="" >
                        <asp:ListItem Value="grid" Text="Grid" Selected="True" />
                        <asp:ListItem Value="list" Text="List" />
                    </asp:RadioButtonList>
                </div>                
            </div>
            <div class="fieldset">
                <div class="dnnFormItem">
                    <dnn:Label ID="lblUseSlider" runat="server" />
                    <asp:CheckBox ID="cbUseSlider" runat="server" CssClass="hidder"
                        data-target=".sliderOptions"
                        Checked="true" />
                </div>                
                <div class="sliderOptions dnnFormItem">
                    <dnn:Label ID="lblSlideMode" runat="server" />
                    <asp:DropDownList ID="ddSlideMode" runat="server" CssClass="selectpicker single-select form-control check-equal-two-options"
                        data-target=".slidingMode" data-equal="horizontal" data-equal-two="vertical">
                        <asp:ListItem Value="horizontal" Text="Horizontal" Selected="True"/>
                        <asp:ListItem Value="vertical" Text="Vertical" />
                        <asp:ListItem Value="fade" Text="Fade" />
                    </asp:DropDownList>                    
                </div>
                <div class="sliderOptions dnnFormItem">
                    <dnn:Label ID="lblSlideMargin" runat="server" />
                    <asp:TextBox ID="txtSlideMargin" runat="server" CssClass="form-control"
                        Placeholder="Enter Margin Between Each Slide"
                        Text="0" />
                </div>
                <div class="sliderOptions dnnFormItem">
                    <dnn:Label ID="lblRandomStart" runat="server" />
                    <asp:CheckBox ID="cbRandomStart" runat="server" />
                </div>
                <div class="sliderOptions dnnFormItem">
                    <dnn:Label ID="lblInfiniteLoop" runat="server" />
                    <asp:CheckBox ID="cbInfiniteLoop" runat="server" 
                        Checked="true" />
                </div>
                <div class="sliderOptions slidingMode dnnFormItem">
                    <dnn:Label ID="lblEasing" runat="server" />
                    <asp:DropDownList ID="ddEasing" runat="server" CssClass="selectpicker single-select form-control">
                        <asp:ListItem Value="null"              Text="Select Easing" Selected="True" />
                        <asp:ListItem Value="swing"             Text="Swing" />
                        <asp:ListItem Value="easeInQuad"        Text="Ease In Quad" />
                        <asp:ListItem Value="easeOutQuad"       Text="Ease Out Quad" />
                        <asp:ListItem Value="easeInOutQuad"     Text="Ease In Out Quad" />
                        <asp:ListItem Value="easeInCubic"       Text="Ease In Cubic" />
                        <asp:ListItem Value="easeOutCubic"      Text="Ease Out Cubic" />
                        <asp:ListItem Value="easeInOutCubic"    Text="Ease In Out Cubic" />
                        <asp:ListItem Value="easeInQuart"       Text="Ease In Quart" />
                        <asp:ListItem Value="easeOutQuart"      Text="Ease Out Quart" />
                        <asp:ListItem Value="easeInOutQuart"    Text="Ease In Out Quart" />
                        <asp:ListItem Value="easeInQuint"       Text="Ease In Quint" />
                        <asp:ListItem Value="easeOutQuint"      Text="Ease Out Quint" />
                        <asp:ListItem Value="easeInOutQuint"    Text="Ease In Out Quint" />
                        <asp:ListItem Value="easeInSine"        Text="Ease In Sine" />
                        <asp:ListItem Value="easeOutSine"       Text="Ease Out Sine" />
                        <asp:ListItem Value="easeInOutSine"     Text="Ease In Out Sine" />
                        <asp:ListItem Value="easeInExpo"        Text="Ease In Expo" />
                        <asp:ListItem Value="easeOutExpo"       Text="Ease Out Expo" />
                        <asp:ListItem Value="easeInOutExpo"     Text="Ease In Out Expo" />
                        <asp:ListItem Value="easeInCirc"        Text="Ease In Circ" />
                        <asp:ListItem Value="easeOutCirc"       Text="Ease Out Circ" />
                        <asp:ListItem Value="easeInOutCirc"     Text="Ease In Out Circ" />
                        <asp:ListItem Value="easeInElastic"     Text="Ease In Elastic" />
                        <asp:ListItem Value="easeOutElastic"    Text="Ease Out Elastic" />
                        <asp:ListItem Value="easeInOutElastic"  Text="Ease In Out Elastic" />
                        <asp:ListItem Value="easeInBack"        Text="Ease In Back" />
                        <asp:ListItem Value="easeOutBack"       Text="Ease OutBack" />
                        <asp:ListItem Value="easeInOutBack"     Text="Ease In Out Back" />
                        <asp:ListItem Value="easeInBounce"      Text="Ease In Bounce" />
                        <asp:ListItem Value="easeOutBounce"     Text="Ease Out Bounce" />
                        <asp:ListItem Value="easeInOutBounce"   Text="Ease In Out Bounce" />
                    </asp:DropDownList>
                </div>                
                <div class="sliderOptions dnnFormItem">
                    <dnn:Label ID="lblPager" runat="server" />
                    <asp:CheckBox ID="cbPager" runat="server"
                        Checked="true" />
                </div>
                <div class="sliderOptions dnnFormItem">
                    <dnn:Label ID="lblPagerType" runat="server" />
                    <asp:RadioButtonList ID="rblPagerType" runat="server" CssClass="hidder-radio-equal"
                        data-target=".shortType" data-equal="short" >
                        <asp:ListItem Value="full" Text="Full" Selected="True" />
                        <asp:ListItem Value="short" Text="Short" />
                    </asp:RadioButtonList>
                </div>
                <div class="sliderOptions shortType dnnFormItem">
                    <dnn:Label ID="lblPagerSeparator" runat="server" />
                    <asp:TextBox ID="txtPagerSeparator" runat="server" CssClass="form-control"
                        Placeholder="Enter Separate Pager Symbol"
                        Text="/" />
                </div>
                <div class="sliderOptions dnnFormItem">
                    <dnn:Label ID="lblControls" runat="server" />
                    <asp:CheckBox ID="cbControls" runat="server"
                        Checked="true" />
                </div>
                <div class="sliderOptions dnnFormItem">
                    <dnn:Label ID="lblAutoTransition" runat="server" />
                    <asp:CheckBox ID="cbAutoTransition" runat="server"
                        Checked="true" />
                </div>
                <div class="sliderOptions dnnFormItem">
                    <dnn:Label ID="lblAutoStartPlaying" runat="server" />
                    <asp:CheckBox ID="cbAutoStartPlayng" runat="server"
                        Checked="true" />
                </div>
                <div class="sliderOptions slidingMode dnnFormItem">
                    <dnn:Label ID="lblSlideWidth" runat="server" />
                    <asp:TextBox ID="txtSlideWidth" runat="server" CssClass="form-control"
                        Placeholder="Enter Slide Width"
                        Text="0" />
                </div>
                <div class="sliderOptions dnnFormItem">
                    <dnn:Label ID="lblMinSlides" runat="server" />
                    <asp:TextBox ID="txtMinSlides" runat="server" CssClass="form-control"
                        Placeholder="Enter Minimum Slides Counts"
                        Text="1" />
                </div>
                <div class="sliderOptions dnnFormItem">
                    <dnn:Label ID="lblMaxSlides" runat="server" />
                    <asp:TextBox ID="txtMaxSlides" runat="server" CssClass="form-control"
                        Placeholder="Enter Maximum Slides Counts"
                        Text="1" />
                </div>
                <div class="sliderOptions dnnFormItem">
                    <dnn:Label ID="lblMoveSlides" runat="server" />
                    <asp:TextBox ID="txtMoveSlies" runat="server" CssClass="form-control"
                        Placeholder="Enter Moving Slides Counts"
                        Text="0" />
                </div>
            </div>
            <div class="fieldset">
                <div class="dnnFormItem">
                    <dnn:Label ID="lblShowImage" runat="server" />
                    <asp:CheckBox ID="cbShowImage" runat="server" CssClass="hidder"
                        data-target=".imageOptions" Checked="true" />
                </div>
                <div class="imageOptions dnnFormItem">
                    <dnn:Label ID="lblImageLayout" runat="server" />
                    <asp:DropDownList ID="ddImageLayout" runat="server" CssClass="selectpicker single-select form-control">
                        <asp:ListItem Value="circle" Text="Circle" />
                        <asp:ListItem Value="squared" Text="Square" />
                        <asp:ListItem Value="edge" Text="Rounded Edge" />
                    </asp:DropDownList>
                </div>
                <div class="imageOptions dnnFormItem">
                    <dnn:Label ID="lblImageSize" runat="server" />
                    <asp:RadioButtonList ID="rblImageSize" runat="server" >
                        <asp:ListItem Value="x48" Text="Smaller (48 x 48 pixels)" />
                        <asp:ListItem Value="x64" Text="Bigger (64 x 64 pixels)" Selected="True" />
                    </asp:RadioButtonList>
                </div>
            </div>
            <div class="fieldset">
                <div class="dnnFormItem">
                    <dnn:Label ID="lblShowRatings" runat="server" />
                    <asp:CheckBox ID="cbShowRatings" runat="server" CssClass="hidder"
                        data-target=".colorizedStars" Checked="true" />
                </div>
                <div class="colorizedStars dnnFormItem group">
                    <dnn:Label ID="lblColorRatingStars" runat="server" />
                    <div class="input-group colorpicker-component color-picker">
                        <asp:TextBox ID="txtColorRatingStars" runat="server" CssClass="form-control grouped squared-box" 
                            Placeholder="Enter Stars Color" />
                        <span class="input-group-addon"><i></i></span>
                    </div>
                </div>
            </div>
            <div class="fieldset">
                <div class="dnnFormItem">
                    <dnn:Label ID="lblShowCompany" runat="server" />
                    <asp:CheckBox ID="cbShowCompany" runat="server"
                        Checked="true" />
                </div>
            </div>
            <div class="fieldset">
                <div class="dnnFormItem">
                    <dnn:Label ID="lblShowCompanyPosition" runat="server" />
                    <asp:CheckBox ID="cbShowCompanyPosition" runat="server"
                        Checked="true" />
                </div>
            </div>
            <div class="fieldset">
                <div class="dnnFormItem">
                    <dnn:Label ID="lblShowWebsite" runat="server" />
                    <asp:CheckBox ID="cbShowWebsite" runat="server" CssClass="hidder"
                        data-target=".websiteOptions" Checked="true" />
                </div>
                <div class="websiteOptions dnnFormItem">
                    <dnn:Label ID="lblTargetWindow" runat="server" />
                    <asp:DropDownList ID="ddTargetWindow" runat="server" CssClass="selectpicker single-select form-control">
                        <asp:ListItem Value="blank" Text="Blank" />
                        <asp:ListItem Value="self" Text="Self" />
                        <asp:ListItem Value="parent" Text="Parent" />
                        <asp:ListItem Value="top" Text="Top" />
                    </asp:DropDownList>
                </div>
            </div>
            <div class="fieldset">
                <div class="dnnFormItem">
                    <dnn:Label ID="lblShowQuote" runat="server" />
                    <asp:CheckBox ID="cbShowQuote" runat="server" CssClass="hidder"
                        data-target=".quoteOptions" />
                </div>
                <div class="quoteOptions dnnFormItem">
                    <dnn:Label ID="lblQuotePosition" runat="server" />
                    <asp:DropDownList ID="ddQuotePosition" runat="server" CssClass="selectpicker single-select form-control">
                        <asp:ListItem Value="before" Text="Before" />
                        <asp:ListItem Value="after" Text="After" />
                        <asp:ListItem Value="both" Text="Both" />
                    </asp:DropDownList>
                </div>
            </div>
            <div class="fieldset">
                <div class="dnnFormItem">
                    <dnn:Label ID="lblShowDate" runat="server" />
                    <asp:CheckBox ID="cbShowDate" runat="server" />
                </div>
            </div>
            <div class="fieldset">
                <div class="dnnFormItem">
                    <dnn:Label ID="lblFontStylize" runat="server" />
                    <asp:TextBox ID="txtFontStylize" runat="server" CssClass="form-control" 
                        Placeholder="Enter Font Style" />                
                </div>
            </div>
            <div class="fieldset">
                <div class="dnnFormItem">
                    <dnn:Label ID="lblFontSize" runat="server" />
                    <asp:TextBox ID="txtFontsSize" runat="server" CssClass="form-control"
                        Placeholder="Enter Font Size" />                
                </div>
            </div>
            <div class="fieldset">
                <div class="dnnFormItem">
                    <dnn:Label ID="lblIsSorted" runat="server" />
                    <asp:CheckBox ID="cbIsSorted" runat="server" CssClass="hidder" 
                        data-target=".pnlSortNews" Checked="true" />
                </div>
                <asp:Panel ID="pnlSortBy" runat="server" class="pnlSortNews dnnFormItem group">
                    <dnn:Label ID="lblSortBy" runat="server" />
                    <asp:DropDownList ID="sortByList" runat="server" CssClass="selectpicker single-select form-control" />
                </asp:Panel>
                <asp:Panel ID="pnlSortType" runat="server" class="pnlSortNews dnnFormItem group">
                    <dnn:Label ID="lblSortType" runat="server" />
                    <asp:DropDownList ID="sortTypeList" runat="server" CssClass="selectpicker single-select form-control" />
                </asp:Panel>
            </div>

            <asp:LinkButton ID="btnScrollTop" runat="server" CssClass="scroll-action btn btn-primary link-up no-txt" 
                ToolTip="Top"/>
        </fieldset>
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