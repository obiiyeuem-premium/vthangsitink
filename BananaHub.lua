--[=[
    BananaHub - Stable UI Key System
]=]
local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local HttpService = game:GetService("HttpService")

repeat task.wait() until Players.LocalPlayer

local CorrectKey = "M87dJ828hX7e4"
local verified = false

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "BananaHubKeySystem"
ScreenGui.Parent = CoreGui
ScreenGui.ResetOnSpawn = false

local Frame = Instance.new("Frame")
Frame.Size = UDim2.new(0, 320, 0, 180)
Frame.Position = UDim2.new(0.5, -160, 0.5, -90)
Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Frame.BorderSizePixel = 0
Frame.Parent = ScreenGui

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 10)
UICorner.Parent = Frame

local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1, 0, 0, 40)
Title.BackgroundTransparency = 1
Title.Text = "Banana Hub - Key System"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 18
Title.Font = Enum.Font.GothamBold
Title.Parent = Frame

local TextBox = Instance.new("TextBox")
TextBox.Size = UDim2.new(0.8, 0, 0, 40)
TextBox.Position = UDim2.new(0.1, 0, 0.35, 0)
TextBox.PlaceholderText = "請輸入金鑰"
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
TextBox.TextSize = 14
TextBox.Font = Enum.Font.Gotham
TextBox.Parent = Frame

local BoxCorner = Instance.new("UICorner")
BoxCorner.CornerRadius = UDim.new(0, 6)
BoxCorner.Parent = TextBox

local Button = Instance.new("TextButton")
Button.Size = UDim2.new(0.8, 0, 0, 40)
Button.Position = UDim2.new(0.1, 0, 0.65, 0)
Button.Text = "確認驗證"
Button.TextColor3 = Color3.fromRGB(255, 255, 255)
Button.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
Button.TextSize = 16
Button.Font = Enum.Font.GothamBold
Button.Parent = Frame

local BtnCorner = Instance.new("UICorner")
BtnCorner.CornerRadius = UDim.new(0, 6)
BtnCorner.Parent = Button

local connection
connection = Button.MouseButton1Click:Connect(function()
    if TextBox.Text == CorrectKey then
        verified = true
        if connection then connection:Disconnect() end
        ScreenGui:Destroy()
    else
        Button.Text = "金鑰錯誤！"
        Button.BackgroundColor3 = Color3.fromRGB(255, 60, 60)
        task.wait(1.5)
        Button.Text = "確認驗證"
        Button.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
    end
end)

-- 用最安全的輪詢等待直到驗證成功
repeat task.wait(0.1) until verified

-- 通過驗證後的遊戲主載入邏輯
local success, UniverseID = pcall(function()
    return HttpService:JSONDecode(HttpService:HttpGet("https://apis.roblox.com/universes/v1/places/"..game.PlaceId.."/universe")).universeId
end)

if not success or not UniverseID then
    UniverseID = 0
end

local PlaceId = game.PlaceId

if PlaceId == 1537690962 or PlaceId == 4079902982 then
    if getgenv().betabss then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/hlamx/huhu/master/bssrewrite-obfuscated.lua"))()
    else
        loadstring(game:HttpGet("https://raw.githubusercontent.com/obiiyeuem/vthangsitink/main/BSS-BananaCat.lua"))()
    end
elseif PlaceId == 10260193230 then 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/obiiyeuem/vthangsitink/main/Seahuhu-BananaCat.lua"))()
elseif PlaceId == 7449423635 or PlaceId == 2753915549 or PlaceId == 4442272183 or PlaceId == 122478697296975 or UniverseID == 994732206 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/obiiyeuem/vthangsitink/main/BF-BananaCat.lua"))()
elseif PlaceId == 4520749081 or PlaceId == 6381829480 or PlaceId == 15759515082 or PlaceId == 5931540094 then 
    repeat task.wait() until Players.LocalPlayer and Players.LocalPlayer:FindFirstChild("DataLoaded") and Players.LocalPlayer:FindFirstChild("DataLoaded").Value
    loadstring(game:HttpGet("https://raw.githubusercontent.com/obiiyeuem/vthangsitink/main/KL-BananaCat.lua"))()
elseif PlaceId == 18901165922 or PlaceId == 19006211286 then 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/obiiyeuem/vthangsitink/refs/heads/main/PetsGo.lua"))()
elseif PlaceId == 16732694052 then 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Banana-Cat-Hub/main/Fisch.lua"))()
elseif UniverseID == 5844593548 then 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/obiiyeuem/vthangsitink/main/AnimeReborn.lua"))()
elseif UniverseID == 6325068386 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/obiiyeuem/vthangsitink/refs/heads/main/Bluelock.lua"))()
elseif UniverseID == 7074860883 then 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/obiiyeuem/vthangsitink/refs/heads/main/Arise.lua"))()
elseif UniverseID == 7018190066 then 
     loadstring(game:HttpGet("https://raw.githubusercontent.com/obiiyeuem/vthangsitink/refs/heads/main/Bananacat-Deadrails.lua"))()
elseif UniverseID == 7436755782 then 
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
