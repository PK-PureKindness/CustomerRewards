table 50129 "Receipt Table"
{
    Caption = 'Receipt Table';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Receipt Number"; Code[50])
        {
            Caption = 'Receipt Number';
            trigger OnValidate()
            begin
                if "Receipt Number" <> xRec."Receipt Number" then begin

                    NSetup.Get;
                    NoSeriesMgt.TestManual(NSetup."Student Change No.");


                    "No. Series" := '';
                end;
            end;
        }
        field(2; "Document Date"; Date)
        {
            Caption = 'Document Date';
        }
        field(3; "Student No."; Code[20])
        {
            Caption = 'Student Number';
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
        field(11; "No. Series"; code[100])
        {
            Caption = 'No. Series';
            TableRelation = "No. Series";
        }
    }
    keys
    {
        key(PK; "Receipt Number", "Student No.")
        {
            Clustered = true;
        }
    }

    var
        NoseriesMgt: Codeunit NoSeriesManagement;
        NSetup: record "Sales & Receivables Setup";


    trigger OnInsert()
    begin
        if rec."Receipt Number" = '' then begin
            NoseriesMgt.InitSeries('RECEIPT', xRec."No. Series", 0D, "Receipt Number", "No. Series");
        end;

        "Document Date" := Today;
        //"Receipt Date" := Today;
        "Received By" := UserId;
        "Posted By" := UserId;
    end;
}
