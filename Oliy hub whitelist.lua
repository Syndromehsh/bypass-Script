local StarterGui = game:GetService("StarterGui")
local Players = game:GetService("Players")
local WhitelistedPlayers = {
    ["PNK_Pem"] = true,
    ["IWILLKIU_k"] = true,
    ["Franken_XXX"] = true,
    ["Xiaoxu_Love"] = true,
    ["91d7856"] = true,
    ["jiejiejie235"] = true,
    ["alskdjfh7788"] = true,
}

local function IsWhitelisted(player)
    return WhitelistedPlayers[player.Name] or false
end

local localPlayer = Players.LocalPlayer

local isLocalPlayerWhitelisted = IsWhitelisted(localPlayer)

if isLocalPlayerWhitelisted then
    StarterGui:SetCore("SendNotification", {
        Title = "白名单认证",
        Text = "玩家:"..localPlayer.Name.."，检测完毕白名单玩家，稍后会加载脚本",
        Duration = 7,
    })
    loadstring(game:HttpGet("https://raw.githubusercontent.com/jiami114514/oilyhub/refs/heads/main/oliyhub"))()
else
    localPlayer:Kick("你没有被加入白名单，请找群主反馈")
end
