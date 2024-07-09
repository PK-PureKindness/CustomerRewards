report 50105 "Main Students Report"
{
    ApplicationArea = All;
    Caption = 'Main Students Report';
    UsageCategory = ReportsAndAnalysis;
    RDLCLayout = 'Main Students Report.RDL';
    DefaultLayout = RDLC;

    dataset
    {
        dataitem(MainStudents; MainStudents)
        {
            column(StudentNumber; "Student Number")
            {
            }
            column(FullName; "Full Name")
            {
            }
            column(Age; Age)
            {
            }
            column(Course; Course)
            {
            }
            column(EmailAddress; "Email Address")
            {
            }
        }
    }
    requestpage
    {
        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                }
            }
        }
        actions
        {
            area(Processing)
            {
            }
        }
    }
}
