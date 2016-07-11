﻿/*
' Copyright (c) 2016  JoopSOFT.com
'  All rights reserved.
' 
' THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED
' TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
' THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF
' CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
' DEALINGS IN THE SOFTWARE.
' 
*/

using System;
using System.Web.UI.WebControls;
using JS.Modules.JSTestimonials.Components;
using DotNetNuke.Security;
using DotNetNuke.Services.Exceptions;
using DotNetNuke.Entities.Modules;
using DotNetNuke.Entities.Modules.Actions;
using DotNetNuke.Services.Localization;
using DotNetNuke.UI.Utilities;

namespace JS.Modules.JSTestimonials
{
    /// -----------------------------------------------------------------------------
    /// <summary>
    /// The View class displays the content
    /// 
    /// Typically your view control would be used to display content or functionality in your module.
    /// 
    /// View may be the only control you have in your project depending on the complexity of your module
    /// 
    /// Because the control inherits from JSTestimonialsModuleBase you have access to any custom properties
    /// defined there, as well as properties from DNN such as PortalId, ModuleId, TabId, UserId and many more.
    /// 
    /// </summary>
    /// -----------------------------------------------------------------------------
    public partial class View : JSTestimonialsModuleBase, IActionable
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                //var tc = new ItemController();
                //rptItemList.DataSource = tc.GetItems(ModuleId);
                //rptItemList.DataBind();
                //lnkSettings.NavigateUrl = "javascript:dnnModal.show('http://dnndev.me/DNN-Modules-DAL2/Testimonials/ctl/Module/ModuleId/" + ModuleId + "?ReturnURL=/JS-FAQ&amp;popUp=true#msSpecifiSettings',/*showReturn*/false,550,950,true,'')";

                //Code should be improved
                lblContentHolder.Text = "<strong class='link-key'>Installed Key: </strong>jDEnn#$%rfdDGessd&$^Iskh";
                lblContentHolder.CssClass = "content-holder warning";

                lblContentHolderActivate.Text = "<strong class='link-unlock'>Activated</strong>";
                lblContentHolderActivate.CssClass = "content-holder success";

                lnkCheckLicenseKey.Text = "Activate";
                lnkCheckLicenseKey.ToolTip = "Activate Module";
                lnkCheckLicenseKey.CssClass = "btn btn-danger link-lock";

                lnkGetOwnerInfo.ToolTip = "Owner Info";
                lnkGetOwnerInfo.CssClass = "btn btn-success link-info no-txt";

                lblInfoInstalledKey.Text = "<strong class='link-key'>Installed Key: </strong>47334jLJND#@fsssdg#dvjjbb343#$$";
                lblInfoConfirmKey.Text = "<strong class='link-key'>Confirm Key: </strong>fsjjdv34347bbs33D#@#$s4jLJNdg#$";
                lblInfoCompany.Text = "<strong class='link-company'>Company: </strong>JoopSOFT Ltd.";
                lblInfoEmail.Text = "<strong class='link-mail'>Email: </strong><a href='mailto:iliya@devedjiev.me' title='Send mail to iliya@devedjiev.me'>iliya@devedjiev.me</a>";
                lblInfoCellPhone.Text = "<strong class='link-phone'>Phone: </strong>+359878/209292";
                lblInfoDomain.Text = "<strong class='link-globe'>Installed on: </strong><a href='www.devedjiev.me' title='Installed on www.devedjiev.me' target='_blank'>www.devedjiev.me</a>";

                //End of this

            }
            catch (Exception exc) //Module failed to load
            {
                Exceptions.ProcessModuleLoadException(this, exc);
            }
        }

        //protected void rptItemListOnItemDataBound(object sender, RepeaterItemEventArgs e)
        //{
        //    if (e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.Item)
        //    {
        //        var lnkEdit = e.Item.FindControl("lnkEdit") as HyperLink;
        //        var lnkDelete = e.Item.FindControl("lnkDelete") as LinkButton;
        //
        //        var pnlAdminControls = e.Item.FindControl("pnlAdmin") as Panel;
        //
        //        var t = (Item)e.Item.DataItem;
        //
        //        if (IsEditable && lnkDelete != null && lnkEdit != null && pnlAdminControls != null)
        //        {
        //            pnlAdminControls.Visible = true;
        //            lnkDelete.CommandArgument = t.ItemId.ToString();
        //            lnkDelete.Enabled = lnkDelete.Visible = lnkEdit.Enabled = lnkEdit.Visible = true;
        //
        //            lnkEdit.NavigateUrl = EditUrl(string.Empty, string.Empty, "Edit", "tid=" + t.ItemId);
        //
        //            ClientAPI.AddButtonConfirm(lnkDelete, Localization.GetString("ConfirmDelete", LocalResourceFile));
        //        }
        //        else
        //        {
        //            pnlAdminControls.Visible = false;
        //        }
        //    }
        //}


        // public void rptItemListOnItemCommand(object source, RepeaterCommandEventArgs e)
        // {
        //     if (e.CommandName == "Edit")
        //     {
        //         Response.Redirect(EditUrl(string.Empty, string.Empty, "Edit", "tid=" + e.CommandArgument));
        //     }
        //
        //     if (e.CommandName == "Delete")
        //     {
        //         var tc = new ItemController();
        //         tc.DeleteItem(Convert.ToInt32(e.CommandArgument), ModuleId);
        //     }
        //     Response.Redirect(DotNetNuke.Common.Globals.NavigateURL());
        // }

        protected void btnClose_Click(object sender, EventArgs e)
        {
            pnlPopUp.Visible = false;

        }

        protected void lnkMoreInfo_Click(object sender, EventArgs e)
        {
            pnlPopUp.Visible = true;
            pnlPopUp.CssClass = "popup overlay success";
            lblPopUpIcon.CssClass = "popup-icon link-info";
            lblPopUpTitle.Text = "Owner Info";
            pnlInputGroups.Visible = false;
            pnlAlerts.Visible = false;
            pnlOwnerInfo.Visible = true;
            pnlOwnerInfo.CssClass = "pnl-owner-info";
        }

        protected void lnkCheckLicenseKey_Click(object sender, EventArgs e)
        {
            pnlPopUp.Visible = true;
            pnlPopUp.CssClass = "popup overlay warning";
            lblPopUpIcon.CssClass = "popup-icon link-lock";
            lblPopUpTitle.Text = "Activate Module";
            pnlInputGroups.Visible = true;
            pnlAlerts.Visible = true;
            pnlOwnerInfo.Visible = false;
            txtKey.Focus();
            txtKey.Attributes["Placeholder"] = "Enter Confirmation Key";
            lblKey.Text = "<strong>Confirmation Key</strong>";
            lnkSubmit.CssClass = "btn btn-primary link-lock no-txt";
            lnkSubmit.ToolTip = "Activate Module";
        }

        public ModuleActionCollection ModuleActions
        {
            get
            {
                var actions = new ModuleActionCollection
                   {
                       {
                           GetNextActionID(), Localization.GetString("EditModule", LocalResourceFile), "", "", "",
                           EditUrl(), false, SecurityAccessLevel.Edit, true, false
                       }
                   };
                return actions;
            }
        }
    }
}