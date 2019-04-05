using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Setting_EditDepartment : System.Web.UI.Page
{
    public List<Department> listDepartment;

    public List<Office> listOffice;

    public List<Company> listCompany;

    public List<Employee> listEmployees;

    protected void Page_Load(object sender, EventArgs e)
    {
        DepartmentManager dm = new DepartmentManager();
        listDepartment = dm.GetDepartment();

        OfficeManager om = new OfficeManager();
        listOffice = om.GetOffice();

        CompanyManager cm = new CompanyManager();
        listCompany = cm.GetCompany();

        EmployeeManager em = new EmployeeManager();
        listEmployees = em.GetUser();
    }
}