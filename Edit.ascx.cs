/*
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
using DotNetNuke.Entities.Users;
using JS.Modules.JSTestimonials.Components;
using DotNetNuke.Services.Exceptions;

namespace JS.Modules.JSTestimonials
{
    /// -----------------------------------------------------------------------------
    /// <summary>   
    /// The Edit class is used to manage content
    /// 
    /// Typically your edit control would be used to create new content, or edit existing content within your module.
    /// The ControlKey for this control is "Edit", and is defined in the manifest (.dnn) file.
    /// 
    /// Because the control inherits from JSTestimonialsModuleBase you have access to any custom properties
    /// defined there, as well as properties from DNN such as PortalId, ModuleId, TabId, UserId and many more.
    /// 
    /// </summary>
    /// -----------------------------------------------------------------------------
    public partial class Edit : JSTestimonialsModuleBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           try
           {               
               if (!Page.IsPostBack)
               {
                    joopSoft.NavigateUrl = "http://www.joopsoft.com/";
                    joopSoft.Text = "JoopSOFT.com";
                    joopSoft.ToolTip = "JoopSOFT.com";
                    joopSoft.CssClass = "link-dev";
                    joopSoft.Target = "_blank";
                    //btnEdit.NavigateUrl = EditUrl();
                    //btnLists.NavigateUrl = EditUrl("Select");
                    //string PageName = TabController.CurrentPage.TabPath.Remove(0, 1);
                    //lnkSettings.NavigateUrl = "javascript:dnnModal.show('http://" + Request.Url.Host + PageName + "/ctl/Module/ModuleId/" + ModuleId + "?ReturnURL=" + PageName + "&amp;popUp=true#msSpecificSettings',/*showReturn*/false,550,950,true,'')";
                    //FillImageLists();
                    //ShowHideMenuControls("");
                }
           }
           catch (Exception exc) //Module failed to load
           {
               Exceptions.ProcessModuleLoadException(this, exc);
           }
        }

    }
}