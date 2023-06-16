local frame = CreateFrame("Frame")
frame:RegisterEvent("PLAYER_LOGIN")

local function OnEvent(self, event, ...)
    if event == "PLAYER_LOGIN" then
        StaticPopup_Show("WELCOME_MESSAGE")
    end
end

local MoanSound = "Interface\\Addons\\MyFugginAddon\\sounds\\moan.mp3"

frame:SetScript("OnEvent", OnEvent)

StaticPopupDialogs["WELCOME_MESSAGE"] = {
    text = "Mirko stinkt!",
    button1 = "OK",
    OnAccept = function()
        PlaySoundFile(MoanSound, "MASTER")
    end,
    timeout = 0,
    whileDead = true,
    hideOnEscape = true,
    preferredIndex = 3 
}
