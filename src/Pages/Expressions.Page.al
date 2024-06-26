page 50104 Expressions
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;

    layout
    {
        area(Content)
        {
            group("Logical & Relational Expressions")
            {
                field(Input1; Input1)
                {
                    ApplicationArea = All;
                    Caption = 'Enter Input1';

                }

                field(Input2; Input2)
                {
                    ApplicationArea = All;
                    Caption = 'Enter Input2';

                }


            }
            group(Output)
            {
                Caption = 'Output';
                field(Result; Result)
                {
                    ApplicationArea = All;
                    Editable = false;

                }

            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(Results)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    if Input1 > Input2 then
                        Result := true
                    else
                        Result := false;

                end;
            }
        }
        area(Navigation)
        {
            group("More information")
            {
                Caption = 'More Data';
                group("More details")
                {


                    action(Customer)
                    {
                        ApplicationArea = All;
                        Caption = 'Customer Details';
                        RunObject = page "Customer Card";


                    }
                }
            }

        }

    }

    var
        Input1: Integer;
        Input2: Integer;
        Result: Boolean;
}