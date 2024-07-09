page 50111 CoursesOfferedList
{
    ApplicationArea = All;
    Caption = 'CoursesOfferedList';
    PageType = List;
    SourceTable = CoursesOffered;
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
                field("Course Name"; Rec."Course Name")
                {
                    ToolTip = 'Specifies the value of the Course Name field.', Comment = '%';
                }
            }
        }
    }
}
