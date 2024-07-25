tableextension 50101 "Sales & Receivable Setup" extends "Sales & Receivables Setup"
{
    fields
    {
        field(50100; "Student Change No."; Code[20])
        {
            Caption = 'Student Change No.';
            DataClassification = ToBeClassified;
        }
        field(50101; "Student Receipt No."; Code[50])
        {
            Caption = 'Student Receipt No.';
            DataClassification = ToBeClassified;
        }

    }
}
