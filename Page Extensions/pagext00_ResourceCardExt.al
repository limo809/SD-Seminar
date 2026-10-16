
pageextension 50100 "CSD ResourceCardExt" extends "Resource Card"
{
    // CSD1.00 - 2018-02-01 - D. E. Veloper

    layout
    {
        addlast(General)
        {
            field("CSD Resource Type"; Rec."CSD Resource Type")
            {
                ApplicationArea = All;
            }

            field("CSD Maximum Participants"; Rec."CSD Maximum Participants")
            {
                ApplicationArea = All;
            }

            field("CSD Quantity Per Day"; Rec."CSD Quantity Per Day")
            {
                ApplicationArea = All;
            }
        }
    }
}
