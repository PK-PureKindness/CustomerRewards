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
                    ToolTip = 'Specifies the value of the Student Number field.', Comment = '%';
                    Editable = false;
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
            group("Communication Details")
            {
                Caption = 'Communication Details';

                field("Email Address"; Rec."Email Address")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Email Address field.', Comment = '%';
                }
                field("Phone Number"; Rec."Phone Number")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Phone Number field.', Comment = '%';
                }
            }
            group("Academics Details")
            {
                Caption = 'Academic Details';

                field(Course; Rec.Course)
                {
                    ApplicationArea = All;
                    TableRelation = CoursesOffered."Course Code";
                    ToolTip = 'Specifies the value of the Course field.', Comment = '%';
                }
                field("Current Year Of Study"; Rec."Current Year Of Study")
                {
                    ApplicationArea = All;
                    TableRelation = "Academic Year".Year;
                    ToolTip = 'Specifies the value of the Current Year Of Study field.', Comment = '%';
                }
                field("Current Semester Of Study"; Rec."Current Semester Of Study")
                {
                    ApplicationArea = All;
                    TableRelation = "Academic Semester".Semester;
                    ToolTip = 'Specifies the value of the Current Semester Of Study field.', Comment = '%';
                }

                field(CurrSemUnits; CurrSemUnits)
                {
                    ApplicationArea = All;
                    Caption = 'Current Sem. Units';
                    TableRelation = "Academic Semester".Semester;
                    ToolTip = 'Specifies the value of the Current Sem. Units field.', Comment = '%';
                }

            }

            part(UnitsTaken; "Units Read List Page")
            {
                ApplicationArea = all;
                SubPageLink = "Student Number" = field("Student Number"), "Current Semester" = const(true);
            }
        }
        area(FactBoxes)
        {
            part("StudentFinancialInformation"; "Student Financial Factbox")
            {
                ApplicationArea = All;
                SubPageLink = "Student  Number" = field("Student Number");
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
            }

            action("Register Units")
            {
                ApplicationArea = All;
                Image = GetEntries;
                Promoted = true;
                PromotedCategory = Process;
                RunObject = page "Register Student Grades";
                RunPageLink = "Student Number" = field("Student Number");
            }
            action("Fees Statement")
            {
                ApplicationArea = All;
                Image = GetEntries;
                Promoted = true;
                PromotedCategory = Process;
                RunObject = page "Fees Statement List";
                RunPageLink = "Student Number" = field("Student Number");
            }
            action("Student Changes")
            {
                ApplicationArea = All;
                Image = GetEntries;
                Promoted = true;
                PromotedCategory = Process;
                RunObject = page "MainStudents Changes CardPage";
                RunPageLink = "Student Number" = field("Student Number");
            }
            /* action("Factbox")
             {
                 ApplicationArea = All;
                 Image = GetEntries;
                 Promoted = true;
                 PromotedCategory = Process;
                 RunObject = page "Student Financial Factbox";
                 RunPageLink = "Student  Number" = field("Student Number");
             } */
        }
    }
    var
        CurrSemUnits: Integer;
        Units: Record "Student Grades";
        CurrSem: Record "Academic Semester";

    trigger OnOpenPage()
    begin
        Units.Reset();
        Units.SetRange("Student Number", Rec."Student Number");
        Units.SetRange("Current Semester", true);
        Units.SetFilter("Main Exam", '>%1', 20);
        if Units.FindFirst() then
            CurrSemUnits := Units.Count;

        CurrSem.Reset();
        CurrSem.SetRange("Student Number", Rec."Student Number");
        CurrSem.SetRange("Current Semester", true);
        if CurrSem.FindFirst() then begin
            if Rec."Current Semester Of Study" <> CurrSem.Semester then
                rec."Current Semester Of Study" := CurrSem.Semester;
            if Rec."Current Year Of Study" <> CurrSem.year then
                Rec."Current Year Of Study" := CurrSem.Year;
            Rec.Modify()
        end;
    end;
}


