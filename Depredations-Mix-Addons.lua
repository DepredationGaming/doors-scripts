local Options = getgenv().Linoria.Options;
local Toggles = getgenv().Linoria.Toggles;

local Addon = {
    Name = "Depredations Mix Addons",
    Title = "Depredations Mix Addons",
    Game = {
        "doors/doors",
        "doors/lobby"
    },

    Elements = {
        {
            Type = "Toggle",
            Name = "Stun",
            Arguments = {
                Text = 'Stun From tplay',
                Tooltip = 'Enable to Stun',
                Enabled = false,

                Callback = function(value)
                    
                    local cfcfcf = game.Players.LocalPlayer
                    
                    if value then
                        cfcfcf.Character:SetAttribute('Stunned', true)
                    else
                        cfcfcf.Character:SetAttribute('Stunned', false)
                    end
                end
            }
        },

        {
            Type = "Toggle",
            Name = "NoAnimation from tplay",
            Arguments = {
                Text = 'No Animation',
                Tooltip = 'Disables Animation',
                Enabled = false,

                Callback = function(value)
                    
                    local addonf0 = game.Players.LocalPlayer.PlayerGui
                    
                    local addonf1 = addonf0:WaitForChild("MainUI")
                    
                    local addonf2 = addonf1:WaitForChild("Initiator"):WaitForChild("Main_Game")
                    
                    local addonf3 = if ExecutorSupport["require"] then require(addonf2) else nil
                    
                    if value then
                        addonf3.disableMovement = true
                    else
                        addonf3.disableMovement = false
                    end
                end
            }
        },

{
            Type = "Toggle",
            Name = "Dance",
            Arguments = {
                Text = 'Dance',
                Tooltip = 'Enable to dance',
                Enabled = false,

                Callback = function(value)
                    local speaker = game.Players.LocalPlayer
                    
                    local dances = {"3333432454", "4555808220", "4049037604", "4555782893", "10214311282", "10714010337", "10713981723", "10714372526", "10714076981", "10714392151", "11444443576"}
                    
                    if value then
                        local animation = Instance.new("Animation")
                        animation.AnimationId = "rbxassetid://" .. dances[math.random(1, #dances)]
                        danceTrack = speaker.Character:FindFirstChildWhichIsA("Humanoid"):LoadAnimation(animation)
                        danceTrack.Looped = true
                        danceTrack:Play()
                    else
                        if danceTrack then
                            danceTrack:Stop()
                            danceTrack:Destroy()
                        end
                    end
                end
              }
        },

        {
            Type = "Button",
            Name = "A90 from tplay",
            Arguments = {
                Text = 'Spawn A90',
                Tooltip = 'Click to spawn A90 (client-sided)',

                Func = function()
                    require(game:GetService("Players").LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game.RemoteListener.Modules.A90)(require(game:GetService("Players").LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game))
                end
            }
    },

{
            Type = "Button",
            Name = "Starjug",
            Arguments = {
                Text = 'Get Starjug by upio',
                Tooltip = 'Click to spawn Starjug by upio (client-sided)',

                Func = function()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/notpoiu/Scripts/refs/heads/main/StarJug.lua"))()
                end
            }
     },

{
            Type = "Button",
            Name = "Crucifix Anything by Penguin",
            Arguments = {
                Text = 'Crucifix Anything By penguin Click Q',
                Tooltip = 'Click to spawn Crucifix (client-sided)',

                Func = function()
                    _G.Uses = 10000000
_G.Range = 5000
_G.OnAnything = true
_G.Fail = false
loadstring(game:HttpGet('https://raw.githubusercontent.com/PenguinManiack/Crucifix/main/Crucifix.lua'))()
                end
            }
    },

{
            Type = "Button",
            Name = "Physics Gun",
            Arguments = {
                Text = 'Physics Gun',
                Tooltip = 'Click to spawn Physics Gun (client-sided)',

                Func = function()
               loadstring(game:HttpGet(('https://raw.githubusercontent.com/Skibiditoiletscripts/e/refs/heads/main/gravity%20gun'),true))()
                end
            }
    },

{
            Type = "Button",
            Name = "Seek plushie",
            Arguments = {
                Text = 'Seek plushie',
                Tooltip = 'Click to spawn Seek Plushie (client-sided)',

                Func = function()
local plr = game.Players.LocalPlayer
                    local hum = plr.Character:WaitForChild("Humanoid")
                    local plush = game:GetObjects("rbxassetid://13613269677")[1]
                    plush.Parent = plr.Backpack
                end
            }
    },

{
            Type = "Button",
            Name = "Classic Rocket Launcher",
            Arguments = {
                Text = 'Rocket Launcher',
                Tooltip = 'Click to Rocket Launcher By Upio (client-sided)',

                Func = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/notpoiu/Scripts/main/rocketLauncher.lua"))()
                end
            }
    },

{
            Type = "Button",
            Name = "Seek Gun",
            Arguments = {
                Text = 'Seekgun',
                Tooltip = 'Click For Seek Gun By Upio (client-sided)',

                Func = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/notpoiu/Scripts/main/seekgun.lua"))()
                end
            }
    },

{
            Type = "Button",
            Name = "Morph Gui Credits To Chrono",
            Arguments = {
                Text = 'Morph Gui Only ingame',
                Tooltip = '(client-sided)',

                Func = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ChronoAccelerator/Public-Scripts/main/Morphing/MorphScript.lua"))()
                end
            }
    },

{
            Type = "Button",
            Name = "Enable Hardcore Mode",
            Arguments = {
                Text = 'Hardcore mode',
                Tooltip = '(client-sided)',

                Func = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Hubgitdatcam/Noonie-hardcore/refs/heads/main/Noonie%20hardcore"))()
                end
            }
      }
  },

};

return Addon;
