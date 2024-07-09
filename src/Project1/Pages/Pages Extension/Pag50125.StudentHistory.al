page 50125 "Student History"
{
    Caption = 'Student Activities';
    PageType = CardPart;
    SourceTable = "Student Financial Data";
    RefreshOnActivate = true;

    layout
    {
        area(Content)
        {
            cuegroup("Financial Details")
            {
                CuegroupLayout = Wide;
                ShowCaption = false;

                field("Current Semester Fee Payable "; Rec."Current Semester Fee Payable ")
                {
                    ApplicationArea = all;
                    DrillDownPageId = MainStudentsListPage;
                }
                field("Annual Fee Payable"; Rec."Annual Fee Payable")
                {
                    ApplicationArea = all;
                    DrillDownPageId = MainStudentsListPage;
                }
                field("Annual Fee Paid"; Rec."Annual Fee Paid")
                {
                    ApplicationArea = all;
                    DrillDownPageId = MainStudentsListPage;
                }
                field("Annual Fee Balance"; Rec."Annual Fee Balance")
                {
                    ApplicationArea = all;
                    DrillDownPageId = MainStudentsListPage;
                }

            }
            cuegroup("Aggregates")
            {
                field("Number Of Applicants"; Rec."Number Of Applicants")
                {
                    ApplicationArea = all;
                    DrillDownPageId = StudentsApplicationListPage;
                }
                field("Number Of Students"; Rec."Number Of Students")
                {
                    ApplicationArea = all;
                    DrillDownPageId = MainStudentsListPage;
                }
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action("Set Up Cues")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Set Up Cues';
                Image = Setup;
                ToolTip = 'Set Up the Cues (Status Tiles) related to the role';
                trigger OnAction()
                var
                    CuesAndKpis: Codeunit "Cues And KPIs";
                    CueRecordRef: RecordRef;

                begin
                    CueRecordRef.GetTable(Rec);
                    CuesAndKpis.OpenCustomizePageForCurrentUser(CueRecordRef.Number);

                end;
            }
        }
    }
}
