page 50102 "RewardLevel Page"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = RewardLevel;

    layout
    {
        area(Content)
        {
            group(General)
            {
                field(date; Rec.date)
                {
                    ApplicationArea = All;

                }
                field("Created by"; Rec."Created by")
                {
                    ApplicationArea = All;

                }
                field("Customer no."; Rec."Customer no.")
                {
                    ApplicationArea = All;

                }
                field("Customer name"; Rec."Customer name")
                {
                    ApplicationArea = All;

                }
                field(Location; Rec.Location)
                {
                    ApplicationArea = All;

                }
                field(Rewarded; Rec.Rewarded)
                {
                    ApplicationArea = All;

                }

            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}