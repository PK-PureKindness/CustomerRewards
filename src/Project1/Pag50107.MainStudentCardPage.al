page 50107 MainStudentCardPage
{
    ApplicationArea = All;
    Caption = 'MainStudentCardPage';
    PageType = Card;
    SourceTable = TableMainStudent;

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';

                field("Captured By"; Rec."Captured By")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Captured By field.', Comment = '%';
                }
                field("Date of Registration"; Rec."Date of Registration")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Date of Registration field.', Comment = '%';
                }
                field(Course; Rec.Course)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Course field.', Comment = '%';
                }
                field("Email Address"; Rec."Email Address")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Email Address field.', Comment = '%';
                }
                field("First Name"; Rec."First Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the First Name field.', Comment = '%';
                }
                field("Full Name"; Rec."Full Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Full Name field.', Comment = '%';
                }
                field("Home County"; Rec."Home County")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Home County field.', Comment = '%';
                }
                field("ID Number"; Rec."ID Number")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the ID Number field.', Comment = '%';
                }
                field("Last Name"; Rec."Last Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Last Name field.', Comment = '%';
                }
                field("Middle Name"; Rec."Middle Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Middle Name field.', Comment = '%';
                }
                field("Phone Number"; Rec."Phone Number")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Phone Number field.', Comment = '%';
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
