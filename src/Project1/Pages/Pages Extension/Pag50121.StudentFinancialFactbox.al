page 50121 "Student Financial Factbox"
{
    Caption = 'Student Financial Information';
    PageType = CardPart;
    SourceTable = "Student Financial Data";
    Editable = false;

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("Student  Number"; Rec."Student  Number")
                {
                    ToolTip = 'Specifies the value of the Student  Number field.', Comment = '%';
                    ApplicationArea = all;
                    trigger OnValidate()
                    var
                        myInt: Integer;
                    begin
                        UpdateFields();

                    end;
                }
                field(StudName; StudName)
                {
                    Caption = 'Student Name';
                    ToolTip = 'Specifies the value of the Student Name field.', Comment = '%';
                    ApplicationArea = all;
                }
                field(CurrYear; CurrYear)
                {
                    Caption = 'Current Year';
                    ToolTip = 'Specifies the value of the Current Year field.', Comment = '%';
                    ApplicationArea = all;
                }
                field(currSem; currSem)
                {
                    Caption = 'Current Semester';
                    ToolTip = 'Specifies the value of the Current Semester field.', Comment = '%';
                    ApplicationArea = all;
                }
                group("Financial Details")
                {
                    field("Annual Fee Payable"; Rec."Annual Fee Payable")
                    {
                        ToolTip = 'Specifies the value of the Annual Fee Payable field.', Comment = '%';
                        ApplicationArea = all;
                    }
                    field("Current Semester Fee Payable "; Rec."Current Semester Fee Payable ")
                    {
                        ToolTip = 'Specifies the value of the Current Semester Fee Payable field.', Comment = '%';
                        ApplicationArea = all;
                    }
                    field(CurrSem2; CurrSem2)
                    {
                        Caption = 'Current Semester Fee Paid';
                        ToolTip = 'Specifies the value of the Current Semester Fee Paid field.', Comment = '%';
                        ApplicationArea = all;
                    }
                    field(CurrSem3; CurrSem3)
                    {
                        Caption = 'Current Semester Fee Balance';
                        ToolTip = 'Specifies the value of the Current Semester Fee Balance field.', Comment = '%';
                        ApplicationArea = all;
                    }
                    field("Annual Fee Paid"; Rec."Annual Fee Paid")
                    {
                        ToolTip = 'Specifies the value of the Annual Fee Paid field.', Comment = '%';
                        ApplicationArea = all;
                    }
                    field("Annual Fee Balance"; Rec."Annual Fee Balance")
                    {
                        ToolTip = 'Specifies the value of the Annual Fee Balance field.', Comment = '%';
                        ApplicationArea = all;
                    }


                }


            }

        }
    }

    var
        StudName: Text;
        CurrYear: Integer;
        currSem: Integer;
        CurrSem2: Decimal;
        CurrSem3: Decimal;
        Student: Record MainStudents;
        AcaSem: Record "Academic Semester";
        AcaYear: Record "Academic Year";



    trigger OnOpenPage()
    var
        myInt: Integer;
    begin
        UpdateFields();
    end;

    local procedure UpdateFields()
    begin
        Student.Reset();
        Student.SetRange("Student Number", Rec."Student  Number");
        if Student.FindFirst() then begin
            StudName := Student."Full Name";

            AcaSem.Reset();
            AcaSem.SetRange("Student Number", Student."Student Number");
            AcaSem.SetRange("Current Semester", true);
            if AcaSem.FindFirst() then begin
                currSem := AcaSem.Semester;
                CurrYear := AcaSem.Year;
                Rec."Annual Fee Payable" := AcaYear."Annual Fee";
                Rec."Current Semester Fee Payable " := AcaSem."Fee Payable";
                // Rec."Annual Fee Paid" := 
                // Rec."Annual Fee Balance" := AcaYear.
                // CurrSem2 := AcaSem.




            end;

        end;

    end;
}
