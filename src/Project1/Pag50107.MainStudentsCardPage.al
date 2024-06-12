page 50107 MainStudentsCardPage
{
    ApplicationArea = All;
    Caption = 'MainStudentsCardPage';
    PageType = Card;
    SourceTable = MainStudents;
    Editable = false;
    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';

                field("Student Number"; Rec."Student Number")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Application Number field.', Comment = '%';
                    Editable = false;
                }

                field(Course; Rec.Course)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Course field.', Comment = '%';
                }
                field("First Name"; Rec."First Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the First Name field.', Comment = '%';
                }
                field("Middle Name"; Rec."Middle Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Middle Name field.', Comment = '%';
                }
                field("SurName"; Rec."Sur Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Last Name field.', Comment = '%';
                }
                field("Full Name"; Rec."Full Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Full Name field.', Comment = '%';
                    Editable = false;
                }
                field("Email Address"; Rec."Email Address")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Email Address field.', Comment = '%';
                }
                field("Date Of Birth"; Rec."Date Of Birth")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Date Of Birth field.', Comment = '%';
                    Editable = false;
                }
                field(Age; Rec.Age)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Age field.', Comment = '%';
                    Editable = false;
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


                field("Phone Number"; Rec."Phone Number")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Phone Number field.', Comment = '%';
                }

                field("Date of Acceptance"; Rec."Date of Application")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Date of Acceptance field.', Comment = '%';
                    Editable = false;
                }
                field("Captured By"; Rec."Captured By")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Captured By field.', Comment = '%';
                    Editable = false;
                }



            }
        }
    }

    actions
    {
        area(Navigation)
        {
            action("Next Of Kins")
            {
                ApplicationArea = All;
                Image = GetEntries;
                Promoted = true;
                PromotedCategory = Process;
                RunObject = page StudentNextOfKinListPage;
                RunPageLink = "Student  Number" = field("Student Number");

                //Example Code
                trigger OnAction()
                var
                    StudentRec: Record TableMainStudents;
                    NextOfKinRec: Record NextOfKins;

                begin
                    if StudentRec.Get(StudentRec."Student Number") then
                        if NextOfKinRec.Get(NextOfKinRec."Student  Number") then begin
                            Message('Next Of Kin Details: ' + NextOfKinRec."Student  Number");
                        end
                        else
                            Error('Student Record Not Found.');
                end;
                //Example Code 
            }

        }
    }
}
