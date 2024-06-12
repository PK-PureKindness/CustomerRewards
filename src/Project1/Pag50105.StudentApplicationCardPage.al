page 50105 StudentApplicationCardPage
{
    ApplicationArea = All;
    Caption = 'StudentApplicationCardPage';
    PageType = Card;
    SourceTable = StudentsApplicationTable;

    layout

    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';

                field("Application Number"; Rec."Application Number")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Application Number field.', Comment = '%';
                    Editable = false;
                }
                field("First Name"; Rec."First Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the First Name field.', Comment = '%';
                    Editable = EditApplication;
                    trigger OnValidate()
                    begin
                        UpdateNames();
                    end;
                }
                field("Middle Name"; Rec."Middle Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Middle Name field.', Comment = '%';
                    Editable = EditApplication;
                    trigger OnValidate()
                    begin
                        UpdateNames();
                    end;
                }
                field("SurName"; Rec."Sur Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the SurName field.', Comment = '%';
                    Editable = EditApplication;
                    trigger OnValidate()
                    begin
                        UpdateNames();
                    end;
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
                    Editable = EditApplication;

                }
                field(Age; Rec.Age)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Age field.', Comment = '%';
                    Editable = false;
                }


                field(Course; Rec.Course)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Course field.', Comment = '%';
                    Editable = EditApplication;
                }

                field("Email Address"; Rec."Email Address")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Email Address field.', Comment = '%';
                    Editable = EditApplication;
                }



                field("ID Number"; Rec."ID Number")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the ID Number field.', Comment = '%';
                    Editable = EditApplication;
                }


                field("Phone Number"; Rec."Phone Number")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Phone Number field.', Comment = '%';
                    Editable = EditApplication;
                }
                field("Home County"; Rec."Home County")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Home County field.', Comment = '%';
                    Editable = EditApplication;
                }
                field("Date of Application"; Rec."Date of Application")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Date of Application field.', Comment = '%';
                    Editable = false;
                }
                field("Captured By"; Rec."Captured By")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Captured By field.', Comment = '%';
                    Editable = false;
                }


            }
        }
    }
    actions
    {
        area(Processing)
        {
            action("Create Student")
            {
                ApplicationArea = All;
                trigger OnAction()
                begin
                    if Rec.Created then
                        Error('This student has already been created');
                    CreateStudent();
                    CurrPage.Close();
                    if Confirm('A new student has been created with Student No. %1.Do you want to open this record?', true, Student."Student Number") then begin
                        page.Run(Page::MainStudentsCardPage, Student);
                    end;
                end;
            }
        }
        area(Navigation)
        {
            action("Next Of Kins")
            {
                ApplicationArea = All;
                Image = GetEntries;
                Promoted = true;
                PromotedCategory = Process;
                RunObject = page NextOfKinListPage;
                RunPageLink = "Student  Number" = field("Application Number");

            }
        }

    }
    local procedure UpdateNames()
    begin
        Rec."Full Name" := '';
        if (Rec."First Name" <> '') then
            Rec."Full Name" += Rec."First Name";

        if (Rec."Middle Name" <> '') then
            Rec."Full Name" += ' ' + Rec."Middle Name";

        if (Rec."Sur Name" <> '') then
            Rec."Full Name" += ' ' + Rec."Sur Name";

    end;

    local procedure CreateStudent()
    begin
        Student."Student Number" := '';
        Student.Init();
        if Student."Student Number" = '' then begin
            noseries.InitSeries('STDT', Student."No. Series", 0D, Student."Student Number", Student."No. Series");
        end;
        Student.TestField("Student Number");
        Student."First Name" := Rec."First Name";
        Student."Middle Name" := Rec."Middle Name";
        Student."Sur Name" := Rec."Sur Name";
        Student."Full Name" := Rec."Full Name";
        Student."Email Address" := Rec."Email Address";
        Student.Course := Rec.Course;
        Student."Phone Number" := Rec."Phone Number";
        Student."ID Number" := Rec."ID Number";
        Student."Date Of Birth" := Rec."Date Of Birth";
        Student.Age := Rec.Age;
        Student."Home County" := Rec."Home County";
        Student.Insert(true);
        Rec.Created := true;

        NextOfKinApplication.Reset();
        NextOfKinApplication.SetRange("Student  Number", Rec."Application Number");
        if NextOfKinApplication.FindFirst() then begin
            repeat
                NextOfKin.Init();
                NextOfKin."Student  Number" := Student."Student Number";
                NextOfKin."First Name" := NextOfKinApplication."First Name";
                NextOfKin."Middle Name" := NextOfKinApplication."Middle Name";
                NextOfKin."Sur Name" := NextOfKinApplication."Sur Name";
                NextOfKin."Full Names" := NextOfKinApplication."Full Names";
                NextOfKin."Phone Number" := NextOfKinApplication."Phone Number";
                NextOfKin."Email Address" := NextOfKinApplication."Email Address";
                NextOfKin.Relationship := NextOfKinApplication.Relationship;
                NextOfKin."ID Number" := NextOfKinApplication."ID Number";

                NextOfKin.Insert();
            until NextOfKinApplication.Next() = 0;
        end;

        UpdateFields();

    end;

    local procedure UpdateFields()
    begin
        if Rec.Created = true then
            EditApplication := false
        else
            EditApplication := true;
    end;

    trigger OnOpenPage()
    begin
        UpdateFields();

    end;

    var
        Student: Record MainStudents;
        noseries: Codeunit NoSeriesManagement;
        EditApplication: Boolean;
        NextOfKin: Record NextOfKins;
        NextOfKinApplication: Record NextOfKins;





}
