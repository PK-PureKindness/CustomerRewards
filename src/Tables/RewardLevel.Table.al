table 50102 rewardLevel
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Date"; Date)
        {
            DataClassification = ToBeClassified;

        }
        field(10; "Created by"; text[20])
        {
            DataClassification = ToBeClassified;
        }

        field(20; "Customer no."; Integer)
        {
            DataClassification = ToBeClassified;
        }

        field(30; "Customer name"; text[30])
        {
            DataClassification = ToBeClassified;
        }
        field(40; "Location"; text[30])
        {
            DataClassification = ToBeClassified;
        }

        field(50; "Rewarded"; Boolean)
        {
            DataClassification = ToBeClassified;
        }

    }

    keys
    {
        key(Key1; "Customer no.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }


}