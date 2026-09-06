--[=[
    BananaHub Secured Core - Anti-Bypass
]=]
local _env = getgenv()
local _hs = game:GetService("HttpService")
local _plrs = game:GetService("Players")

-- 強制檢驗並清除外部變數殘留，防止直接賦值繞過
local userProvidedKey = _env.Key
_env.Key = nil -- 立即清空，避免被外部直接呼叫

local CorrectKey = "\70\82\69\69\57\57\57\57" -- "FREE9999"

if not userProvidedKey or userProvidedKey ~= CorrectKey then
    -- 故意觸發錯誤或強制踢出，達到攔截效果
    _plrs.LocalPlayer:Kick("Security Error: Unauthorized Access Attempt Detected!")
    error("Access Denied")
    return
end

-- 通過驗證後的遊戲主載入邏輯
local success, UniverseID = pcall(function()
    return _hs:JSONDecode(_hs:HttpGet("https://apis.roblox.com/universes/v1/places/"..game.PlaceId.."/universe")).universeId
end)

if not success or not UniverseID then
    UniverseID = 0
end

local PlaceId = game.PlaceId

if PlaceId == 1537690962 or PlaceId == 4079902982 then
    if _env.betabss then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/hlamx/huhu/master/bssrewrite-obfuscated.lua"))()
    else
        loadstring(game:HttpGet("https://raw.githubusercontent.com/obiiyeuem/vthangsitink/main/BSS-BananaCat.lua"))()
    end
elseif PlaceId == 10260193230 then 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/obiiyeuem/vthangsitink/main/Seahuhu-BananaCat.lua"))()
elseif PlaceId == 7449423635 or PlaceId == 2753915549 or PlaceId == 4442272183 or PlaceId == 122478697296975 or UniverseID == 994732206 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/obiiyeuem/vthangsitink/main/BF-BananaCat.lua"))()
elseif PlaceId == 4520749081 or PlaceId == 6381829480 or PlaceId == 15759515082 or PlaceId == 5931540094 then 
    repeat task.wait() until _plrs.LocalPlayer and _plrs.LocalPlayer:FindFirstChild("DataLoaded") and _plrs.LocalPlayer:FindFirstChild("DataLoaded").Value
    loadstring(game:HttpGet("https://raw.githubusercontent.com/obiiyeuem/vthangsitink/main/KL-BananaCat.lua"))()
elseif PlaceId == 18901165922 or PlaceId == 19006211286 then 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/obiiyeuem/vthangsitink/refs/heads/main/PetsGo.lua"))()
elseif PlaceId == 16732694052 then 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Banana-Cat-Hub/main/Fisch.lua"))()
elseif UniverseID == 5844593548 then 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/obiiyeuem/vthangsitink/main/AnimeReborn.lua"))()
elseif UniverseID == 6325068386 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/obiiyeuem/vthangsitink/refs/heads/main/Bluelock.lua"))()
elseif UniverseID  == 7074860883 then 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/obiiyeuem/vthangsitink/refs/heads/main/Arise.lua"))()
elseif UniverseID  == 7018190066 then 
     loadstring(game:HttpGet("https://raw.githubusercontent.com/obiiyeuem/vthangsitink/refs/heads/main/Bananacat-Deadrails.lua"))()
elseif UniverseID  == 7436755782 then 
     loadstring(game:HttpGet("https://raw.githubusercontent.com/obiiyeuem/vthangsitink/refs/heads/main/GrowAGraden.lua"))()
elseif UniverseID == 7709344486 then 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/obiiyeuem/vthangsitink/refs/heads/main/BananaCat-Brainrot.lua"))()
elseif UniverseID == 7671049560 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/obiiyeuem/vthangsitink/refs/heads/main/theforge.lua"))()
elseif UniverseID == 9186719164 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/obiiyeuem/vthangsitink/refs/heads/main/SailorPiece.lua"))()
elseif UniverseID == 4658598196 then 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/TannyIsDeveloper/LittleTemplate/main/Banana-AOTR.lua"))()
elseif UniverseID == 10200395747 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/tmuseAI/bnnc/refs/heads/main/gag2main.lua"))()
else
    loadstring(game:HttpGet("https://raw.githubusercontent.com/obiiyeuem/vthangsitink/main/AV-BananaCat.lua"))()
end
