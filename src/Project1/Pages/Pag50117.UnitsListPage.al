page 50117 "Units List Page"
{
    ApplicationArea = All;
    Caption = 'Units List Page';
    PageType = List;
    SourceTable = "Student Grades";
    UsageCategory = Lists;
    CardPageId = "Units Card Page";

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Student Number"; Rec."Student Number")
                {
                    ApplicationArea = all;

                    ToolTip = 'Specifies the value of the Student Number field.', Comment = '%';
                }
                field("Course Code"; Rec."Course Code")
                {
                    ApplicationArea = all;

                    ToolTip = 'Specifies the value of the Course Code field.', Comment = '%';
                }
                field(Year; Rec.Year)
                {
                    ApplicationArea = all;
                    TableRelation = "Academic Year";
                    ToolTip = 'Specifies the value of the Year field.', Comment = '%';
                }
                field(Semester; Rec.Semester)
                {
                    ApplicationArea = all;
                    TableRelation = "Academic Semester";
                    ToolTip = 'Specifies the value of the Semester field.', Comment = '%';
                }
                field("Unit Name"; Rec."Unit Name")
                {
                    ApplicationArea = all;
                    ToolTip = 'Specifies the value of the Unit Name field.', Comment = '%';
                }
                /*
                

                field("Unit Code"; Rec."Unit Code")
                {
                    ApplicationArea = all;
                    ToolTip = 'Specifies the value of the Unit Code field.', Comment = '%';
                }
                field("Unit Name"; Rec."Unit Name")
                {
                    ApplicationArea = all;
                    ToolTip = 'Specifies the value of the Unit Name field.', Comment = '%';
                }
                field("CAT 1"; Rec."CAT 1")
                {
                    ApplicationArea = all;
                    ToolTip = 'Specifies the value of the CAT 1 field.', Comment = '%';
                }
                field("CAT 2"; Rec."CAT 2")
                {
                    ApplicationArea = all;
                    ToolTip = 'Specifies the value of the CAT 2 field.', Comment = '%';
                }
                field("Main Exam"; Rec."Main Exam")
                {
                    ApplicationArea = all;
                    ToolTip = 'Specifies the value of the Main Exam field.', Comment = '%';
                }
                */
                field(Total; Rec.Total)
                {
                    ApplicationArea = all;
                    Editable = false;
                    ToolTip = 'Specifies the value of the Total field.', Comment = '%';
                }
            }
        }
    }
    trigger OnOpenPage()

    begin
        //Message('Student Number: %1', Rec."Student Number");
    end;

}

