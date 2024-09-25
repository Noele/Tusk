local f = CreateFrame("Frame")

VoiceLines = {
    Boar = {
        Effects = {
            FeedPetEffect = {
                Name = "Feed Pet Effect",
                OnLoss = "No more snacks :(",
                OnGain = "Yum! Snacks!",
                Bool = false
            },
            Fortitude = {
                Name = "Fortitude",
                OnLoss = "Well, there goes my tough-guy act!",
                OnGain = "I'm feeling stronger already!",
                Bool = false
            }
        },
        Combat = {
            Growl = {
                SpellID = 14916,
                Quips = {
                    "Grrr! You call that a challenge?",
                    "I hope you’re ready for a face full of snout!",
                    "Is that all you’ve got? I’m just getting started!",
                    "You’re about to find out why they call me a fierce beast!",
                    "Just so you know, I’m not just a pretty face!",
                    "I could roll in mud, but instead, I’ll roll over you!",
                    "You think you’re tough? I eat things tougher than you for breakfast!",
                }
            }
        },
        Happiness = {
            Loss = "I need a hug... or maybe just a really big pile of food."
        },
        Zones = {
            darnassus = {
                Quips = {
                    "What's a boar like me doing in a treehouse like this?",
                    "I smell flowers... and judgment.",
                    "These trees are too tall; I can’t see my food!",
                    "Do they have snacks on the top floor?",
                    "I could roll in these flowers... if I wanted to smell nice.",
                    "Why do all the night elves look so serious?",
                    "I feel like a snack among these blossoms.",
                    "Is that a banquet table I see in the distance?",
                    "These leaves are nice, but where's the meat?",
                }
            },
            stormwind = {
                Quips = {
                    "Is that a bread line? I'm in!",
                    "So many humans, so little time to eat them.",
                    "This city smells like baked goods!",
                    "I bet I could take a nap on the king's throne.",
                    "I hope they have a buffet at the castle!",
                    "Is it just me, or is that a roast boar on the menu?",
                    "Where do they keep the good snacks around here?",
                    "All these guards, and not a single snack in sight!",
                    "Do they sell piglets here? Asking for a friend.",
                }
            },
            orgrimmar = {
                Quips = {
                    "This place smells like sweat and adventure!",
                    "I feel like I could charge right into a fight... or a buffet.",
                    "The orcs look tough, but I'm tougher... right?",
                    "I hope they have some good meaty dishes!",
                    "Do they serve snacks in the Valley of Strength?",
                    "These gates could use some bacon grease!",
                    "I could roll through here and knock over a few trolls.",
                    "So many warriors; I feel a bit underdressed.",
                    "The heat here makes me crave a cool drink!",
                }
            },
            ironforge = {
                Quips = {
                    "It's cold here! Where's the nearest hot stew?",
                    "A boar in a forge? I bet I could melt some iron.",
                    "I wonder if they have any dwarf-sized snacks?",
                    "This place is cozy; can I stay forever?",
                    "I could use a hot chocolate and a cookie right about now.",
                    "Do they sell iron for snacks? Asking for a recipe.",
                    "I feel like I could be the bouncer here!",
                    "Maybe I’ll find a treasure chest filled with snacks.",
                    "Is that a roast in the center? Smells amazing!"
                }
            },
            thunderbluff = {
                Quips = {
                    "High up here! I can see my snack options from miles away.",
                    "I hope they have a buffet up here!",
                    "Why does it feel like I’m in a giant salad bowl?",
                    "I could get used to this view... and these snacks!",
                    "I wonder how many people I could scare off the cliffs.",
                    "Do they serve food at the top of each tower?",
                    "Is that a wind chime? Sounds like a snack bell!",
                    "I’d fit right in at a tauren barbecue.",
                    "Can I nap in one of these huts? I promise not to eat anyone!"
                }
            },
            ashenvale = {
                Quips = {
                    "I can smell all the critters hiding in these trees!",
                    "Is it snack time, or am I just dreaming?",
                    "I could climb these trees, but where’s the food?",
                    "Watch out for those night elves; they look sneaky!",
                    "I hope there’s a picnic area around here somewhere.",
                    "These woods are beautiful, but I’m hungry!",
                    "I should try to find a snack in the bushes.",
                    "I feel like I’m in a salad bar!",
                    "Ashenvale? More like Snackenvale!",
                    "Do these trees have snack branches?"
                }
            },
            westfall = {
                Quips = {
                    "I hope there's no scarecrow looking for me around here.",
                    "I hear there’s good corn in these fields!",
                    "These fields could use a few boars running around.",
                    "What's that smell? Is it fried food?",
                    "I could roll through this corn like it’s my own jungle.",
                    "Do they have popcorn? I love popcorn!",
                    "I could turn this whole place into a picnic!",
                    "These farmers look like they could use a snack buddy.",
                    "I hope they have pies around here!"
                }
            },
            teldrassil = {
                Quips = {
                    "Tree sap? Yum! Just don't let the night elves catch me!",
                    "What a beautiful tree! Can I eat it?",
                    "These flowers are nice, but I prefer meat.",
                    "Is this place always so... peaceful?",
                    "I should be careful; I don’t want to be a snack!",
                    "I wonder how many elves it takes to catch a boar.",
                    "Can I climb this tree, or will I get in trouble?",
                    "Is there a buffet at the top of the tree?",
                    "These leaves are tasty, but I’m craving something heartier!"
                }
            },
            stranglethornvale = {
                Quips = {
                    "Jungle vibes! I could get used to this place.",
                    "Better watch out for the trolls; they look hungry!",
                    "I smell something cooking... time to investigate!",
                    "I bet there’s a great buffet hidden in these ruins.",
                    "This jungle is ripe for a pig adventure!",
                    "I could use a good sunbathe... and some snacks.",
                    "These trees are perfect for hiding from trouble!",
                    "Is that a treasure map? I bet it leads to food!",
                    "I can’t tell if it’s the humidity or my hunger!"
                }
            },
            zulgurub = {
                Quips = {
                    "What's with all these statues? I'm not scared!",
                    "I hope there are some tasty trolls around here!",
                    "This place gives me the creeps... and the munchies!",
                    "I wonder if they have a snack temple around here.",
                    "These ruins could use a boar to liven things up!",
                    "I should explore this place; there could be food!",
                    "I hear trolls make good barbecue!",
                    "Can I eat one of these statues? Asking for a friend.",
                    "Is there a troll chef around here?"
                }
            },
            bootybay = {
                Quips = {
                    "Arrr matey! Where's me treasure... and snacks?",
                    "This place is busy! Let's get some pirate grub!",
                    "Do they have any good seafood around here?",
                    "I bet I could find some tasty loot in the tavern.",
                    "I could run this place if I had enough snacks!",
                    "These pirates look like they need a snack buddy.",
                    "Can I find a treasure chest filled with meat?",
                    "I wonder how many barrels of snacks are here!",
                    "I’d fit right in with these pirates... if they had snacks!"
                }
            },
            silithus = {
                Quips = {
                    "Sand, sand everywhere! But no snacks in sight...",
                    "I feel like a snack in this desert; let's find some food!",
                    "Is that a giant bug? Can I eat it?",
                    "I hope there's a hidden oasis with snacks!",
                    "I should find a shade; I don’t want to roast!",
                    "These sands are hot, but I'm hotter for food!",
                    "Can I dig for snacks in this desert?",
                    "I bet there's a treasure buried under all this sand.",
                    "These bugs might be my new friends... or meals!"
                }
            },
            nagrand = {
                Quips = {
                    "Grass as far as the eye can see! Time for a feast!",
                    "This place feels like home... with snacks!",
                    "I could run around here for days... with snacks!",
                    "Is there a cow nearby? I could use some steak.",
                    "I wonder how many other animals are hiding snacks.",
                    "These hills are perfect for rolling... and snacking!",
                    "Do they have a farm up here? I'm starving!",
                    "This place gives me big snack energy!",
                    "Can I nap here, or are the snacks too distracting?"
                }
            },

        }
    }
}

-- Function to show the speech bubble
local function ShowPetSpeechBubble(text, speak)
    local petUnit = "pet"  -- Reference to the player's pet
    if UnitExists(petUnit) then
        local petName = UnitName(petUnit)
        if petName then
            local foundNamePlate = nil

            -- Iterate through all nameplates
            for i = 1, 40 do
                local namePlate = _G["NamePlate" .. i]
                if namePlate and namePlate.UnitFrame then
                    local namePlateFrame = namePlate.UnitFrame
                    local namePlateText = namePlateFrame.name:GetText()

                    -- Check if the name matches the pet's name
                    if namePlateText == petName then
                        foundNamePlate = namePlate
                        break
                    end
                end
            end

            if foundNamePlate then
                local namePlateFrame = foundNamePlate.UnitFrame
                local namePlateText = namePlateFrame.name

                -- Save the original pet name
                local originalText = namePlateText:GetText()

                -- Set the speech message
                print(petName .. ": " .. text)
                namePlateText:SetText(text)
                namePlateText:SetTextColor(1, 1, 0) -- Change the text color to yellow

                -- Play a sound effect
                if speak then
                    PlaySound(379)
                end

                -- Reset the name back to original after 5 seconds
                C_Timer.After(5, function()
                    namePlateText:SetText(originalText)
                    namePlateText:SetTextColor(1, 1, 1) -- Reset to original color
                end)
            else
                print("Pet nameplate not found.")
            end
        end
    end
end
--
--local function ShowPetSpeechBubble(text, speak)
--    local petUnit = "pet"  -- Reference to the player's pet
--    if UnitExists(petUnit) then
--        local petName = UnitName(petUnit)
--        if petName then
--            -- Loop through all nameplates to find the one that belongs to the pet
--            for i = 1, 40 do
--                local namePlate = _G["NamePlate"..i]
--                if namePlate and namePlate.UnitFrame then
--                    local namePlateFrame = namePlate.UnitFrame
--                    local namePlateText = namePlateFrame.name
--                    if namePlateText and namePlateText:GetText() == petName then
--                        -- Save the original pet name
--                        local originalText = namePlateText:GetText()
--
--                        -- Set the speech message
--                        print(petName .. ": " .. text)
--                        namePlateText:SetText(text)
--                        namePlateText:SetTextColor(1, 1, 0) -- Change the text color to yellow
--
--                        -- Play a sound effect
--                        if speak then
--                            PlaySound(379)
--                        end
--
--                        -- Reset the name back to original after 5 seconds
--                        C_Timer.After(5, function()
--                            namePlateText:SetText(originalText)
--                            namePlateText:SetTextColor(1, 1, 1) -- Reset to original color
--                        end)
--                        return  -- Exit the function once the pet's nameplate is found
--                    end
--                end
--            end
--            -- If no nameplate was found for the pet
--            print("Pet's nameplate not found.")
--        end
--    end
--end

local function CheckPetBuff(unit, buffName)
    if unit == "pet" then
        for i = 1, 40 do
            local name = UnitBuff("pet", i)
            if name == buffName then
                return true
            end
        end
        return false
    end
    return false
end

local lastHappiness = 3
local petFeedBuff = false
local petFortitude = false

local petFamily = UnitCreatureFamily("pet")

local function CheckAndHandlePetBuff(unit, buffName, hadBuff, onLoseBuffMessage, onGainBuffMessage)
    if CheckPetBuff(unit, buffName) == false then
        if hadBuff then
            ShowPetSpeechBubble(onLoseBuffMessage, true)
            return false
        end
    else
        if not hadBuff then
            ShowPetSpeechBubble(onGainBuffMessage, true) -- New message for gaining the buff
        end
        return true
    end
    return hadBuff
end

local function cleanAndLowercase(inputString)
    local cleanedString = inputString:gsub("[%s%p]", "")
    cleanedString = cleanedString:lower()
    return cleanedString
end

local function OnEvent(self, event, unit)
    local petFamily = UnitCreatureFamily("pet")
    local _, subEvent, _, sourceGUID, sourceName, _, _, destGUID, destName, _, _, spellId, spellName = CombatLogGetCurrentEventInfo()
    if event == "UNIT_AURA" and unit == "pet" then
        for i, effect in pairs(VoiceLines[petFamily].Effects) do
            effect.Bool =  CheckAndHandlePetBuff(unit, effect.Name, effect.Bool, effect.OnLoss, effect.OnGain)
        end

    elseif event == "UNIT_HAPPINESS" and unit == "pet" then
        local happiness, loyalty, loyaltyCap = GetPetHappiness()
        if happiness ~= nil then
            if happiness < 3 and lastHappiness == 3 then
                ShowPetSpeechBubble(VoiceLines[petFamily].Happiness.Loss, true)
            end
        end
        lastHappiness = happiness

    elseif event == "ZONE_CHANGED_NEW_AREA" then
        print(event)
        local zoneName = GetZoneText()
        local zone = VoiceLines[petFamily].Zones[cleanAndLowercase(zoneName)]
        if(zone ~= nil) then
            local index = math.random(1, #zone.Quips)
            ShowPetSpeechBubble(zone.Quips[index], true)
        end

    elseif subEvent == "SPELL_CAST_SUCCESS" and sourceName == UnitName("pet") then
        for i, effect in pairs(VoiceLines[petFamily].Combat) do
            if effect.SpellID == spellId then
                local index = math.random(1, #effect.Quips)
                ShowPetSpeechBubble(effect.Quips[index], false)
            end
        end
    end

end

-- Register event for UNIT_AURA
local f = CreateFrame("Frame")
f:SetScript("OnEvent", OnEvent)
f:RegisterEvent("UNIT_AURA")
f:RegisterEvent("UNIT_HAPPINESS")
f:RegisterEvent("ZONE_CHANGED")
f:RegisterEvent("ZONE_CHANGED_NEW_AREA")
f:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")

SLASH_PETBUBBLE1 = "/petbubble"
SlashCmdList["PETBUBBLE"] = ShowPetSpeechBubble