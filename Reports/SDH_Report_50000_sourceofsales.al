report 50000 "Source of Sales"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = 'Reports\Sourceofsales.rdl';

    dataset
    {
        dataitem("Item Ledger Entry"; "Item Ledger Entry")
        {
            RequestFilterFields = "Item No.", "Location Code", "Posting Date";
            //DataItemTableView = where("Source" = filter(<> '1'));
            column(Item_No_; "Item No.")
            { }
            column(Description; Description)
            { }
            column(Location_Code; "Location Code")
            { }
            column(Quantity; Quantity)
            { }
            column(Posting_Date; "Posting Date")
            { }
            column(Document_No_; "Document No.")
            { }
            column(Unit_of_Measure_Code; "Unit of Measure Code")
            { }
            column(Global_Dimension_1_Code; "Global Dimension 1 Code")
            {
                IncludeCaption = true;
            }
            column(Global_Dimension_2_Code; "Global Dimension 2 Code")
            {
                IncludeCaption = true;
            }
        }

    }
}