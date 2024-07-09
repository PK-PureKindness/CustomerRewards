page 50109 MainStudentsListPage
{
    ApplicationArea = All;
    Caption = 'MainStudentsListPage';
    PageType = List;
    SourceTable = MainStudents;
    UsageCategory = Lists;
    CardPageId = MainStudentsCardPage;


    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Student Number"; Rec."Student Number")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Application Number field.', Comment = '%';
                }

                field("Full Name"; Rec."Full Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Full Name field.', Comment = '%';
                }
                field(Course; Rec.Course)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Course field.', Comment = '%';
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
