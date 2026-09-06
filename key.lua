
getgenv().SCRIPT_KEY = nil

local Sigil = loadstring(game:HttpGet("https://cdn.jnkie.com/SigilUI.lua"))()

Sigil.Appearance = {
    Title = "4realium",
    Subtitle = "Enter your key to continue",
    KeylessTitle = "4realium",
    KeylessSubtitle = "No key required for this build - you're verified.",
    Icon = "",
}

Sigil.Links.Discord = "discord.gg/jnkie"
Sigil.Storage.FileName = "4realium_key"
Sigil.Storage.Remember = false
Sigil.Storage.AutoLoad = false
Sigil.Options.Keyless = false

Sigil.Shop = {
    Enabled = true,
    Icon = "",
    Title = "Get Premium",
    Subtitle = "Instant delivery - 24/7 support",
    ButtonText = "Buy",
    Link = "jnkie.com"
}

Sigil:LaunchJunkie({
    Service = "4real",
    Identifier = "1104877",
    Provider = "Apollo Program"
})

while not getgenv().SCRIPT_KEY do
    task.wait(0.1)
end
