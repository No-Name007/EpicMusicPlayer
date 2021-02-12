local EpicMusicPlayer = LibStub("AceAddon-3.0"):GetAddon("EpicMusicPlayer")
local L = LibStub("AceLocale-3.0"):GetLocale("EpicMusicPlayer")
local debug = EpicMusicPlayer.Debug

local syncPrefix = "EMPSYNC"
C_ChatInfo.RegisterAddonMessagePrefix(syncPrefix)

function EpicMusicPlayer:SyncAndPlayTo(listIndex, songIndex, syncType)
    list = EpicMusicPlayer:GetListByIndex(listIndex)
    C_ChatInfo.SendAddonMessage(syncPrefix, EpicMusicPlayer:GetSong(listIndex, songIndex).Name, syncType)
end

local function OnEvent(self, event, ...)
    local args = {...}
    local prefix = args[1]
    if event == "CHAT_MSG_ADDON" and prefix == syncPrefix then
        local song = EpicMusicPlayer:FindSongByName(args[2])
        EpicMusicPlayer:PlaySongSynced(song)
        EpicMusicPlayer.db.songsynced = true
    end
end

local f = CreateFrame("Frame")
f:RegisterEvent("CHAT_MSG_ADDON")
f:SetScript("OnEvent", OnEvent)