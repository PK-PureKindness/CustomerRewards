page 50119 "Units Card Page"
{
    ApplicationArea = All;
    Caption = 'Units Card Page';
    PageType = Card;
    SourceTable = "Student Grades";

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';


                field("Unit Code"; Rec."Unit Code")
                {
                    ToolTip = 'Specifies the value of the Unit Code field.', Comment = '%';
                }
                field("Student Number"; Rec."Student Number")
                {
                    ToolTip = 'Specifies the value of the Student Number field.', Comment = '%';
                }
                field("Course Code"; Rec."Course Code")
                {
                    ToolTip = 'Specifies the value of the Course Code field.', Comment = '%';
                }
                field("Semester Code"; Rec."Semester Code")
                {
                    ToolTip = 'Specifies the value of the Semester field.', Comment = '%';
                }
                field(Semester; Rec.Semester)
                {
                    ToolTip = 'Specifies the value of the Semester field.', Comment = '%';
                }
                field("Current Semester"; Rec."Current Semester")
                {
                    ToolTip = 'Specifies the value of the Current Semester field.', Comment = '%';
                }
                field(Year; Rec.Year)
                {
                    ToolTip = 'Specifies the value of the Year field.', Comment = '%';
                }
                field("Unit Name"; Rec."Unit Name")
                {
                    ToolTip = 'Specifies the value of the Unit Name field.', Comment = '%';
                }
                field("CAT 1"; Rec."CAT 1")
                {
                    ToolTip = 'Specifies the value of the CAT 1 field.', Comment = '%';
                }
                field("CAT 2"; Rec."CAT 2")
                {
                    ToolTip = 'Specifies the value of the CAT 2 field.', Comment = '%';
                }
                field("Main Exam"; Rec."Main Exam")
                {
                    ToolTip = 'Specifies the value of the Main Exam field.', Comment = '%';
                }
                field(Total; Rec.Total)
                {
                    ToolTip = 'Specifies the value of the Total field.', Comment = '%';
                }
            }
        }
    }
}
