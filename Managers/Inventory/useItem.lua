function useItem(item, target)
    for i=1, 19 do
        if GetInventoryItemID(item, i) == item then
            UseItemByName(item)
            Print("Using "..item)
        else
            Print("Cannot use item")
        end
    end
end
