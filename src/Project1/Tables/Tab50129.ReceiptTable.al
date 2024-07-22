table 50129 "Receipt Table"
{
    Caption = 'Receipt Table';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Receipt No."; Code[20])
        {
            Caption = 'Receipt No.';
        }
        field(2; "Document Date"; Date)
        {
            Caption = 'Document Date';
        }
        field(3; "Student No."; Code[20])
        {
            Caption = 'Student No.';
        }
        field(4; "Received Bank"; Code[20])
        {
            Caption = 'Received Bank';
            TableRelation = "Bank Account";
        }
        field(5; "Received Amount"; Decimal)
        {
            Caption = 'Received Amount';
        }
        field(6; "Receipt Date"; Date)
        {
            Caption = 'Receipt Date';
        }
        field(7; "Receipt Narration"; Text[50])
        {
            Caption = 'Receipt Narration';
        }
        field(8; "Received By"; Code[20])
        {
            Caption = 'Received By';
        }
        field(9; Posted; Boolean)
        {
            Caption = 'Posted';
        }
        field(10; "Posted By"; Code[20])
        {
            Caption = 'Posted By';
        }
    }
    keys
    {
        key(PK; "Receipt No.", "Student No.")
        {
            Clustered = true;
        }
    }

    trigger OnInsert()
    begin
        "Document Date" := Today;
        //"Receipt Date" := Today;
        "Received By" := UserId;
        "Posted By" := UserId;
    end;
}
