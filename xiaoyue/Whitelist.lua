local StarterGui = game:GetService("StarterGui")

local Players = game:GetService("Players")

local WhitelistedPlayers = {

    ["HXB20111"] = true,

    ["szxxs888"] = true,

    ["玩家用户名"] = true,

    ["玩家用户名"] = true,

}

local function IsWhitelisted(player)

    return WhitelistedPlayers[player.Name] or false

end

local localPlayer = Players.LocalPlayer

local isLocalPlayerWhitelisted = IsWhitelisted(localPlayer)

if isLocalPlayerWhitelisted then

    StarterGui:SetCore("SendNotification", {

        Title = "白名单认证",

        Text = "玩家:"..localPlayer.Name.."，检测VIP用户",

        Duration = 7,

    })

    loadstring(game:HttpGet("https://raw.githubusercontent.com/loveyouone/lj/refs/heads/main/%E5%B0%8F%E6%9C%88%E8%84%9A%E6%9C%AC.lua"))()

else

    localPlayer:Kick("请购买白名单")

end
