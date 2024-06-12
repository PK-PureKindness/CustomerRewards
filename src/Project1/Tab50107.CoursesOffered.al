table 50107 CoursesOffered
{
    Caption = 'CoursesOffered';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Course Code"; Code[50])
        {
            Caption = 'Course Code';
        }
        field(2; "Course Name"; Code[50])
        {
            Caption = 'Course Name';
        }
    }
    keys
    {
        key(PK; "Course Code")
        {
            Clustered = true;
        }
    }
}
