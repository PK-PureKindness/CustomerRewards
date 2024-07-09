codeunit 50101 "Unit Allocation"
{
    trigger OnRun()
    begin

    end;

    procedure AllocateUnits("Student Number": code[50]; "course code": code[50]; Semester: Integer)
    var
        CourseSemesterUnit: Record "Course Semester Unit";
        StudentSemesterUnit: Record Units;
    begin
        CourseSemesterUnit.SetRange("Course Code", "course code");
        CourseSemesterUnit.SetRange("Semester", Semester);
        if CourseSemesterUnit.FindSet()
        then begin
            repeat
                StudentSemesterUnit.Init();
                StudentSemesterUnit."Student Number" := "Student Number";
                StudentSemesterUnit."Course Code" := "course code";
                StudentSemesterUnit.Semester := Semester;
                StudentSemesterUnit.Insert();
            until
            CourseSemesterUnit.Next() = 0;

        end;
    end;
}