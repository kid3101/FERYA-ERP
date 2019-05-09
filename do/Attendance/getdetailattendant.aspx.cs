using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class do_Attendance_getdetailattendant : System.Web.UI.Page
{
    public List<Attendant> at;
    public List<OutputCC> list = new List<OutputCC>();
    protected void Page_Load(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(Request["id"]);
        AttendantManager am = new AttendantManager();
        at = am.GetAttendantByEmployeeID(id);
        at.OrderBy(n => n.PhotoTime).ToList();

        foreach (var item in at)
        {
            if (list.Count == 0 || /*item.PhotoType==1*/  list.FirstOrDefault(t=>t.PhotoTimeIn.Value.Date == item.PhotoTime.Value.Date && t.PhotoType == "1") == null)
            {
                list.Add(new OutputCC { PhotoTimeIn = item.PhotoTime, wk = item.WorkingLocation, at = item.Employee, EmployeeId = item.EmployeeId,/* PhotoTime = item.PhotoTime,*/ PhotoURLIN = "<img src = ../Upload/Attendant/" + item.PhotoURL + " width='180px' height='180px'/>", WorkingDate = item.WorkingDate, PhotoType = item.PhotoType.ToString() });
            }
            else
            {
                var checkUser = list.LastOrDefault(t =>  t.PhotoTimeIn.Value.Date == item.PhotoTime.Value.Date && t.PhotoType == "1");
                if (checkUser != null)
                {

                    checkUser.PhoToTimeTest = checkUser.PhotoTime + " - " + item.PhotoTime;
                    checkUser.PhotoTimeOut = item.PhotoTime;
                    //checkUser.PhotoURL = "<img src = ../Upload/Attendant/" + checkUser.PhotoURL + " width='200px'/>" + " - " + " <img src = ../Upload/Attendant/" + item.PhotoURL + " width='200px'/>";
                    checkUser.PhotoURLOUT = "<img src = ../Upload/Attendant/"+item.PhotoURL + " width='180px' height='180px'/>";
                }

            }
        }
    }
}