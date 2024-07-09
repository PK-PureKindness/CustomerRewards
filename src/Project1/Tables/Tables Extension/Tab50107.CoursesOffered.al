table 50107 CoursesOffered
{
    Caption = 'CoursesOffered';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Student Number"; code[50])
        {
            Caption = 'Student Number';
        }
        field(2; "Course Code"; Code[50])
        {
            Caption = 'Course Code';
        }
        field(3; "Course Name"; Code[50])
        {
            Caption = 'Course Name';
        }
    }
    keys
    {
        key(Key1; "Course Code")
        {
            Clustered = true;
        }
        /*key(Key2; "Student Number")
        {

        }*/
    }
}
