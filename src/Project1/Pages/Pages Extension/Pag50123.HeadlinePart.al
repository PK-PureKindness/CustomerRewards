page 50123 "Headline RC Student"
{
    PageType = HeadlinePart;
    RefreshOnActivate = true;
    Caption = 'Headline RC Student';

    layout
    {
        area(Content)
        {
            group(General)
            {
                ShowCaption = false;
                field(Welcome; Welcome)
                {
                    ApplicationArea = All;
                }
                field(CalwideAcademyIsAwesomeLbl; CalwideAcademyIsAwesomeLbl)
                {
                    ApplicationArea = All;
                    DrillDown = true;
                    Editable = false;
                    trigger OnDrillDown()
                    begin
                        Hyperlink('https://calwide.co.ke/');
                    end;
                }
            }
        }
    }
    trigger OnOpenPage()
    begin
        Welcome := StrSubstNo(WelcomeLbl, UserId());
    end;

    var
        WelcomeLbl: Label 'Welcome %1';
        CalwideAcademyIsAwesomeLbl: Label '<qualifer>Calwide Learn</qualifier><payload>Learning at<emphasize> Calwide Academy</emphasize> is Awesome!</payload>';
        Welcome: Text;
}