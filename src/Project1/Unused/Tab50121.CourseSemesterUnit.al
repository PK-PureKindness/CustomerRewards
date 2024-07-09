table 50121 "Course Semester Unit"
{
    Caption = 'Course Semester Unit';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Course Code"; Code[50])
        {
            DataClassification = ToBeClassified;
            TableRelation = CoursesOffered."Course Code";
            Caption = 'Course Code';
        }
        field(2; Semester; Integer)
        {
            DataClassification = ToBeClassified;
            TableRelation = "Academic Semester".Semester;
            Caption = 'Semester';
        }
        field(3; "Unit Code"; Code[50])
        {
            DataClassification = ToBeClassified;
            TableRelation = Units."Unit Code";
            Caption = 'Unit Code';
        }
    }
    keys
    {
        key(PK; "Course Code", Semester, "Unit Code")
        {
            Clustered = true;
        }
    }
}
