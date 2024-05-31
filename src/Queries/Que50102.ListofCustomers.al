query 50102 "List of Customers"
{
    Caption = 'List of Customers';
    QueryType = Normal;
    QueryCategory = 'Customer List';

    elements
    {
        dataitem(Customer; Customer)
        {
            column(Address; Address)
            {
            }
            column(Amount; Amount)
            {
            }
            column(Balance; Balance)
            {
            }
            column(City; City)
            {
            }
            column(Contact; Contact)
            {
            }
            column(Comment; Comment)
            {
            }
            column(CountryRegionCode; "Country/Region Code")
            {
            }
            column(EMail; "E-Mail")
            {
            }
            column(Image; Image)
            {
            }
            column(Name; Name)
            {
            }
            column(PartnerType; "Partner Type")
            {
            }
        }
    }

    trigger OnBeforeOpen()
    begin

    end;
}
