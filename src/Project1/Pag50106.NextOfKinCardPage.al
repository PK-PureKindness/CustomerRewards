page 50106 NextOfKinCardPage
{
    ApplicationArea = All;
    Caption = 'NextOfKinCardPage';
    PageType = Card;
    SourceTable = TableNextOfKin;

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';


                field("Email Address"; Rec."Email Address")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Email Address field.', Comment = '%';
                }
                field("Full Names"; Rec."Full Names")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Full Names field.', Comment = '%';
                }
                field("Phone Number"; Rec."Phone Number")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Phone Number field.', Comment = '%';
                }
                field(Relationship; Rec.Relationship)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Relationship field.', Comment = '%';
                }
                field("Student  Number"; Rec."Student  Number")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Student  Number field.', Comment = '%';
                }
            }
        }
    }
}
