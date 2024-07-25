page 50131 "Receipt Card"
{
    ApplicationArea = All;
    Caption = 'Receipt Card';
    PageType = Card;
    SourceTable = "Receipt Table";
    //RefreshOnActivate = true;

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';

                field("Student No."; Rec."Student No.")
                {
                    ToolTip = 'Specifies the value of the Student No. field.', Comment = '%';
                    Editable = false;
                }
                field("Receipt Number"; Rec."Receipt Number")
                {
                    ToolTip = 'Specifies the value of the Receipt Number field.', Comment = '%';
                }
                field("Receipt Date"; Rec."Receipt Date")
                {
                    ToolTip = 'Specifies the value of the Receipt Date field.', Comment = '%';
                }
                field("Received Bank"; Rec."Received Bank")
                {
                    ToolTip = 'Specifies the value of the Received Bank field.', Comment = '%';
                }
                field("Received Amount"; Rec."Received Amount")
                {
                    ToolTip = 'Specifies the value of the Received Amount field.', Comment = '%';
                }
                field("Receipt Narration"; Rec."Receipt Narration")
                {
                    ToolTip = 'Specifies the value of the Receipt Narration field.', Comment = '%';
                }
                field("Document Date"; Rec."Document Date")
                {
                    ToolTip = 'Specifies the value of the Document Date field.', Comment = '%';
                }
                field("Received By"; Rec."Received By")
                {
                    ToolTip = 'Specifies the value of the Received By field.', Comment = '%';
                }
                field(Posted; Rec.Posted)
                {
                    ToolTip = 'Specifies the value of the Posted field.', Comment = '%';
                }
                field("Posted By"; Rec."Posted By")
                {
                    ToolTip = 'Specifies the value of the Posted By field.', Comment = '%';
                }
            }
            group("Receipt Line")
            {
                part(ReceiptLine; "Receipt Line ListPart")
                {
                    ApplicationArea = All;
                    SubPageLink = "Receipt Number" = field("Receipt Number");
                }

            }
        }
    }
}
