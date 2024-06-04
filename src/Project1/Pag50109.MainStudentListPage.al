page 50109 MainStudentListPage
{
    ApplicationArea = All;
    Caption = 'MainStudentListPage';
    PageType = List;
    SourceTable = TableMainStudent;
    UsageCategory = Lists;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(Course; Rec.Course)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Course field.', Comment = '%';
                }
                field("Full Name"; Rec."Full Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Full Name field.', Comment = '%';
                }
                field("ID Number"; Rec."ID Number")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the ID Number field.', Comment = '%';
                }
                field("Student Number"; Rec."Student Number")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Application Number field.', Comment = '%';
                }
            }
        }
    }
}
