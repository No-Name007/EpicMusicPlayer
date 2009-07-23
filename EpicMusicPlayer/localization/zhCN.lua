﻿--Chinese local by Yeachan @CWDG
--Email:  yeachan@live.com
local AceLocale = LibStub:GetLibrary("AceLocale-3.0")
local L = AceLocale:NewLocale("EpicMusicPlayer", "zhCN")
if not L then return end

--@localization(locale="zhCN", format="lua_additive_table", handle-subnamespaces="concat")@

-- key binding variables
BINDING_HEADER_EPICMUSICPLAYER = "EpicMusicPlayer";
BINDING_NAME_PLAYSTOP = "播放/停止";
BINDING_NAME_NEXT = "下一曲";
BINDING_NAME_LAST = "上一曲";
BINDING_NAME_TOGGLELIST = "是否显示列表";
BINDING_NAME_MUTE = "静音";
BINDING_NAME_REMOVESONG = "删除歌曲";
BINDING_NAME_GUI = "设置";
BINDING_NAME_BADLIST = "歌曲黑名单.";
BINDING_NAME_BESTLIST = "歌曲红名单.";
