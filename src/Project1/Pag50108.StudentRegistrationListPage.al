page 50108 StudentRegistrationListPage
{
    ApplicationArea = All;
    Caption = 'StudentRegistrationListPage';
    PageType = List;
    SourceTable = TableStudentRegistration;
    UsageCategory = Lists;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Application Number"; Rec."Application Number")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Application Number field.', Comment = '%';
                }
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
            }
        }
    }
}
