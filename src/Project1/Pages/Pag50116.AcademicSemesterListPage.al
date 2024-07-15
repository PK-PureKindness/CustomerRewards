page 50116 "Academic Semester List Page"
{
    ApplicationArea = All;
    Caption = 'Academic Semester List Page';
    PageType = List;
    SourceTable = "Academic Semester";
    UsageCategory = Lists;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Student Number"; Rec."Student Number")
                {
                    ToolTip = 'Specifies the value of the Student Number field.', Comment = '%';
                }
                field("Course Code"; Rec."Course Code")
                {
                    ToolTip = 'Specifies the value of the Course Code field.', Comment = '%';
                }
                field(Year; Rec.Year)
                {
                    ToolTip = 'Specifies the value of the Year field.', Comment = '%';
                }
                field(Semester; Rec.Semester)
                {
                    ToolTip = 'Specifies the value of the Semester field.', Comment = '%';
                }

                field("Semester Code"; Rec."Semester Code")
                {
                    ToolTip = 'Specifies the value of the Semester field.', Comment = '%';
                }

                field(SemesterName; Rec."Semester Name")
                {
                    ToolTip = 'Specifies the value of the Semester field.', Comment = '%';
                }
                field("Current Semester"; Rec."Current Semester")
                {
                    ToolTip = 'Specifies the value of the Current Semester field.', Comment = '%';
                }
                field("Fee Payable"; Rec."Fee Payable")
                {
                    ToolTip = 'Specifies the value of the Fee Payable field.', Comment = '%';
                }
                field("Fee Paid"; Rec."Fee Paid")
                {
                    ToolTip = 'Specifies the value of the Fee Paid field.', Comment = '%';
                    trigger OnValidate()
                    begin
                        TempFeeBalance := Round((Rec."Fee Payable" - Rec."Fee Paid"), 0.01, '>');
                    end;
                }
                field(TempFeeBalance; TempFeeBalance)
                {
                    ToolTip = 'Specifies the value of the Fee Paid field.', Comment = '%';
                    Editable = false;
                    ApplicationArea = all;
                }

            }
        }
    }
    var
        TempFeeBalance: Decimal;
}
