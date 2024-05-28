page 50101 PageListRewardLevel
{
    ApplicationArea = All;
    Caption = 'PageListRewardLevel';
    PageType = List;
    SourceTable = rewardLevel;
    UsageCategory = Lists;
    CardPageId = "RewardLevel CardPage";

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(date; Rec.date)
                {
                    ApplicationArea = All;

                }
                field("Created by"; Rec."Created by")
                {
                    ApplicationArea = All;
                    StyleExpr = MyStyleExpr;

                }
                field("Customer no."; Rec."Customer no.")
                {
                    ApplicationArea = All;
                    StyleExpr = MyStyleExpr;

                }
                field(Rewarded; Rec.Rewarded)
                {
                    ApplicationArea = all;
                }

            }
        }
    }

    trigger OnAfterGetRecord()
    begin
        MyStyleExpr := 'Standard';
        if Rec.Rewarded = true then
            MyStyleExpr := 'Attention';
    end;

    var
        MyStyleExpr: Text;
}
