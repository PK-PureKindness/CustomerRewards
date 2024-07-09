table 50114 StudentsApplicationTable
{
    Caption = 'StudentsApplicationTable';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Application Number"; Code[50])
        {
            Caption = 'Application Number';
            DataClassification = ToBeClassified;
        }
        field(2; "ID Number"; code[30])
        {
            Caption = 'ID Number';
            DataClassification = ToBeClassified;
            trigger OnValidate()
            var
                TestID: Code[20];
            begin
                if "ID Number" <> '' then begin
                    if StrLen("ID Number") < 6 then
                        Error('Invalid ID Number');

                    TestID := DelChr("ID Number", '=', 'A|B|C|D|E|E|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T|U|V|W|X|Y|Z|.|,|!|@|#|$|%|^|&|*|(|)|[|]|{|}|/|\|"|;|:|<|>|?|-|_');
                    if TestID <> "ID Number" then
                        Error('Invalid ID Number.Invalid Character detected');

                end;
            end;
        }
        field(3; "First Name"; Text[30])
        {
            Caption = 'First Name';
            DataClassification = ToBeClassified;
        }
        field(4; "Middle Name"; Text[30])
        {
            Caption = 'Middle Name';
            DataClassification = ToBeClassified;
        }
        field(5; "Sur Name"; Text[30])
        {
            Caption = 'SurName';
            DataClassification = ToBeClassified;
        }
        field(6; "Full Name"; Text[100])
        {
            Caption = 'Full Name';
            DataClassification = ToBeClassified;
        }

        field(7; "Captured By"; code[50])
        {
            Caption = 'Captured By';
            DataClassification = ToBeClassified;
        }
        field(8; "Date of Application"; Date)
        {
            Caption = 'Date of Application';
            DataClassification = ToBeClassified;
        }
        field(9; Course; code[30])
        {
            Caption = 'Course';
            TableRelation = CoursesOffered;
        }
        field(10; "Phone Number"; code[30])
        {
            Caption = 'Phone Number';
            DataClassification = ToBeClassified;
            trigger OnValidate()
            var
                TestID: Code[20];
            begin
                if "Phone Number" <> '' then begin
                    if StrLen("Phone Number") < 6 then
                        Error('Invalid Phone Number');

                    TestID := DelChr("Phone Number", '=', 'A|B|C|D|E|E|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T|U|V|W|X|Y|Z|.|,|!|@|#|$|%|^|&|*|(|)|[|]|{|}|/|\|"|;|:|<|>|?|-|_');
                    if TestID <> "Phone Number" then
                        Error('Invalid Phone Number.Invalid Character detected');

                end;
            end;

        }
        field(11; "Email Address"; Text[50])
        {
            Caption = 'Email Address';
            DataClassification = ToBeClassified;
        }
        field(12; "Home County"; code[100])
        {
            Caption = 'Home County';
            DataClassification = ToBeClassified;
            TableRelation = CountiesTable;
        }
        field(13; "No. Series"; code[100])
        {
            Caption = 'No. Series';
            TableRelation = "No. Series";
        }
        field(14; "Age"; Integer)
        {
            Caption = 'Age';
            DataClassification = ToBeClassified;
        }
        field(15; "Date Of Birth"; Date)
        {
            Caption = 'Date Of Birth';
            DataClassification = ToBeClassified;
            trigger OnValidate()
            begin
                if "Date Of Birth" >= Today then
                    Error('You cannnot be born in the Future');
                Age := Date2DMY(Today, 3) - Date2DMY("Date Of Birth", 3);

            end;
        }
        field(16; "Created"; Boolean)
        {
            Caption = 'Created';
            DataClassification = ToBeClassified;
        }
        field(17; "Current Year Of Study"; Integer)
        {
            Caption = 'Current Year Of Study';
            DataClassification = ToBeClassified;
            TableRelation = "Academic Year";
        }
        field(18; "Current Semester Of Study"; Integer)
        {
            Caption = 'Current Semester Of Study';
            DataClassification = ToBeClassified;
            TableRelation = "Academic Semester";
        }
    }
    keys
    {
        key(PK; "Application Number")
        {
            Clustered = true;
        }
    }
    var
        NoSeriesMgt: Codeunit NoSeriesManagement;

    trigger OnInsert()
    begin
        if rec."Application Number" = '' then begin
            NoSeriesMgt.InitSeries('APPL', xRec."No. Series", 0D, "Application Number", "No. Series");
        end;
        "Captured By" := UserId;
        "Date of Application" := Today;


    end;
}
