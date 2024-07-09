page 50106 NextOfKinCardPage
{
    ApplicationArea = All;
    Caption = 'NextOfKinCardPage';
    PageType = Card;
    SourceTable = NextOfKins;


    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';

                field("Applicant Number"; Rec."Student  Number")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Applicant Number field.', Comment = '%';
                    Editable = false;
                }
                field("First Name"; Rec."First Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the First Name field.', Comment = '%';
                    trigger OnValidate()
                    begin
                        UpdateName();
                    end;
                }
                field("Middle Name"; Rec."Middle Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Middle Name field.', Comment = '%';
                    trigger OnValidate()
                    begin
                        UpdateName();
                    end;
                }
                field("SurName"; Rec."Sur Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the SurName field.', Comment = '%';
                    trigger OnValidate()
                    begin
                        UpdateName();
                    end;
                }
                field("Full Names"; Rec."Full Names")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Full Names field.', Comment = '%';
                    Editable = false;
                }
                field("ID Number"; Rec."ID Number")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the ID Number field.', Comment = '%';

                }

                field(Relationship; Rec.Relationship)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Relationship field.', Comment = '%';
                }
                field("Phone Number"; Rec."Phone Number")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Phone Number field.', Comment = '%';
                }
                field("Email Address"; Rec."Email Address")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Email Address field.', Comment = '%';
                }
            }
        }
    }
    local procedure UpdateName()
    begin
        Rec."Full Names" := '';
        if (Rec."First Name" <> '') then
            Rec."Full Names" += Rec."First Name";

        if (Rec."Middle Name" <> '') then
            Rec."Full Names" += ' ' + Rec."Middle Name";

        if (Rec."Sur Name" <> '') then
            Rec."Full Names" += ' ' + Rec."Sur Name";

    end;

}
