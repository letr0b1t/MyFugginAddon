local frame = CreateFrame("Frame")
frame:RegisterEvent("PLAYER_LOGIN")

local MoanSound = "Interface\\Addons\\MyFugginAddon\\sounds\\moan2.mp3"

local function OnEvent(self, event, ...)
    if event == "PLAYER_LOGIN" then
        StaticPopup_Show("WELCOME_MESSAGE")
    end
end

frame:SetScript("OnEvent", OnEvent)

StaticPopupDialogs["WELCOME_MESSAGE"] = {
    text = "Mirko stinkt!",
    button1 = "Stimmt",
    button2 = "Nein...",
    OnAccept = function()
        PlaySoundFile(MoanSound, "MASTER")
    end,
    OnCancel = function()
        StaticPopup_Show("SMELLS_OF_CURSE")
    end,
    timeout = 0,
    whileDead = true,
    hideOnEscape = true,
    preferredIndex = 3 
}

StaticPopupDialogs["SMELLS_OF_CURSE"] = {
    text = "Doch!",
    button1 = "OK",
    OnAccept = function()
        
    end,
    timeout = 0,
    whileDead = true,
    hideOnEscape = true,
    preferredIndex = 3 
}