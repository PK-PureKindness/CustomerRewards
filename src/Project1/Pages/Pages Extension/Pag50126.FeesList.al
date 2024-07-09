page 50126 "Fees List"
{
    ApplicationArea = All;
    Caption = 'Fees List';
    PageType = List;
    SourceTable = "Student Financial Data";
    UsageCategory = Lists;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Student  Number"; Rec."Student  Number")
                {
                    ToolTip = 'Specifies the value of the Student  Number field.', Comment = '%';
                    Editable = false;
                }
                field("Current Semester Fee Payable "; Rec."Current Semester Fee Payable ")
                {
                    ToolTip = 'Specifies the value of the Current Semester Fee Payable field.', Comment = '%';
                }
                field("Annual Fee Payable"; Rec."Annual Fee Payable")
                {
                    ToolTip = 'Specifies the value of the Annual Fee Payable field.', Comment = '%';
                }
                field("Annual Fee Paid"; Rec."Annual Fee Paid")
                {
                    ToolTip = 'Specifies the value of the Annual Fee Paid field.', Comment = '%';
                }
                field("Annual Fee Balance"; Rec."Annual Fee Balance")
                {
                    ToolTip = 'Specifies the value of the Annual Fee Balance field.', Comment = '%';
                    Editable = false;
                }

            }
        }
    }
}
