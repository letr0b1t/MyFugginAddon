local frame = CreateFrame("Frame")
frame:RegisterEvent("PLAYER_LOGIN")

local function OnEvent(self, event, ...)
    if event == "PLAYER_LOGIN" then
        StaticPopup_Show("MEIN_ADDON_MESSAGE")
    end
end

local MoanSound = "Interface\\Addons\\MyFugginAddon\\moan.mp3"

frame:SetScript("OnEvent", OnEvent)

StaticPopupDialogs["MEIN_ADDON_MESSAGE"] = {
    text = "Mirko stinkt!",
    button1 = "OK",
    OnAccept = function()
        PlaySoundFile(MoanSound, "MASTER")
    end,
    timeout = 0,
    whileDead = true,
    hideOnEscape = true,
    preferredIndex = 3 -- Setze die Reihenfolge, falls weitere Dialoge geöffnet sind
}
