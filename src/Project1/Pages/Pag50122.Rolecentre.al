page 50122 "Student Role Centre"
{
    PageType = RoleCenter;
    Caption = 'Student Role centre';
    ApplicationArea = all;


    layout
    {
        area(RoleCenter)
        {

            part(StudentHeadline; "Headline RC Student")
            {
                ApplicationArea = all;
            }
            part("Student Activities"; "Student History")
            {
                ApplicationArea = all;
            }
        }
    }

    actions
    {
        area(Creation)
        {
            action(NewApplicant)
            {
                Caption = 'New Applicant';
                ApplicationArea = all;
                RunObject = page StudentApplicationCardPage;
                RunPageMode = Create;
            }
            action(NewStudent)
            {
                Caption = 'New Student';
                ApplicationArea = all;
                RunObject = page MainStudentsCardPage;
                RunPageMode = Create;

            }
        }
        area(Sections)
        {
            group(StudentApplication)
            {
                Caption = 'Student Application';
                Image = RegisteredDocs;
                action(StudentApplicationList)
                {
                    Caption = 'Student Application List';
                    RunObject = Page StudentsApplicationListPage;
                    ApplicationArea = all;
                }
            }
            group(StudentDetails)
            {
                Caption = 'Student Details';
                Image = RegisteredDocs;
                action(Students)
                {
                    Caption = 'Student List';
                    ApplicationArea = all;
                    RunObject = Page MainStudentsListPage;
                }
                action(Courses)
                {
                    Caption = 'Courses Offered List';
                    ApplicationArea = all;
                    RunObject = Page CoursesOfferedList;
                }
                action(Units)
                {
                    Caption = 'Units List';
                    ApplicationArea = all;
                    RunObject = Page "Units List Page";
                }
                action(Year)
                {
                    Caption = 'Year List';
                    ApplicationArea = all;
                    RunObject = Page "Academic Year List Page";
                }
                action(Semester)
                {
                    Caption = 'Semester List';
                    ApplicationArea = all;
                    RunObject = Page "Academic Semester List Page";
                }
                action(Counties)
                {
                    Caption = 'Counties List';
                    ApplicationArea = all;
                    RunObject = Page CountiesList;
                }
                action(NextOfKin)
                {
                    Caption = 'Next Of Kin List';
                    ApplicationArea = all;
                    RunObject = Page NextOfKinListPage;
                }
            }

        }
        area(Embedding)
        {
            action(StudentChanges)
            {
                Caption = 'Student changes List';
                ApplicationArea = all;
                RunObject = Page "MainStudent Changes List Page";
            }

        }
        /* area()
         {

         } */
    }
}
profile "PK Profile"
{
    ProfileDescription = 'PK Profile';
    RoleCenter = "Student Role Centre";
    Caption = 'PK Profile';
}