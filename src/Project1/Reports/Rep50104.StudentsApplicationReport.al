report 50104 "Students Application Reports"
{
    ApplicationArea = All;
    Caption = 'Students Application Report';
    UsageCategory = ReportsAndAnalysis;
    RDLCLayout = 'Students application Report.RDL';
    DefaultLayout = RDLC;
    dataset
    {
        dataitem(StudentsApplication; StudentsApplicationTable)
        {
            column(ApplicationNumber; "Application Number")
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
