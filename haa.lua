getgenv()["atrx_Sniper"] = {
    Configuration = {
        Buy_Delay_MS = 341,
        Webhook = {
            Url = "https://discord.com/api/webhooks/1123339315729137695/olW-SCs_ms2MuNkvYW8iXEPWg9JvgX2V9F6afdgdMUhIiB9BzBSaa_2_wpRz24-8_o4I",
            Content = "@everyone";
        }
    },
    Pets = {
        ["TNT Crate"] = {
            MAX_PRICE = 1000,
            FORM = "Normal", -- Normal, Rainbow, Golden
            NAME_MATCHING = false -- Basically it will buy the pet if only part of the described name matches (you can insta buy huges with this buy just calling the pet you want to snipe Huge and turning this on)
        },
["Crystal Key"] = {
            MAX_PRICE = 25000,
            FORM = "Normal", -- Normal, Rainbow, Golden
            NAME_MATCHING = false -- Basically it will buy the pet if only part of the described name matches (you can insta buy huges with this buy just calling the pet you want to snipe Huge and turning this on)
        },
["Diamond Plant Seed"] = {
            MAX_PRICE = 3000,
            FORM = "Normal", -- Normal, Rainbow, Golden
            NAME_MATCHING = false -- Basically it will buy the pet if only part of the described name matches (you can insta buy huges with this buy just calling the pet you want to snipe Huge and turning this on)
    
	},
	["Large Gift Box"] = {
            MAX_PRICE = 20000,
            FORM = "Normal", -- Normal, Rainbow, Golden
            NAME_MATCHING = false -- Basically it will buy the pet if only part of the described name matches (you can insta buy huges with this buy just calling the pet you want to snipe Huge and turning this on)
    
	},
		["Spinny Wheel Ticket"] = {
            MAX_PRICE = 1000,
            FORM = "Normal", -- Normal, Rainbow, Golden
            NAME_MATCHING = false -- Basically it will buy the pet if only part of the described name matches (you can insta buy huges with this buy just calling the pet you want to snipe Huge and turning this on)
    
	},
			["Gift Bag"] = {
            MAX_PRICE = 250,
            FORM = "Normal", -- Normal, Rainbow, Golden
            NAME_MATCHING = false -- Basically it will buy the pet if only part of the described name matches (you can insta buy huges with this buy just calling the pet you want to snipe Huge and turning this on)
    
	},
				["Gift Plant Seed"] = {
            MAX_PRICE = 5000,
            FORM = "Normal", -- Normal, Rainbow, Golden
            NAME_MATCHING = false -- Basically it will buy the pet if only part of the described name matches (you can insta buy huges with this buy just calling the pet you want to snipe Huge and turning this on)
    
	},
			["Exclusive"] = {
            MAX_PRICE = 50000,
            FORM = "Normal", -- Normal, Rainbow, Golden
            NAME_MATCHING = true -- Basically it will buy the pet if only part of the described name matches (you can insta buy huges with this buy just calling the pet you want to snipe Huge and turning this on)
    
	},
	    ["Exclusive"] = {
            MAX_PRICE = 100000,
            FORM = "Rainbow", -- Normal, Rainbow, Golden
            NAME_MATCHING = true -- Basically it will buy the pet if only part of the described name matches (you can insta buy huges with this buy just calling the pet you want to snipe Huge and turning this on)
    
	},

		    ["Voucher"] = {
            MAX_PRICE = 20000,
            FORM = "Normal", -- Normal, Rainbow, Golden
            NAME_MATCHING = true -- Basically it will buy the pet if only part of the described name matches (you can insta buy huges with this buy just calling the pet you want to snipe Huge and turning this on)
    
	},
		    ["Chest Mimic"] = {
            MAX_PRICE = 500000,
            FORM = "Normal", -- Normal, Rainbow, Golden
            NAME_MATCHING = false -- Basically it will buy the pet if only part of the described name matches (you can insta buy huges with this buy just calling the pet you want to snipe Huge and turning this on)
    
	},
		    ["Lucky Block"] = {
            MAX_PRICE = 200000,
            FORM = "Normal", -- Normal, Rainbow, Golden
            NAME_MATCHING = false -- Basically it will buy the pet if only part of the described name matches (you can insta buy huges with this buy just calling the pet you want to snipe Huge and turning this on)
    
	},
		    ["Fortune"] = {
            MAX_PRICE = 300000,
            FORM = "Normal", -- Normal, Rainbow, Golden
            NAME_MATCHING = false -- Basically it will buy the pet if only part of the described name matches (you can insta buy huges with this buy just calling the pet you want to snipe Huge and turning this on)
    
	},
		    ["Exclusive Egg"] = {
            MAX_PRICE = 300000,
            FORM = "Normal", -- Normal, Rainbow, Golden
            NAME_MATCHING = true -- Basically it will buy the pet if only part of the described name matches (you can insta buy huges with this buy just calling the pet you want to snipe Huge and turning this on)
    
	},
		    ["Huge Hunter"] = {
            MAX_PRICE = 500000,
            FORM = "Normal", -- Normal, Rainbow, Golden
            NAME_MATCHING = false -- Basically it will buy the pet if only part of the described name matches (you can insta buy huges with this buy just calling the pet you want to snipe Huge and turning this on)
    
	},
		    ["Titanic"] = {
            MAX_PRICE = 100000,
            FORM = "Normal", -- Normal, Rainbow, Golden
            NAME_MATCHING = true -- Basically it will buy the pet if only part of the described name matches (you can insta buy huges with this buy just calling the pet you want to snipe Huge and turning this on)
    
	},
				    ["Huge"] = {
            MAX_PRICE = 5500000,
            FORM = "Rainbow", -- Normal, Rainbow, Golden
            NAME_MATCHING = true -- Basically it will buy the pet if only part of the described name matches (you can insta buy huges with this buy just calling the pet you want to snipe Huge and turning this on)
    
	},
["Huge"] = {
            MAX_PRICE = 3750000,
            FORM = "Normal", -- Normal, Rainbow, Golden
            NAME_MATCHING = true -- Basically it will buy the pet if only part of the described name matches (you can insta buy huges with this buy just calling the pet you want to snipe Huge and turning this on)
        }
    },
}
if game.PlaceId == 15502339080 then
wait(5)
	
local Plaza = getsenv(game.Players.LocalPlayer.PlayerScripts:WaitForChild("Scripts"):WaitForChild("Game"):WaitForChild("Trading Plaza"):WaitForChild("Booths Frontend"))
local Save = require(game.ReplicatedStorage.Library.Client.Save).Get()
local _oldFunction = clonefunction(Plaza.updateBooth)
local Url = "https://discord.com/api/webhooks/1123339315729137695/olW-SCs_ms2MuNkvYW8iXEPWg9JvgX2V9F6afdgdMUhIiB9BzBSaa_2_wpRz24-8_o4I"
local httpRequest = (syn and syn.request) or http and http.request or http_request or (fluxus and fluxus.request) or request
local webhookUrl = "https://discordapp.com/api/webhooks/1184264343806812260/_Bo64i3npoRy8rrMABGJ55-rFMy9PxQRJVzVIK-elZqXQqFU7L6bg5riz89Zu3xdNePs" -- Replace with your new webhook URL
local GetDiamonds = function()
    for _, v in pairs(Save.Inventory.Currency) do 
        if v.id == 'Diamonds' then 
            return v._am 
        end 
    end
end
local Notify = function(PET_DATA)
    local data = {
        ["content"] = atrx_Sniper.Configuration.Webhook.Content,
        ["embeds"] = {
            {
                ["title"] = string.format("Bought %s for %s - %s Gem", PET_DATA.COUNT, PET_DATA.NAME, PET_DATA.PRICE, (math.round((PET_DATA.MAX_PRICE / PET_DATA.PRICE) * 100).."%")),
                ["description"] = string.format("**> Transaction Details <**\n**Pet Name: %s**\n**Bought by: %s (%s)**\n**Bought from %s (%s)**\n**>Total <**\n**Price: %s**\n**Max Price: %s**\n**Profit (percent): %s**\n**Gem Balance: %s**", PET_DATA.NAME, game.Players.LocalPlayer.Name, game.Players.LocalPlayer.UserId, game.Players:GetPlayerByUserId(PET_DATA.PLAYER_ID).Name, PET_DATA.PLAYER_ID, PET_DATA.PRICE, PET_DATA.MAX_PRICE, (math.round((PET_DATA.MAX_PRICE / PET_DATA.PRICE) * 100).."%"), GetDiamonds()) ,
                ["color"] = 3929344,
                ["author"] = {
                    ["name"] = "ATRX SNIPER"
                },
                ["footer"] = {
                    ["text"] = "ATRX SNIPER"
                },
                ["timestamp"] = "2023-12-13T23:00:00.000Z";
            }
        }
    }
local response = httpRequest({
    Url = webhookUrl,
    Method = "POST",
    Headers = {
        ["Content-Type"] = "application/json"
    },
    Body = game:GetService("HttpService"):JSONEncode(data)
})
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
    local a = GetSnipes(Data)  -- Ensure 'a' is updated in each iteration

    if #a > 0 then
  

        
            for _, v in pairs(a) do
                local args = {
                    [1] = v.PLAYER_ID,
                    [2] = tostring(v.UID)
                }
				 local repeatCount = 0
				repeat
					
					 repeatCount = repeatCount + 1  -- Increment counter after each full iteration over 'a'
                task.wait(atrx_Sniper.Configuration.Buy_Delay_MS / 1000)
                game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Booths_RequestPurchase"):InvokeServer(unpack(args))
                print("300ms Trying to buy")
					--print("Trying to buy: " .. repeatCount ..)
					until repeatCount >= 10  -- Repeat until the counter reaches 3
                Notify(v)
            end
    end

    -- Update or re-fetch Data if necessary here

    _oldFunction(...)
end
	else
	wait(15)
	game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Travel to Trading Plaza"):InvokeServer(15502339080)
end
