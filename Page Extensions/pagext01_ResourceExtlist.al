
pageextension 50101 "CSD ResourceListExt" extends "Resource List"
{
    // CSD1.00 - 2018-01-01 - D. E. Veloper

    layout
    {
        modify(Type)
        {
            Visible = ShowType;
        }

        addafter(Type)
        {
            field("CSD Resource Type"; Rec."CSD Resource Type")
            {
                ApplicationArea = All;
            }

            field("CSD Maximum Participants"; Rec."CSD Maximum Participants")
            {
                Visible = ShowMaxField;
                ApplicationArea = All;
            }
        }
    }

    trigger OnOpenPage()
    begin
        ShowType := (Rec.GetFilter(Type) = '');
        ShowMaxField := (Rec.GetFilter(Type) = Format(Rec.Type::Machine));
    end;

    var
        ShowMaxField: Boolean;
        ShowType: Boolean;
}
