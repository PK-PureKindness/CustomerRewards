report 50103 "WrdStudents Application Report"
{
    ApplicationArea = All;
    Caption = 'Students Application Report';
    UsageCategory = ReportsAndAnalysis;
    WordLayout = 'Students application Report.docx';
    DefaultLayout = Word;
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
            column(Course; Course)
            {
            }
            column(DateofApplication; "Date of Application")
            {
            }
            column(IDNumber; "ID Number")
            {
            }
            column(Age; Age)
            {
            }
            column(PhoneNumber; "Phone Number")
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
