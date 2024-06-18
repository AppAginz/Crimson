local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Crimson Hub",
   LoadingTitle = "Crimson is loading",
   LoadingSubtitle = "by Terbium & BlackMarabyKiss",
   ConfigurationSaving = {
      Enabled = false,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Crimson Hub"
   },
   Discord = {
      Enabled = false,
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided",
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local Tab = Window:CreateTab("MANUAL FARM", 4483362458) -- Title, Image
local Section = Tab:CreateSection("Farm")

local Keybind = Tab:CreateKeybind({
      Name = "Worthiness & Rib",
   Keybind:Set("RightCtrl") -- Keybind (string)
   HoldToInteract = false,
   Flag = "WorthRib", 
   Callback = function(Keybind)
local args = {
    [1] = "LearnSkill",
    [2] = {
        ["Skill"] = "Worthiness V",
        ["SkillTreeType"] = "Character"
    }
}

game:GetService("Players").LocalPlayer.Character.RemoteFunction:InvokeServer(unpack(args))
wait(0.5)

local args = {
    [1] = "LearnSkill",
    [2] = {
        ["Skill"] = "Worthiness V",
        ["SkillTreeType"] = "Character"
    }
}

game:GetService("Players").LocalPlayer.Character.RemoteFunction:InvokeServer(unpack(args))
   end,
})
