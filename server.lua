
RegisterNetEvent("clothing:filterForAceAllowed")
AddEventHandler("clothing:filterForAceAllowed", function()
    local src = source

    print(src)

    toReturn = {}

    
        for k,v in pairs(Clothing_Catagories) do
            if IsPlayerAceAllowed(src, v.ace) then
                print("Allowed Ace: "..v.ace)
                toReturn[k] = v
            else
                print("Not Allowed Ace: "..v.ace)
            end
        end

    TriggerClientEvent('clothing:hereAceAllowedList', src, toReturn)
end)
