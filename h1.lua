getgenv()["atrx_Sniper"] = {
    Configuration = {
        Buy_Delay_MS = 10,
        Webhook = {
            Url = "https://discord.com/api/webhooks/1123339315729137695/olW-SCs_ms2MuNkvYW8iXEPWg9JvgX2V9F6afdgdMUhIiB9BzBSaa_2_wpRz24-8_o4I",
            Content = "@everyone";
        }
    },
    Pets = {
        ["Coins"] = {
            MAX_PRICE = 3000,
            FORM = "Normal", -- Normal, Rainbow, Golden
            NAME_MATCHING = true -- Basically it will buy the pet if only part of the described name matches (you can insta buy huges with this buy just calling the pet you want to snipe Huge and turning this on)
        }
    },
}

	
local Plaza = getsenv(game.Players.LocalPlayer.PlayerScripts:WaitForChild("Scripts"):WaitForChild("Game"):WaitForChild("Trading Plaza"):WaitForChild("Booths Frontend"))
local Save = require(game.ReplicatedStorage.Library.Client.Save).Get()
local _oldFunction = clonefunction(Plaza.updateBooth)
local GetDiamonds = function()
    for _, v in pairs(Save.Inventory.Currency) do 
        if v.id == 'Diamonds' then 
            return v._am 
        end 
    end
end
local Notify = function(PET_DATA)
   print("piM")
end
local GetPetForm = function(Data)
    return (Data.pt == nil) and 'Normal' or (Data.pt == 1) and 'Golden' or (Data.pt == 2) and 'Rainbow'
end
local MeetsForm = function(Form, Needed)
    local forms = {
        [1] = 'Normal',
        [2] = 'Golden',
        [3] = 'Rainbow';
    }
    return table.find(forms, Form) >= table.find(forms, Needed)
end
local GetMatch = function(PetName)
    for _, v in pairs(atrx_Sniper.Pets) do 
        if v.NAME_MATCHING then 
            if PetName:match(_) then 
                return atrx_Sniper.Pets[_]
            end
        end 
    end
end
local GetSnipes = function(Update)
    local hits = {}
    for _, v in pairs(Update.Listings) do 
        if atrx_Sniper.Pets[v.Item["_data"].id] or GetMatch(v.Item["_data"].id) then
            local SnipingID = atrx_Sniper.Pets[v.Item["_data"].id] or GetMatch(v.Item["_data"].id)
            local Price = v.DiamondCost;
			local PetName = v.Item:GetName();
            local Rarity = v.Item:GetRarity().DisplayName;
            print("Pet: " .. PetName .. " - Rarity: " .. Rarity .. " , Price: " .. v.DiamondCost)
            print(v.Item["_data"].id, math.round(v.DiamondCost / (v.Item["_data"]["_am"] or 1)))
            if math.round(v.DiamondCost / (v.Item["_data"]["_am"] or 1)) <= SnipingID.MAX_PRICE and GetDiamonds() >= v.DiamondCost and MeetsForm(GetPetForm(v.Item["_data"]), SnipingID.FORM) then
                hits[#hits + 1] = {
                    NAME = v.Item["_data"].id,
                    PRICE = Price,
                    MAX_PRICE = SnipingID.MAX_PRICE,
                    PLAYER_ID = Update.PlayerID,
                    COUNT = v.Item["_data"]["_am"] or 1,
                    UID = _
                }
            end     
        end 
    end
    return hits
end
Plaza.updateBooth = function(...)
    local args = {...}
    local Data = args[1]
    local a = GetSnipes(Data)
    if #a > 0 then 
        for _, v in pairs(a) do 
            task.wait(atrx_Sniper.Configuration.Buy_Delay_MS / 1000)
            local args = {
                [1] = v.PLAYER_ID,
                [2] = tostring(v.UID)
            }
            
            game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Booths_RequestPurchase"):InvokeServer(unpack(args))
            
            Notify(v)
        end
    end
    _oldFunction(...)
end
