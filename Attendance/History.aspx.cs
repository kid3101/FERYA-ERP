using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Attendance_History : System.Web.UI.Page
{
    public List<Department> listDepartment;

    public List<Office> listOffice;

    //public List<Company> listCompany;

    //public List<Employee> listEmployees;

    public List<Attendant> listAttendant;
    public List<OutputCC> list = new List<OutputCC>();

    protected void Page_Load(object sender, EventArgs e)
    {
        AttendantManager am = new AttendantManager();
        listAttendant = am.GetAttendant();
        listAttendant = listAttendant.OrderBy(n => n.PhotoTime).ToList();
        
        foreach (var item in listAttendant)
       {
            if (list.Count == 0 || list.FirstOrDefault(t => t.EmployeeId == item.EmployeeId && t.PhotoTime.Value.Date == item.PhotoTime.Value.Date) == null)
            {
                list.Add(new OutputCC { PhoToTimeTest = item.PhotoTime.ToString(), wk=item.WorkingLocation, at = item.Employee, EmployeeId = item.EmployeeId, PhotoTime = item.PhotoTime, PhotoURL=item.PhotoURL, WorkingDate=item.WorkingDate, PhotoType=item.PhotoType });
            }
            else
            {
                var checkUser = list.FirstOrDefault(t => t.EmployeeId == item.EmployeeId && t.PhotoTime.Value.Date == item.PhotoTime.Value.Date);
                checkUser.PhoToTimeTest = checkUser.PhotoTime + " - " + item.PhotoTime;
            }
        }
    }
}