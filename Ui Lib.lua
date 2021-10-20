

-- GUI Settings
_G.musicids = {
    -- Will be used in id shuffle command, you can put whatever ids you want
    "123",
    "456",
    "789",
    "101112"
}

_G.permadmin = true -- this will take a pad as soon as you join

_G.removeobbykill = true -- will auto remove obby kill once you join the server

_G.autoantivamp = true -- will auto remove vamp gear


if not game:IsLoaded() then
    repeat
        wait(.4)
    until game:IsLoaded()
end

-- variables/tables:

local jotunnheim =
            [[
    ___  ________  _________  ___  ___  ________   ________   ___  ___  _______   ___  _____ ______      
   |\  \|\   __  \|\___   ___\\  \|\  \|\   ___  \|\   ___  \|\  \|\  \|\  ___ \ |\  \|\   _ \  _   \    
   \ \  \ \  \|\  \|___ \  \_\ \  \\\  \ \  \\ \  \ \  \\ \  \ \  \\\  \ \   __/|\ \  \ \  \\\__\ \  \   
 __ \ \  \ \  \\\  \   \ \  \ \ \  \\\  \ \  \\ \  \ \  \\ \  \ \   __  \ \  \_|/_\ \  \ \  \\|__| \  \  
|\  \\_\  \ \  \\\  \   \ \  \ \ \  \\\  \ \  \\ \  \ \  \\ \  \ \  \ \  \ \  \_|\ \ \  \ \  \    \ \  \ 
\ \________\ \_______\   \ \__\ \ \_______\ \__\\ \__\ \__\\ \__\ \__\ \__\ \_______\ \__\ \__\    \ \__\
 \|________|\|_______|    \|__|  \|_______|\|__| \|__|\|__| \|__|\|__|\|__|\|_______|\|__|\|__|     \|__|
                                                                                                                                                                                                                                                     
 ]]
    
local god = false
local gr = "VampireVanquisher"
local spam = false
local paint1 = false
local paint2 = false
local paint3 = false
local disco = false
local paint4 = false
local paint5 = false
local paint6 = false
local paint7 = false
local paint8 = false
local paint9 = false
local paint10 = false
local paint11 = false
local vis = false
local paint12 = false
local ff = false
local antigears = false
local antisize = false
local msgdeleter = false
local antilag = false
local plrs = game:GetService("Players")
local plr = plrs.LocalPlayer
local Plrname = plr.Name
local plrgui = plr.PlayerGui
local name = plr.Name
local cha = plr.Character
wait(.2)
local time = 0.00000000000000000000000000000000001
local Folder = game:GetService("Workspace").Terrain["_Game"].Folder
local uis = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local rs = game:GetService("ReplicatedStorage")
local ws = Folder.Parent.Workspace
local hookmusic = false
local red = false
local blue = false
local green = false
local auto = true
local cyan = false
local black = false
local magenta = false
local brown = false
local light_gray = false
local dark_gray = false
local light_blue = false
local light_green = false
local light_cyan = false
local light_red = false
local light_magenta = false
local yellow = false
local white = false
local rainbow = false
local hide = "                                                                  "
local Admin = ws.Parent.Admin
local Pads = Admin.Pads
local ad = ws["Admin Dividers"]
local house = ws["Basic House"]
local obby = ws.Obby
local obbybox = ws["Obby Box"]
local bricks = ws["Building Bricks"]
local myjail = name .. "'s jail"
local getplrs = plrs:GetChildren()
local antiabuse = false
local antijail = false
local antikill = false
local antifreeze = false
local antikill = false
local antifling = false
local antipunish = false
local antiblind = false
local textcolor = false
local takepads = false
local hide = false
local zero =
    "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"

local botname = "<Jotunn.txt>"
local guiname = "Jotunnheim V.1 Demo"

local function space()
    print("")
    print("")
    print("-------------------------------------------------------------------------------------------------------")
    print("")
    print("")
end


if game.CoreGui:FindFirstChild(guiname) then
    game.CoreGui:FindFirstChild(guiname):destroy()
end

local library =
    loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
local venyx = library.new(guiname, 5013109572)

local function hop()
    coroutine.wrap(
        function()
            while true do
                local http = game:GetService "HttpService"
                local function jsond(str)
                    return http:JSONDecode(str)
                end

                local response
                local suc, er =
                    pcall(
                    function()
                        local req =
                            game:HttpGet(
                            "https://games.roblox.com/v1/games/112420803/servers/Public?sortOrder=Asc&limit=100"
                        )
                        response = game:GetService("HttpService"):JSONDecode(req)
                    end
                )
                if suc and response then
                    for _, server in pairs(response.data) do
                        if game.JobId ~= server.id then -- / You don't want to rejoin the same server.
                            if server.playing <= 5 then
                                error("Looking for Servers..")
                                wait(.1)
                                error("Server Found! ")
                                rconsoleerr("Server Id: " .. server.id)
                                rconsoleerr("Players Playing: " .. server.playing .. "")
                                rconsoleerr("Server Ping: " .. server.ping .. "")
                                error("Server Fps: " .. server.fps)
                                rconsoleerr("If Join Fails Then Server is Full")
                                space()
                                game:GetService("TeleportService"):TeleportToPlaceInstance(
                                    game.PlaceId,
                                    server.id,
                                    game:GetService("Players").LocalPlayer
                                )
                                break
                            end
                        end
                    end
                elseif er then
                    print(er)
                    tp()
                else
                    print("http returned nil")
                    tp()
                end
                wait(1)
            end
        end
    )()
end

coroutine.wrap(
    function()
        rconsolewarn("Loading Debug console.\n")
        rconsolename("Jotunnheim V.1 Console")
        hookfunction(
            print,
            function(a)
                rconsoleprint(a .. "\n")
            end
        )
        hookfunction(
            error,
            function(a)
                rconsoleerr(a .. "\n")
            end
        )
        hookfunction(
            warn,
            function(a)
                rconsolewarn(a .. "\n")
            end
        )
        getgenv().info = function(a)
            rconsoleinfo(a .. "\n")
        end
        wait(.4)
        rconsolewarn("Loading Venyx's UI Library\n")
        wait(.3)
        warn("Welcome to Jotunnheim V.1, " .. game.Players.LocalPlayer.Name)
        wait(.3)
        warn("Note: This Script is still unfinished and may contain some bugs or crashes")
        repeat
            wait()
        until game.Players.LocalPlayer.Character
        if not ws:FindFirstChild("Baseplate") then
            error("Baseplate was removed?")
        end
    end
)()

-- functions:
local function tchat(msg)
    game.Players:chat(msg)
end

local function chat(msg)
    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(msg, "All")
end

local function color(Text)
    rconsoleprint("@@" .. Text .. "@@")
end

local function noti(Title, Text)
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = Title;
    Text  = Text;
})
end


local function Jotunn()
    for i = 1, 30 do
        tchat(
            ":noob <Jotunn.txt>                                                                                                                                                                                                       "
        )
    end
end

local function paint()
    pcall(
        function()
            if not plr.Character:FindFirstChild("PaintBucket") then
                tchat("gear me 000000000000000000000000000000000000000000000000000018474459")
                local paint = plr.Backpack:WaitForChild("PaintBucket")
                paint.Parent = plr.Character
                wait(.1)
                if not plr.Character:FindFirstChild(paint) then
                    error("Paint Bucket was removed from player?")
                end
            end
        end
    )
end

local function colour(part, c1, c2, c3)
    pcall(
        function()
            function getNil(name, class)
                for _, v in pairs(getnilinstances()) do
                    if v.ClassName == class and v.Name == name then
                        return v
                    end
                end
            end

            local args = {
                [1] = "PaintPart",
                [2] = {
                    ["Part"] = part,
                    ["Color"] = Color3.new(c1, c2, c3)
                }
            }
            spawn(
                function()
                    workspace[plr.Name]:WaitForChild("PaintBucket"):WaitForChild("Remotes").ServerControls:InvokeServer(
                        unpack(args)
                    )
                end
            )
        end
    )
end

local function black()
    for i, v in pairs(game.Workspace.Terrain["_Game"]:GetDescendants()) do
        if v:IsA("Part") then
            colour(v, 0.0666667, 0.0666667, 0.0666667)
        end
    end
end

local function white()
    for i, v in pairs(game.Workspace.Terrain["_Game"]:GetDescendants()) do
        if v:IsA("Part") then
            colour(v, 0.972549, 0.972549, 0.972549)
        end
    end
end

local function red()
    for i, v in pairs(game.Workspace.Terrain["_Game"]:GetDescendants()) do
        if v:IsA("Part") then
            colour(v, 1, 0, 0)
        end
    end
end

local function blue()
    for i, v in pairs(game.Workspace.Terrain["_Game"]:GetDescendants()) do
        if v:IsA("Part") then
            colour(v, 0.0352941, 0.537255, 0.811765)
        end
    end
end

local function green()
    for i, v in pairs(game.Workspace.Terrain["_Game"]:GetDescendants()) do
        if v:IsA("Part") then
            colour(v, 0.121569, 0.501961, 0.113725)
        end
    end
end

local function orange()
    for i, v in pairs(game.Workspace.Terrain["_Game"]:GetDescendants()) do
        if v:IsA("Part") then
            colour(v, 0.666667, 0.333333, 0)
        end
    end
end

local function yellow()
    for i, v in pairs(game.Workspace.Terrain["_Game"]:GetDescendants()) do
        if v:IsA("Part") then
            colour(v, 1, 1, 0)
        end
    end
end

local function brown()
    for i, v in pairs(game.Workspace.Terrain["_Game"]:GetDescendants()) do
        if v:IsA("Part") then
            colour(v, 0.486275, 0.360784, 0.27451)
        end
    end
end

local function purple()
    for i, v in pairs(game.Workspace.Terrain["_Game"]:GetDescendants()) do
        if v:IsA("Part") then
            colour(v, 0.482353, 0, 0.482353)
        end
    end
end

local function pink()
    for i, v in pairs(game.Workspace.Terrain["_Game"]:GetDescendants()) do
        if v:IsA("Part") then
            colour(v, 1, 0.4, 0.8)
        end
    end
end

local function unpaint()
    pcall(
        function()
            if plr.Character:FindFirstChild("PaintBucket") then
                plr.Character:FindFirstChild("PaintBucket"):Destroy()
            end
        end
    )
end

local function removeobbykill()
    pcall(
        function()
            game:GetService("Workspace").Terrain["_Game"].Workspace.Obby.Jump.TouchInterest:destroy()
            game:GetService("Workspace").Terrain["_Game"].Workspace.Obby.Jump1.TouchInterest:destroy()
            game:GetService("Workspace").Terrain["_Game"].Workspace.Obby.Jump2.TouchInterest:destroy()
            game:GetService("Workspace").Terrain["_Game"].Workspace.Obby.Jump3.TouchInterest:destroy()
            game:GetService("Workspace").Terrain["_Game"].Workspace.Obby.Jump4.TouchInterest:destroy()
            game:GetService("Workspace").Terrain["_Game"].Workspace.Obby.Jump5.TouchInterest:destroy()
            game:GetService("Workspace").Terrain["_Game"].Workspace.Obby.Jump6.TouchInterest:destroy()
            game:GetService("Workspace").Terrain["_Game"].Workspace.Obby.Jump7.TouchInterest:destroy()
            game:GetService("Workspace").Terrain["_Game"].Workspace.Obby.Jump8.TouchInterest:destroy()
            game:GetService("Workspace").Terrain["_Game"].Workspace.Obby.Jump9.TouchInterest:destroy()
        end
    )
end

local function rejoin()
    coroutine.wrap(
        function()
            while true do
                local http = game:GetService "HttpService"
                local function jsond(str)
                    return http:JSONDecode(str)
                end

                local response
                local suc, er =
                    pcall(
                    function()
                        local req =
                            game:HttpGet(
                            "https://games.roblox.com/v1/games/112420803/servers/Public?sortOrder=Asc&limit=100"
                        )
                        response = game:GetService("HttpService"):JSONDecode(req)
                    end
                )
                if suc and response then
                    for _, server in pairs(response.data) do
                        if game.JobId == server.id then -- / You don't want to rejoin the same server.
                            game:GetService("TeleportService"):TeleportToPlaceInstance(
                                game.PlaceId,
                                server.id,
                                game:GetService("Players").LocalPlayer
                            )
                            break
                        end
                    end
                elseif er then
                    print(er)
                    tp()
                else
                    print("http returned nil")
                    tp()
                end
                wait(1)
            end
        end
    )()
end






if _G.removeobbykill then
removeobbykill()
end

-- themes
local themes = {
    Background = Color3.fromRGB(24, 24, 24),
    Glow = Color3.fromRGB(0, 0, 0),
    Accent = Color3.fromRGB(10, 10, 10),
    LightContrast = Color3.fromRGB(20, 20, 20),
    DarkContrast = Color3.fromRGB(14, 14, 14),
    TextColor = Color3.fromRGB(255, 255, 255)
}

-- first page
local page = venyx:addPage("Main", 5012544693)
local page2 = venyx:addPage("Misc", 5012544693)
local page3 = venyx:addPage("Workspace", 5012544693)
local page4 = venyx:addPage("Gears", 5012544693)
local page5 = venyx:addPage("Visuals", 5012544693)
local page7 = venyx:addPage("Custom Cmds", 5012544693)
local page9 = venyx:addPage("Console", 5012544693)

local section1 = page:addSection("Anti Abuse")
local section2 = page:addSection("Admin")
local section3 = page2:addSection("Character")
local sectionob = page2:addSection("Obby Kill")
local section5 = page3:addSection("Move Parts")
local sectionreturn = page3:addSection("Return Parts")
local sectionflip = page3:addSection("Flip Parts")
local section4 = page2:addSection("Ags Crasher")
local section6 = page4:addSection("Anti Gears")
local section7 = page4:addSection("Custom Gears")
local section8 = page4:addSection("Paint")
local section9 = page9:addSection("Text Colour")
local sectionauto = page2:addSection("Text Colour")
local section10 = page5:addSection("Music")
local section11 = page5:addSection("Ambients")
local section12 = page5:addSection("Visualisers")

coroutine.wrap(
    function()
        while auto do
            res = rconsoleinput()
            if res == "/cmds" then
            else
            end
        end
    end
)()

section1:addToggle(
    "Anti Kill",
    nil,
    function(value)
        if value == true then
            antikill = true
            error("Anti kill enabled")
            coroutine.wrap(
                function()
                    while antikill do
                        task.wait(time)
                        if plr.Character:WaitForChild("Humanoid").Health == 0 then
                            tchat("reset me")
                            wait(.17)
                        end
                    end
                end
            )()
        else
            antikill = false
            error("Anti kill Disabled")
        end
    end
)

section1:addToggle(
    "Anti Jail",
    nil,
    function(value)
        if value == true then
            antijail = true
            error("Anti jail enabled")
            coroutine.wrap(
                function()
                    while antijail do
                        Folder:WaitForChild(myjail)
                        Folder[myjail]:destroy()
                        tchat("unjail me")
                        task.wait(time)
                    end
                end
            )()
        else
            antijail = false
            error("Anti jail disabled")
        end
    end
)

section1:addToggle(
    "Anti Freeze",
    nil,
    function(value)
        if value == true then
            antifreeze = true
            error("Anti freeze enabled")
            plr.Character.ChildAdded:Connect(function(v)
                if antifreeze then
                if v.Name == 'ice' then
                        tchat("unfreeze me")
                        task.wait(time)
                    end
                end
                end
            )
        else
            antifreeze = false
            error("Anti freeze disabled")
        end
    end
)

section1:addToggle(
    "Anti Punish",
    false,
    function(value)
        if value == true then
            antipunish = true
            error("Anti punish enabled")
            game.Lighting.ChildAdded:Connect(function(child)
                if antipunish then
                if child.Name == plr.Name then
                        game.Lighting:FindFirstChild(plr.Name).Parent = game.Workspace
                        tchat("unpunish me")
                        task.wait(time)
                    end
                end
                end
            )
        else
            antipunish = false
            error("anti punish disabled")
        end
    end
)

section1:addToggle(
    "Anti Blind",
    nil,
    function(value)
        if value == true then
            antiblind = true
            wait()
            error("Anti blind enabled, Blind Effect GUI will be instantly destroyed")
            coroutine.wrap(function()
                while true do
                if antiblind then
                    game.Players.LocalPlayer.PlayerGui:WaitForChild("EFFECTGUIBLIND"):remove()
                end
                task.wait(time)
            end
        end)()
        else
            antiblind = false
            error("Disabled anti blind")
        end
    end
)


section1:addToggle(
    "Anti Fling/Speed",
    nil,
    function(value)
        if value == true then
            antifling = true
            error("Enabled anti fling/speed, will reset character if high velocity has been detected")
            coroutine.wrap(
                function()
                    while antifling do
                        task.wait(time)
                        local root = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
                        if root.Velocity.X > 25 or root.Velocity.X < -25 then
                            error("Velocity is too high! Resetting character")
                            tchat("reset me")
                            wait(.3)
                        end
                    end
                end
            )()
        else
            antifling = false
            error("Disabled anti fling/speed")
        end
    end
)

section1:addToggle(
    "Anti Lag",
    nil,
    function(value)
        if value == true then
            error("Anti Lag enabled, Smoke and Bonfire will instantly be removed")
            antilag = true
            plr.Character.Torso.ChildAdded:Connect(
                function(child)
                    if antilag then
                        if child.Name == "Smoke" or child.Name == "Fire" then
                            error("Detected " .. child.Name .. ", Successfully removed")
                            child:Destroy()
                            tchat("unsmoke me")
                            tchat("unfire me")
                        end
                    end
                end
            )
        else
            antilag = false
            error("Anti lag has been disabled")
        end
    end
)

section2:addButton(
    "Reset Admin Pads",
    function()
        error("Admin Pads have been reset!")
        fireclickdetector(Admin.Regen.ClickDetector, 0)
    end
)

section2:addButton(
    "Bring Pads",
    function()
        fireclickdetector(Admin.Regen.ClickDetector, 0)
        wait(.2)
        task.wait(time)
        error("Pads have been brought to localPlayer")
        for i, v in pairs(Pads:GetChildren()) do
            v.Head.CanCollide = false
            v.Head.CFrame = plr.Character.HumanoidRootPart.CFrame
            for _, p in pairs(cha:GetChildren()) do
                if p:IsA("Part") then
                    p.CanCollide = false
                end
            end
        end
    end
)

section2:addToggle(
    "Take All Pads",
    nil,
    function(value)
        if value == true then
            error("Taken all pads lolol no more admin")
            takepads = true
            fireclickdetector(Admin.Regen.ClickDetector, 0)
            wait(.1)
            for i, v in pairs(Pads:GetChildren()) do
                firetouchinterest(plr.Character:WaitForChild("Head"), v.Head, 0)
                firetouchinterest(plr.Character:WaitForChild("Head"), v.Head, 1)
            end
            wait(.1)
            for i, v in pairs(Pads:GetChildren()) do
                v:GetPropertyChangedSignal("Name"):Connect(function()
                if takepads then
                    spawn(function()
                firetouchinterest(plr.Character:WaitForChild("Head"), v.Head, 0)
                firetouchinterest(plr.Character:WaitForChild("Head"), v.Head, 1)
                end)
                end
            end)
        end
            

        else
            takepads = false
            error("Disabled Take all pads")
            wait(1)
            fireclickdetector(Admin.Regen.ClickDetector, 0)
        end
    end
)

section2:addToggle(
    "Take Pad",
    true,
    function(value)
        if value == true then
            if Admin:FindFirstChild("Regen") then
                error("Auto Take pad has been enabled")
                            takepads = true
                            fireclickdetector(Admin.Regen.ClickDetector, 0)
                            wait(.2)
                            local pad = Pads:FindFirstChild("Touch to get admin")
                            firetouchinterest(plr.Character:WaitForChild("Head"), pad.Head, 0)
                            firetouchinterest(plr.Character:WaitForChild("Head"), pad.Head, 1)
                            wait(.1)
                            pad:GetPropertyChangedSignal("Name"):Connect(function()
                                if takepads then
                            firetouchinterest(plr.Character:WaitForChild("Head"), pad.Head, 0)
                            firetouchinterest(plr.Character:WaitForChild("Head"), pad.Head, 1)
                                end
                            end)
                        else
                            warn("Regen has been removed?")
                        end
        else
            wait(.6)
            fireclickdetector(Admin.Regen.ClickDetector, 0)
            takepads = false
            error("Disabled Auto take pad")
        end
    end
)


if Admin:FindFirstChild("Regen") then
if _G.permadmin then
error("Auto Take pad has been enabled")
            takepads = true
            fireclickdetector(Admin.Regen.ClickDetector, 0)
            wait(.2)
            local pad = Pads:FindFirstChild("Touch to get admin")
            firetouchinterest(plr.Character:WaitForChild("Head"), pad.Head, 0)
            firetouchinterest(plr.Character:WaitForChild("Head"), pad.Head, 1)
            wait(.1)
            pad:GetPropertyChangedSignal("Name"):Connect(function()
                if takepads then
            firetouchinterest(plr.Character:WaitForChild("Head"), pad.Head, 0)
            firetouchinterest(plr.Character:WaitForChild("Head"), pad.Head, 1)
                end
            end)
        end
        else
            warn("Regen has been removed?")
        end

venyx:SelectPage(venyx.pages[1], true)

section3:addToggle(
    "Hide Character",
    nil,
    function(value)
        if value == true then
            hide = true
            coroutine.wrap(
                function()
                    if not plr.Character then
                        error("Character Does not exist?")
                    else
                        plr.Character:Remove()
                        error("Character Has been Destroyed, Protected from commands")
                    end
                    plr.CharacterAdded:Connect(
                        function(character)
                            if hide then
                                character:Destroy()
                            end
                        end
                    )
                end
            )()
        else
            hide = false
            error("Respawning Character...")
        end
    end
)

section3:addToggle(
    "Inf God",
    nil,
    function(value)
        if value == true then
            error("Enabled Auto God")
            god = true
            coroutine.wrap(
                function()
                    tchat("god me")
                    local hum = game.Players.LocalPlayer.Character.Humanoid
                    hum:GetPropertyChangedSignal("Health"):Connect(
                        function()
                            if god then
                                if hum.Health < 1000000000 then
                                    tchat("god me")
                                end
                            end
                        end
                    )
                end
            )()
        else
            error("Disabled Auto God")
            god = false
        end
    end
)

section3:addToggle(
    "Inf Forcefield",
    nil,
    function(value)
        if value == true then
            error("Enabled Auto Forcefield")
            ff = true
            tchat("ff me")
              plr.Character.ChildRemoved:Connect(function(child)
                if ff then
                if child.Name == 'ForceField' then
                            tchat("ff me")
                    end
                end
                    end)
        else
            error("Disabled Auto Forcefield")
            ff = false
        end
    end
)

section3:addButton(
    "SetSpawnPoint",
    function()
        if rs:FindFirstChild("spawnpoint") then
            rs.spawnpoint:Destroy()
        end
        local spawnpoint = Instance.new("Part", rs)
        spawnpoint.Name = "spawnpoint"
        spawnpoint.CFrame = plr.Character.HumanoidRootPart.CFrame
        error("Set spawnpoint to " .. tostring(spawnpoint.CFrame))
        plr.CharacterAdded:Connect(
            function(character)
                if rs:FindFirstChild("spawnpoint") then
                    character:WaitForChild("HumanoidRootPart").CFrame = rs:FindFirstChild("spawnpoint").CFrame
                end
            end
        )
    end
)

section3:addButton(
    "RemoveSpawnPoint",
    function()
        for _, spawns in pairs(rs:getChildren()) do
            if spawns.Name == "spawnpoint" then
                spawns:Destroy()
            end
        end
        error("Removed Spawn Point")
    end
)

section3:addButton(
    "Inf Jump",
    function()
        game:GetService("UserInputService").JumpRequest:connect(
            function()
                game:GetService "Players".LocalPlayer.Character:FindFirstChildOfClass "Humanoid":ChangeState("Jumping")
            end
        )
    end
)

section3:addButton(
    "Server Hop",
    function()
        hop()
    end
)

section3:addButton(
    "Rejoin",
    function()
        error("Rejoining Server..")
        space()
        rejoin()
    end
)

sectionob:addButton(
    "Remove ObbyKill",
    function()
        removeobbykill()
        error("Removed Obby Kill")
    end
)

section4:addButton(
    "Vamp Crash Server",
    function()
        tchat("gear me 94794847")
        pcall(
            function()
                plr.Backpack:WaitForChild(gr)
                local v = plr.Backpack:FindFirstChild(gr)
                plr.Character.Humanoid:EquipTool(v)
                plr.Character:WaitForChild(gr, 2)
            end
        ) -- ends pcall
        wait(.34)
        for i = 1, 4 do
            tchat("size me .3")
        end
        if plr.Character.HumanoidRootPart.Size.X < 2 or not plr.Character:FindFirstChild(gr) then
            error("Vamp Crash Failed, someone is using anti crash")
        else
            error("Successfully Crashed Server!")
            hop()
        end
    end
)

section4:addButton(
    "Freeze Crash Server",
    function()
        for i = 1, 10 do
            for i = 1, 3 do
                game:GetService "Players":Chat(("size all 0.3"))
            end
            game:GetService "Players":Chat(("freeze all"))
            for i = 1, 3 do
                game:GetService "Players":Chat(("size all 10"))
            end
            game:GetService "Players":Chat(("clone all"))
        end
        error("Successfully Crashed Server!")
        hop()
    end
)

section4:addToggle(
    "Anti Crash",
    nil,
    function(value)
        if value == true then
            tchat("reset me")
            chat(botname .. " Enabled Anti Crash")
            antisize = true
            _G.autoantivamp = true
            error("Anti Crash Enabled, size and vamp are being monitored")
            tchat("reset me")
        else
            antisize = false
            _G.autoantivamp = false
            chat(botname .. " Disabled Anti Crash")
        end
    end
)

sectionauto:addButton(
    "Auto Crash",
    function()
        warn("This command will work once then crash has been fixed")
    end
)

local alreadymoved = false

section5:addButton(
    "Move ObbyBox",
    function()
        for i, v in pairs(ws["Obby Box"]:GetChildren()) do
            if v.CFrame.Y < 500 then
                repeat
                    wait()
                until game.Players.LocalPlayer.Character and
                    game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")

                local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                local looping = true

                spawn(
                    function()
                        while true do
                            game:GetService("RunService").Heartbeat:Wait()
                            game.Players.LocalPlayer.Character["Humanoid"]:ChangeState(11)
                            cf.CFrame =
                                v.CFrame *
                                CFrame.new(
                                    -1 * (v.Size.X / 2) - (game.Players.LocalPlayer.Character["Torso"].Size.X / 2),
                                    0,
                                    0
                                )
                            if not looping then
                                break
                            end
                        end
                    end
                )
                spawn(
                    function()
                        while looping do
                            wait(.1)
                            tchat("unpunish me")
                        end
                    end
                )
                wait(0.3)
                looping = false
                for i = 1, 5 do
                    tchat("skydive me")
                    tchat("skydive me")
                    tchat("skydive me")
                end
                wait(0.2)
                tchat("respawn me")
                wait(0.2)
            else
                alreadymoved = true
            end
        end
        if alreadymoved == true then
            error("Obby Box has already been moved!")
        else
            error("Successfully moved Obby Box!")
        end
    end
)

section5:addButton(
    "Move Obby",
    function()
        removeobbykill()
        for i, v in pairs(ws["Obby"]:GetChildren()) do
            if v.CFrame.Y < 500 then
                repeat
                    wait()
                until game.Players.LocalPlayer.Character and
                    game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")

                local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                local looping = true

                spawn(
                    function()
                        while true do
                            game:GetService("RunService").Heartbeat:Wait()
                            game.Players.LocalPlayer.Character["Humanoid"]:ChangeState(11)
                            cf.CFrame =
                                v.CFrame *
                                CFrame.new(
                                    -1 * (v.Size.X / 2) - (game.Players.LocalPlayer.Character["Torso"].Size.X / 2),
                                    0,
                                    0
                                )
                            wait()
                            if not looping then
                                break
                            end
                        end
                    end
                )
                spawn(
                    function()
                        while looping do
                            wait(.1)
                            tchat("unpunish me")
                        end
                    end
                )
                wait(0.3)
                looping = false
                tchat("skydive me")
                tchat("skydive me")
                wait(0.2)
                tchat("respawn me")
                wait(0.2)
            else
                alreadymoved = true
            end
        end
        if alreadymoved == true then
            error("Obby has already been moved!")
        else
            error("Successfully moved Obby!")
        end
    end
)

section5:addButton(
    "Move Pads",
    function()
        for i, v in pairs(Pads:GetChildren()) do
            v = v.Head
            if v.CFrame.Y < 500 then
                repeat
                    wait()
                until game.Players.LocalPlayer.Character and
                    game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")

                local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                local looping = true

                spawn(
                    function()
                        while true do
                            game:GetService("RunService").Heartbeat:Wait()
                            game.Players.LocalPlayer.Character["Humanoid"]:ChangeState(11)
                            cf.CFrame =
                                v.CFrame *
                                CFrame.new(
                                    -1 * (v.Size.X / 2) - (game.Players.LocalPlayer.Character["Torso"].Size.X / 2),
                                    0,
                                    0
                                )
                            if not looping then
                                break
                            end
                        end
                    end
                )
                spawn(
                    function()
                        while looping do
                            wait(.1)
                            tchat("unpunish me")
                        end
                    end
                )
                wait(0.3)
                looping = false
                for i = 1, 5 do
                    tchat("skydive me")
                    tchat("skydive me")
                    tchat("skydive me")
                end
                wait(0.2)
                tchat("respawn me")
                wait(0.2)
            else
                alreadymoved = true
            end
        end
        if alreadymoved == true then
            error("Pads have already been moved!")
        else
            error("Successfully moved Pads!")
        end
    end
)

section5:addButton(
    "Move Admin Dividers",
    function()
        for i, v in pairs(ws["Admin Dividers"]:GetChildren()) do
            if v.CFrame.Y < 500 then
                repeat
                    wait()
                until game.Players.LocalPlayer.Character and
                    game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")

                local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                local looping = true

                spawn(
                    function()
                        while true do
                            game:GetService("RunService").Heartbeat:Wait()
                            game.Players.LocalPlayer.Character["Humanoid"]:ChangeState(11)
                            cf.CFrame =
                                v.CFrame *
                                CFrame.new(
                                    -1 * (v.Size.X / 2) - (game.Players.LocalPlayer.Character["Torso"].Size.X / 2),
                                    0,
                                    0
                                )
                            if not looping then
                                break
                            end
                        end
                    end
                )
                spawn(
                    function()
                        while looping do
                            wait(.1)
                            tchat("unpunish me")
                        end
                    end
                )
                wait(0.3)
                looping = false
                for i = 1, 5 do
                    tchat("skydive me")
                    tchat("skydive me")
                    tchat("skydive me")
                end
                wait(0.2)
                tchat("respawn me")
                wait(0.2)
            else
                alreadymoved = true
            end
        end
        if alreadymoved == true then
            error("Admin Dividers have already been moved!")
        else
            error("Successfully moved Admin Dividers")
        end
    end
)

section5:addButton(
    "Move Regen",
    function()
        if Admin.Regen.CFrame.Y < 500 then
            repeat
                wait()
            until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
            local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
            local looping = true
            spawn(
                function()
                    while true do
                        game:GetService("RunService").Heartbeat:Wait()
                        game.Players.LocalPlayer.Character["Humanoid"]:ChangeState(11)
                        cf.CFrame =
                            Admin.Regen.CFrame *
                            CFrame.new(
                                -1 * (Admin.Regen.Size.X / 2) - (game.Players.LocalPlayer.Character["Torso"].Size.X / 2),
                                0,
                                0
                            )
                        if not looping then
                            break
                        end
                    end
                end
            )
            spawn(
                function()
                    while looping do
                        wait(.1)
                        tchat("unpunish me")
                    end
                end
            )
            wait(0.3)
            looping = false
            for i = 1, 5 do
                tchat("skydive me")
                tchat("skydive me")
                tchat("skydive me")
            end
            wait(0.2)
            tchat("respawn me")
            wait(0.2)
        else
            alreadymoved = true
        end
        if alreadymoved == true then
            error("Regen has already been moved")
        else
            error("Successfully moved Regen!")
        end
    end
)

section5:addButton(
    "Move Building Bricks",
    function()
        for i, v in pairs(ws["Building Bricks"]:GetChildren()) do
            if v.CFrame.Y < 500 then
                repeat
                    wait()
                until game.Players.LocalPlayer.Character and
                    game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")

                local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                local looping = true

                spawn(
                    function()
                        while true do
                            game:GetService("RunService").Heartbeat:Wait()
                            game.Players.LocalPlayer.Character["Humanoid"]:ChangeState(11)
                            cf.CFrame =
                                v.CFrame *
                                CFrame.new(
                                    -1 * (v.Size.X / 2) - (game.Players.LocalPlayer.Character["Torso"].Size.X / 2),
                                    0,
                                    0
                                )
                            if not looping then
                                break
                            end
                        end
                    end
                )
                spawn(
                    function()
                        while looping do
                            wait(.1)
                            tchat("unpunish me")
                        end
                    end
                )
                wait(0.3)
                looping = false
                for i = 1, 5 do
                    tchat("skydive me")
                    tchat("skydive me")
                    tchat("skydive me")
                end
                wait(0.2)
                tchat("respawn me")
                wait(0.2)
            else
                alreadymoved = true
            end
        end
        if alreadymoved == true then
            error("Building Bricks have already been moved!")
        else
            error("Successfully moved Building Bricks!")
        end
    end
)

section5:addButton(
    "Move House",
    function()
        for i, v in pairs(ws["Basic House"]:GetChildren()) do
            if v.CFrame.Y < 500 then
                repeat
                    wait()
                until game.Players.LocalPlayer.Character and
                    game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")

                local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                local looping = true

                spawn(
                    function()
                        while true do
                            game:GetService("RunService").Heartbeat:Wait()
                            game.Players.LocalPlayer.Character["Humanoid"]:ChangeState(11)
                            cf.CFrame =
                                v.CFrame *
                                CFrame.new(
                                    -1 * (v.Size.X / 2) - (game.Players.LocalPlayer.Character["Torso"].Size.X / 2),
                                    0,
                                    0
                                )
                            if not looping then
                                break
                            end
                        end
                    end
                )
                spawn(
                    function()
                        while looping do
                            wait(.1)
                            tchat("unpunish me")
                        end
                    end
                )
                wait(0.3)
                looping = false
                for i = 1, 5 do
                    tchat("skydive me")
                    tchat("skydive me")
                    tchat("skydive me")
                end
                wait(0.2)
                tchat("respawn me")
                wait(0.2)
            else
                alreadymoved = true
            end
        end
        if alreadymoved == true then
            error("Basic House has already been moved!")
        else
            error("Successfully moved Basic House!")
        end
    end
)

section5:addButton(
    "Move Baseplate",
    function()
        if ws.Baseplate.CFrame.Y < 500 then
            repeat
                wait()
            until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
            local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
            local looping = true
            spawn(
                function()
                    while true do
                        game:GetService("RunService").Heartbeat:Wait()
                        game.Players.LocalPlayer.Character["Humanoid"]:ChangeState(11)
                        cf.CFrame =
                            ws.Baseplate.CFrame *
                            CFrame.new(
                                -1 * (ws.Baseplate.Size.X / 2) -
                                    (game.Players.LocalPlayer.Character["Torso"].Size.X / 2),
                                0,
                                0
                            )
                        if not looping then
                            break
                        end
                    end
                end
            )
            spawn(
                function()
                    while looping do
                        wait(.1)
                        tchat("unpunish me")
                    end
                end
            )
            wait(0.3)
            looping = false
            for i = 1, 5 do
                tchat("skydive me")
                tchat("skydive me")
                tchat("skydive me")
            end
            wait(0.2)
            tchat("respawn me")
            wait(0.2)
        else
            alreadymoved = true
        end
        if alreadymoved == true then
            error("Baseplate has already been moved")
        else
            error("Successfully moved Baseplate")
        end
    end
)

sectionflip:addButton(
    "Flip ObbyBox",
    function()
        for i, v in pairs(ws["Obby Box"]:GetChildren()) do
            if v.CFrame.Y < 500 then
                repeat
                    wait()
                until game.Players.LocalPlayer.Character and
                    game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")

                local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                local looping = true

                spawn(
                    function()
                        while true do
                            game:GetService("RunService").Heartbeat:Wait()
                            game.Players.LocalPlayer.Character["Humanoid"]:ChangeState(11)
                            cf.CFrame =
                                v.CFrame *
                                CFrame.new(
                                    -1 * (v.Size.X / 2) - (game.Players.LocalPlayer.Character["Torso"].Size.X / 2),
                                    0,
                                    0
                                )
                            if not looping then
                                break
                            end
                        end
                    end
                )
                spawn(
                    function()
                        while looping do
                            wait(.1)
                            tchat("unpunish me")
                        end
                    end
                )
                wait(0.3)
                looping = false
                for i = 1, 5 do
                    tchat("seizure me")
                    tchat("seizure me")
                    tchat("seizure me")
                end
                wait(0.2)
                tchat("respawn me")
                wait(0.2)
            else
                alreadymoved = true
            end
        end
        if alreadymoved == true then
            error("Obby Box has already been Flipped!")
        else
            error("Successfully Flipped Obby Box!")
        end
    end
)

sectionflip:addButton(
    "Flip Obby",
    function()
        removeobbykill()
        for i, v in pairs(ws["Obby"]:GetChildren()) do
            if v.CFrame.Y < 500 then
                repeat
                    wait()
                until game.Players.LocalPlayer.Character and
                    game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")

                local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                local looping = true

                spawn(
                    function()
                        while true do
                            game:GetService("RunService").Heartbeat:Wait()
                            game.Players.LocalPlayer.Character["Humanoid"]:ChangeState(11)
                            cf.CFrame =
                                v.CFrame *
                                CFrame.new(
                                    -1 * (v.Size.X / 2) - (game.Players.LocalPlayer.Character["Torso"].Size.X / 2),
                                    0,
                                    0
                                )
                            wait()
                            if not looping then
                                break
                            end
                        end
                    end
                )
                spawn(
                    function()
                        while looping do
                            wait(.1)
                            tchat("unpunish me")
                        end
                    end
                )
                wait(0.3)
                looping = false
                tchat("seizure me")
                tchat("seizure me")
                wait(0.2)
                tchat("respawn me")
                wait(0.2)
            else
                alreadymoved = true
            end
        end
        if alreadymoved == true then
            error("Obby has already been Flipped!")
        else
            error("Successfully Flipped Obby!")
        end
    end
)

sectionflip:addButton(
    "Flip Pads",
    function()
        for i, v in pairs(Pads:GetChildren()) do
            if v.Head.CFrame.Y < 500 then
                repeat
                    wait()
                until game.Players.LocalPlayer.Character and
                    game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")

                local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                local looping = true

                spawn(
                    function()
                        while true do
                            game:GetService("RunService").Heartbeat:Wait()
                            game.Players.LocalPlayer.Character["Humanoid"]:ChangeState(11)
                            cf.CFrame =
                                v.Head.CFrame *
                                CFrame.new(
                                    -1 * (v.Head.Size.X / 2) - (game.Players.LocalPlayer.Character["Torso"].Size.X / 2),
                                    0,
                                    0
                                )
                            if not looping then
                                break
                            end
                        end
                    end
                )
                spawn(
                    function()
                        while looping do
                            wait(.1)
                            tchat("unpunish me")
                        end
                    end
                )
                wait(0.3)
                looping = false
                for i = 1, 5 do
                    tchat("seizure me")
                    tchat("seizure me")
                    tchat("seizure me")
                end
                wait(0.2)
                tchat("respawn me")
                wait(0.2)
            else
                alreadymoved = true
            end
        end
        if alreadymoved == true then
            error("Pads have already been Flipped!")
        else
            error("Successfully Flipped Pads")
        end
    end
)

sectionflip:addButton(
    "Flip Admin Dividers",
    function()
        for i, v in pairs(ws["Admin Dividers"]:GetChildren()) do
            if v.CFrame.Y < 500 then
                repeat
                    wait()
                until game.Players.LocalPlayer.Character and
                    game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")

                local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                local looping = true

                spawn(
                    function()
                        while true do
                            game:GetService("RunService").Heartbeat:Wait()
                            game.Players.LocalPlayer.Character["Humanoid"]:ChangeState(11)
                            cf.CFrame =
                                v.CFrame *
                                CFrame.new(
                                    -1 * (v.Size.X / 2) - (game.Players.LocalPlayer.Character["Torso"].Size.X / 2),
                                    0,
                                    0
                                )
                            if not looping then
                                break
                            end
                        end
                    end
                )
                spawn(
                    function()
                        while looping do
                            wait(.1)
                            tchat("unpunish me")
                        end
                    end
                )
                wait(0.3)
                looping = false
                for i = 1, 5 do
                    tchat("seizure me")
                    tchat("seizure me")
                    tchat("seizure me")
                end
                wait(0.2)
                tchat("respawn me")
                wait(0.2)
            else
                alreadymoved = true
            end
        end
        if alreadymoved == true then
            error("Admin Dividers have already been Flipped!")
        else
            error("Successfully Flipped Admin Dividers")
        end
    end
)

sectionflip:addButton(
    "Flip Regen",
    function()
        if Admin.Regen.CFrame.Y < 500 then
            repeat
                wait()
            until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
            local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
            local looping = true
            spawn(
                function()
                    while true do
                        game:GetService("RunService").Heartbeat:Wait()
                        game.Players.LocalPlayer.Character["Humanoid"]:ChangeState(11)
                        cf.CFrame =
                            Admin.Regen.CFrame *
                            CFrame.new(
                                -1 * (Admin.Regen.Size.X / 2) - (game.Players.LocalPlayer.Character["Torso"].Size.X / 2),
                                0,
                                0
                            )
                        if not looping then
                            break
                        end
                    end
                end
            )
            spawn(
                function()
                    while looping do
                        wait(.1)
                        tchat("unpunish me")
                    end
                end
            )
            wait(0.3)
            looping = false
            for i = 1, 5 do
                tchat("seizure me")
                tchat("seizure me")
                tchat("seizure me")
            end
            wait(0.2)
            tchat("respawn me")
            wait(0.2)
        else
            alreadymoved = true
        end
        if alreadymoved == true then
            error("Regen has already been Flipped")
        else
            error("Successfully Flipped Regen!")
        end
    end
)

sectionflip:addButton(
    "Flip Building Bricks",
    function()
        for i, v in pairs(ws["Building Bricks"]:GetChildren()) do
            if v.CFrame.Y < 500 then
                repeat
                    wait()
                until game.Players.LocalPlayer.Character and
                    game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")

                local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                local looping = true

                spawn(
                    function()
                        while true do
                            game:GetService("RunService").Heartbeat:Wait()
                            game.Players.LocalPlayer.Character["Humanoid"]:ChangeState(11)
                            cf.CFrame =
                                v.CFrame *
                                CFrame.new(
                                    -1 * (v.Size.X / 2) - (game.Players.LocalPlayer.Character["Torso"].Size.X / 2),
                                    0,
                                    0
                                )
                            if not looping then
                                break
                            end
                        end
                    end
                )
                spawn(
                    function()
                        while looping do
                            wait(.1)
                            tchat("unpunish me")
                        end
                    end
                )
                wait(0.3)
                looping = false
                for i = 1, 5 do
                    tchat("seizure me")
                    tchat("seizure me")
                    tchat("seizure me")
                end
                wait(0.2)
                tchat("respawn me")
                wait(0.2)
            else
                alreadymoved = true
            end
        end
        if alreadymoved == true then
            error("Building Bricks have already been Flipped!")
        else
            error("Successfully Flipped Building Bricks!")
        end
    end
)

sectionflip:addButton(
    "Flip House",
    function()
        for i, v in pairs(ws["Basic House"]:GetChildren()) do
            if v.CFrame.Y < 500 then
                repeat
                    wait()
                until game.Players.LocalPlayer.Character and
                    game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")

                local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                local looping = true

                spawn(
                    function()
                        while true do
                            game:GetService("RunService").Heartbeat:Wait()
                            game.Players.LocalPlayer.Character["Humanoid"]:ChangeState(11)
                            cf.CFrame =
                                v.CFrame *
                                CFrame.new(
                                    -1 * (v.Size.X / 2) - (game.Players.LocalPlayer.Character["Torso"].Size.X / 2),
                                    0,
                                    0
                                )
                            if not looping then
                                break
                            end
                        end
                    end
                )
                spawn(
                    function()
                        while looping do
                            wait(.1)
                            tchat("unpunish me")
                        end
                    end
                )
                wait(0.3)
                looping = false
                for i = 1, 5 do
                    tchat("seizure me")
                    tchat("seizure me")
                    tchat("seizure me")
                end
                wait(0.2)
                tchat("respawn me")
                wait(0.2)
            else
                alreadymoved = true
            end
        end
        if alreadymoved == true then
            error("Basic House has already been Flipped")
        else
            error("Successfully Flipped Basic House!")
        end
    end
)

sectionflip:addButton(
    "Flip Baseplate",
    function()
        if ws.Baseplate.CFrame.Y < 500 then
            repeat
                wait()
            until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
            local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
            local looping = true
            spawn(
                function()
                    while true do
                        game:GetService("RunService").Heartbeat:Wait()
                        game.Players.LocalPlayer.Character["Humanoid"]:ChangeState(11)
                        cf.CFrame =
                            ws.Baseplate.CFrame *
                            CFrame.new(
                                -1 * (ws.Baseplate.Size.X / 2) -
                                    (game.Players.LocalPlayer.Character["Torso"].Size.X / 2),
                                0,
                                0
                            )
                        if not looping then
                            break
                        end
                    end
                end
            )
            spawn(
                function()
                    while looping do
                        wait(.1)
                        tchat("unpunish me")
                    end
                end
            )
            wait(0.3)
            looping = false
            for i = 1, 5 do
                tchat("seizure me")
                tchat("seizure me")
                tchat("seizure me")
            end
            wait(0.2)
            tchat("respawn me")
            wait(0.2)
        else
            alreadymoved = true
        end
        if alreadymoved == true then
            error("Baseplate has already been flipped")
        else
            error("Successfully flipped Baseplate")
        end
    end
)

sectionreturn:addButton(
    "Return ObbyBox",
    function()
        for i, v in pairs(ws["Obby Box"]:GetChildren()) do
            if v.CFrame.Y > 500 then
                repeat
                    wait()
                until game.Players.LocalPlayer.Character and
                    game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")

                local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                local looping = true

                spawn(
                    function()
                        while true do
                            game:GetService("RunService").Heartbeat:Wait()
                            game.Players.LocalPlayer.Character["Humanoid"]:ChangeState(11)
                            cf.CFrame =
                                v.CFrame *
                                CFrame.new(
                                    -1 * (v.Size.X / 2) - (game.Players.LocalPlayer.Character["Torso"].Size.X / 2),
                                    0,
                                    0
                                )
                            if not looping then
                                break
                            end
                        end
                    end
                )
                spawn(
                    function()
                        while looping do
                            wait(.1)
                            tchat("unpunish me")
                        end
                    end
                )
                wait(0.3)
                looping = false
                tchat("unskydive me")
                wait(0.2)
                tchat("respawn me")
                wait(0.2)
            else
                alreadymoved = true
            end
        end
        if alreadymoved == true then
            error("Obby Box has already been returned!")
        else
            error("Successfully returned Obby Box!")
        end
    end
)

sectionreturn:addButton(
    "Return Obby",
    function()
        for i, v in pairs(ws["Obby"]:GetChildren()) do
            if v.CFrame.Y > 500 then
                repeat
                    wait()
                until game.Players.LocalPlayer.Character and
                    game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")

                local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                local looping = true

                spawn(
                    function()
                        while true do
                            game:GetService("RunService").Heartbeat:Wait()
                            game.Players.LocalPlayer.Character["Humanoid"]:ChangeState(11)
                            cf.CFrame =
                                v.CFrame *
                                CFrame.new(
                                    -1 * (v.Size.X / 2) - (game.Players.LocalPlayer.Character["Torso"].Size.X / 2),
                                    0,
                                    0
                                )
                            if not looping then
                                break
                            end
                        end
                    end
                )
                spawn(
                    function()
                        while looping do
                            wait(.1)
                            tchat("unpunish me")
                        end
                    end
                )
                wait(0.3)
                looping = false
                tchat("unskydive me")
                wait(0.2)
                tchat("respawn me")
                wait(0.2)
            else
                alreadymoved = true
            end
        end
        if alreadymoved == true then
            error("Obby has already been returned!")
        else
            error("Successfully returned Obby!")
        end
    end
)

sectionreturn:addButton(
    "Return Pads",
    function()
        for i, v in pairs(Admin.Pads:GetChildren()) do
            if v.Head.CFrame.Y > 500 then
                repeat
                    wait()
                until game.Players.LocalPlayer.Character and
                    game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")

                local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                local looping = true

                spawn(
                    function()
                        while true do
                            game:GetService("RunService").Heartbeat:Wait()
                            game.Players.LocalPlayer.Character["Humanoid"]:ChangeState(11)
                            cf.CFrame =
                                v.Head.CFrame *
                                CFrame.new(
                                    -1 * (v.Head.Size.X / 2) - (game.Players.LocalPlayer.Character["Torso"].Size.X / 2),
                                    0,
                                    0
                                )
                            if not looping then
                                break
                            end
                        end
                    end
                )
                spawn(
                    function()
                        while looping do
                            wait(.1)
                            tchat("unpunish me")
                        end
                    end
                )
                wait(0.3)
                looping = false
                tchat("unskydive me")
                tchat("unskydive me")
                wait(0.2)
                tchat("respawn me")
                wait(0.2)
            else
                alreadymoved = true
            end
        end
        if alreadymoved == true then
            error("Pads have already been returned!")
        else
            error("Successfully returned Pads!")
        end
    end
)

sectionreturn:addButton(
    "Return Regen",
    function()
        if Admin.Regen.CFrame.Y > 500 then
            repeat
                wait()
            until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")

            local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
            local looping = true

            spawn(
                function()
                    while true do
                        game:GetService("RunService").Heartbeat:Wait()
                        game.Players.LocalPlayer.Character["Humanoid"]:ChangeState(11)
                        cf.CFrame =
                            Admin.Regen.CFrame *
                            CFrame.new(
                                -1 * (Admin.Regen.Size.X / 2) - (game.Players.LocalPlayer.Character["Torso"].Size.X / 2),
                                0,
                                0
                            )
                        if not looping then
                            break
                        end
                    end
                end
            )
            spawn(
                function()
                    while looping do
                        wait(.1)
                        tchat("unpunish me")
                    end
                end
            )
            wait(0.3)
            looping = false
            tchat("unskydive me")
            wait(0.2)
            tchat("respawn me")
            wait(0.2)
        else
            alreadymoved = true
        end

        if alreadymoved == true then
            error("Regen has already been returned!")
        else
            error("Successfully returned Regen!")
        end
    end
)

sectionreturn:addButton(
    "Return Admin Dividers",
    function()
        for i, v in pairs(ws["Admin Dividers"]:GetChildren()) do
            if v.CFrame.Y > 500 then
                repeat
                    wait()
                until game.Players.LocalPlayer.Character and
                    game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")

                local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                local looping = true

                spawn(
                    function()
                        while true do
                            game:GetService("RunService").Heartbeat:Wait()
                            game.Players.LocalPlayer.Character["Humanoid"]:ChangeState(11)
                            cf.CFrame =
                                v.CFrame *
                                CFrame.new(
                                    -1 * (v.Size.X / 2) - (game.Players.LocalPlayer.Character["Torso"].Size.X / 2),
                                    0,
                                    0
                                )
                            if not looping then
                                break
                            end
                        end
                    end
                )
                spawn(
                    function()
                        while looping do
                            wait(.1)
                            tchat("unpunish me")
                        end
                    end
                )
                wait(0.3)
                looping = false
                tchat("unskydive me")
                wait(0.2)
                tchat("respawn me")
                wait(0.2)
            else
                alreadymoved = true
            end
        end
        if alreadymoved == true then
            error("Admin Dividers have already been returned!")
        else
            error("Successfully returned Admin Dividers!")
        end
    end
)

sectionreturn:addButton(
    "Return Building Bricks",
    function()
        for i, v in pairs(ws["Building Bricks"]:GetChildren()) do
            if v.CFrame.Y > 500 then
                repeat
                    wait()
                until game.Players.LocalPlayer.Character and
                    game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")

                local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                local looping = true

                spawn(
                    function()
                        while true do
                            game:GetService("RunService").Heartbeat:Wait()
                            game.Players.LocalPlayer.Character["Humanoid"]:ChangeState(11)
                            cf.CFrame =
                                v.CFrame *
                                CFrame.new(
                                    -1 * (v.Size.X / 2) - (game.Players.LocalPlayer.Character["Torso"].Size.X / 2),
                                    0,
                                    0
                                )
                            if not looping then
                                break
                            end
                        end
                    end
                )
                spawn(
                    function()
                        while looping do
                            wait(.1)
                            tchat("unpunish me")
                        end
                    end
                )
                wait(0.3)
                looping = false
                tchat("unskydive me")
                wait(0.2)
                tchat("respawn me")
                wait(0.2)
            else
                alreadymoved = true
            end
        end
        if alreadymoved == true then
            error("Building Bricks have already been returned!")
        else
            error("Successfully returned Building Bricks!")
        end
    end
)

sectionreturn:addButton(
    "Return Basic House",
    function()
        for i, v in pairs(ws["Basic House"]:GetChildren()) do
            if v.CFrame.Y > 500 then
                repeat
                    wait()
                until game.Players.LocalPlayer.Character and
                    game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")

                local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                local looping = true

                spawn(
                    function()
                        while true do
                            game:GetService("RunService").Heartbeat:Wait()
                            game.Players.LocalPlayer.Character["Humanoid"]:ChangeState(11)
                            cf.CFrame =
                                v.CFrame *
                                CFrame.new(
                                    -1 * (v.Size.X / 2) - (game.Players.LocalPlayer.Character["Torso"].Size.X / 2),
                                    0,
                                    0
                                )
                            if not looping then
                                break
                            end
                        end
                    end
                )
                spawn(
                    function()
                        while looping do
                            wait(.1)
                            tchat("unpunish me")
                        end
                    end
                )
                wait(0.3)
                looping = false
                tchat("unskydive me")
                wait(0.2)
                tchat("respawn me")
                wait(0.2)
            else
                alreadymoved = true
            end
        end
        if alreadymoved == true then
            error("Basic House has already been returned!")
        else
            error("Successfully returned Basic House!")
        end
    end
)

sectionreturn:addButton(
    "Return Baseplate",
    function()
        if ws.Baseplate.CFrame.Y > 500 then
            repeat
                wait()
            until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")

            local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
            local looping = true

            spawn(
                function()
                    while true do
                        game:GetService("RunService").Heartbeat:Wait()
                        game.Players.LocalPlayer.Character["Humanoid"]:ChangeState(11)
                        cf.CFrame =
                            ws.Baseplate.CFrame *
                            CFrame.new(
                                -1 * (ws.Baseplate.Size.X / 2) -
                                    (game.Players.LocalPlayer.Character["Torso"].Size.X / 2),
                                0,
                                0
                            )
                        if not looping then
                            break
                        end
                    end
                end
            )
            spawn(
                function()
                    while looping do
                        wait(.1)
                        tchat("unpunish me")
                    end
                end
            )
            wait(0.3)
            looping = false
            tchat("unskydive me")
            wait(0.2)
            tchat("respawn me")
            wait(0.2)
        else
            alreadymoved = true
        end

        if alreadymoved == true then
            error("Baseplate has already been returned!")
        else
            error("Successfully returned Baseplate!")
        end
    end
)

local function obbykill()
    local obbykill = ws["Obby"]:FindFirstChild("Jump")
    removeobbykill()
    repeat
        wait()
    until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")

    local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    local looping = true

    spawn(
        function()
            while true do
                game:GetService("RunService").Heartbeat:Wait()
                game.Players.LocalPlayer.Character["Humanoid"]:ChangeState(11)
                cf.CFrame =
                    obbykill.CFrame *
                    CFrame.new(
                        -1 * (obbykill.Size.X / 2) - (game.Players.LocalPlayer.Character["Torso"].Size.X / 2),
                        0,
                        0
                    )

                if not looping then
                    break
                end
            end
        end
    )
    spawn(
        function()
            while looping do
                wait(.1)
                tchat("unpunish me")
            end
        end
    )
    wait(0.3)
    looping = false
    tchat("invis me")
    while obkill do
        for i, v in pairs(getplrs) do
            wait(.12)
            tchat("tp me " .. v.Name)
        end
    end
end

plr.CharacterAdded:Connect(
    function(character)
        if obkill then
            obkill = false
            wait(.2)
            tchat("respawn me")
            wait(.3)
            obkill = true
            obbykill()
        end
    end
)

section5:addToggle(
    "Obby Kill",
    nil,
    function(value)
        if value == true then
            obkill = true
            obbykill()
        else
            obkill = false
            wait(.5)
            tchat("seizure me")
            wait(0.3)
            tchat("respawn me")
            wait()
            Jotunn()
        end
    end
)

section6:addToggle(
    "Anti Gears",
    nil,
    function(value)
        if value == true then
            error("Anti Gears Enabled")
            chat(botname .. " Anti Gears Has Been Enabled")
            antigears = true
        else
             antigears = false
            error("Anti Gears Disabled")
            chat(botname .. " Anti Gears Has Been Disabled")
        end
    end
)

coroutine.wrap(function()
for _, v in pairs(getplrs) do
    while _G.autoantivamp do
        v.Backpack:WaitForChild(gr)
            print("yes2")
            tchat("ungear " .. v.Name)
            tchat("punish " .. v.Name)
            warn(v.Name .. " tried to use vamp, ungeared and punished player")
        end
    end
end)()

        for _, v in pairs(getplrs) do
            v.Backpack.ChildAdded:Connect(
                function(child)
                    if antigears then
                        tchat("ungear " .. v.Name)
                        warn(v.Name.." Equipped "..child.Name)
                    end
                end
            )
            
            
            v.Chatted:Connect(
                function(msg)
                    if msg == "/c system" then
                        error(v.Name .. " is using /c system")
                    end
                    if msg:sub(1, 9) == "size all " then
                        if antisize then
                        tchat("setgrav all nan")
                        error(v.Name .. " tried to modify size")
                        end
                     end
                    if msg:sub(1, 8) == "size me " then
                        if antisize then
                        tchat("setgrav "..v.Name.." nan")
                        error(v.Name .. " tried to modify size")
                    end
                    end
                
                
            end)
        end

        plrs.PlayerAdded:Connect(
            function(player)
                player.Chatted:Connect(
                    function(msg)
                        
                        player:WaitForChild("Backpack").ChildAdded:Connect(
                    function(child)
                        if antigears then
                            tchat("ungear " .. player.Name)
                            warn(player.Name.." Equipped "..child.Name)
                        end
                        if child.Name == gr then
                            if _G.autoantivamp then
                                tchat("ungear " .. player.Name)
                                tchat("punish " .. player.Name)
                                error(player.Name .. " tried to use vamp, ungeared and punished player")
                            end
                        end
                    end
                )
                        
                        
                        if msg == "/c system" then
                            error(player.Name .. " is using /c system")
                        end
                        if msg:sub(1, 9) == "size all " then
                            if antisize then
                            tchat("setgrav all nan")
                            error(player.Name .. " tried to modify size")
                        end
                    end
                        if msg:sub(1, 8) == "size me " then
                            if antisize then
                            tchat("setgrav "..player.Name.." nan")
                            error(player.Name .. " tried to modify size")
                            end
                         end
                    
                    
                    
                    end
                )
                
            end
        )



section7:addButton(
    "Furry Hammer",
    function()
        tchat("gear me 10468797")
        local hammer = plr.Backpack:WaitForChild("BanHammer V1.1", 3)
        if hammer then
            local deb = false
            hammer.Handle.Touched:Connect(
                function(part)
                    local hum = part.Parent:FindFirstChild("Humanoid") or part.Parent.Parent:FindFirstChild("Humanoid")
                    if hum and hum.Health ~= 0 and not deb then
                        deb = true
                        coroutine.wrap(
                            function()
                                task.wait(.7)
                                deb = false
                            end
                        )()
                        local lp = plrs:GetPlayerFromCharacter(hum.Parent)
                        if lp and lp ~= plr then
                            tchat("unhat " .. lp.Name)
                            wait()
                            tchat("hat " .. lp.Name .. " 5591339422")
                            tchat("hat " .. lp.Name .. " 5891839311")
                            tchat("hat " .. lp.Name .. " 4545294236")
                            tchat("shirt " .. lp.Name .. " 1757993679")
                            tchat("pants " .. lp.Name .. " 3711166798")
                            tchat("name " .. lp.Name .. " furry")
                            error(lp.Name .. " is a furry")
                        end
                    end
                end
            )
        end
    end
)

local Mouse = plr:GetMouse()
local laser = false
local explosive = false

section7:addToggle(
    "Spam Laser",
    nil,
    function(value)
        if value == true then
            laser = true
            coroutine.wrap(
                function()
                    while laser do
                        wait(.1)
                                tchat(
                                    "gear me 000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000130113146"
                                )
                    end
                end
            )()
            wait(1)

            while laser do
                plr.Backpack:FindFirstChild("HyperlaserGun").Parent = plr.Character
                local args = {
                    [1] = "Click",
                    [2] = true,
                    [3] = Vector3.new(Mouse.Hit.x, Mouse.Hit.y, Mouse.Hit.z)
                }
                spawn(
                    function()
                        workspace[plr.Name]:WaitForChild("HyperlaserGun").ServerControl:InvokeServer(unpack(args))
                    end
                )
                wait(.14)
                plr.Character:FindFirstChild("HyperlaserGun"):remove()
            end
        else
            laser = false
            tchat("reset me")
        end
    end
)

section7:addToggle(
    "Spam Rocket",
    nil,
    function(value)
        if value == true then
            explosive = true
            coroutine.wrap(
                function()
                    while explosive do
                        wait(.2)
                        for i = 1, 50 do
                            if explosive then
                                tchat(
                                    "gear me 0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000090718505"
                                )
                            end
                        end
                    end
                end
            )()
            wait(1)

            while explosive do
                plr.Backpack:FindFirstChild("ExponentialRocketLauncher").Parent = plr.Character

                function getNil(name, class)
                    for _, v in pairs(getnilinstances()) do
                        if v.ClassName == class and v.Name == name then
                            return v
                        end
                    end
                end

                local args = {
                    [1] = CFrame.new(Mouse.Hit.x, Mouse.Hit.y, Mouse.Hit.z)
                }

                spawn(
                    function()
                        workspace[plr.Name].ExponentialRocketLauncher.ClickyClick:FireServer(unpack(args))
                    end
                )

                wait(.1)
                plr.Character:FindFirstChild("ExponentialRocketLauncher"):remove()
            end
        else
            laser = false
            tchat("reset me")
        end
    end
)

section7:addButton(
    "Campfire Haven",
    function()
        local campfires = 500 -- change this to however many campfires you want

        for i = 1, campfires do
            tchat("gear me 123234510")
        end
        wait(1)

        for i, v in pairs(plr.Backpack:GetChildren()) do
            if v.Name == "InstantCampfire" then
                v.Parent = plr.Character
            end
        end
        for i = 1, campfires do
            local args = {
                [1] = CFrame.new(-128.666061, 3.79952192, -12.1145515, 1, 0, 0, 0, 1, 0, 0, 0, 1)
            }

            spawn(
                function()
                    workspace[plr.Name].InstantCampfire.CampfireEvent:FireServer(unpack(args))
                end
            )
        end
    end
)

section7:addButton(
    "Mine Spam",
    function()
        local Remote = 500 -- change this to however many campfires you want
        local plr = game.Players.LocalPlayer
       coroutine.wrap(function()
               for i = 1, Remote do
                   wait(.1)
                   game.Players:Chat("gear me 33383241")
               end
               end)()
       
       while wait() do
               for i, v in pairs(plr.Backpack:GetChildren()) do
                   if v.Name == "RemoteMine" then
                       v.Parent = plr.Character
                       mouse1click()
                   end
               end
               end
    end
)

section7:addButton(
    "All Periastrons",
    function()
        tchat("ungear me")
        wait(.3)
        tchat("gear me 120307951")
        tchat("gear me 69499437")
        tchat("gear me 93136802")
        tchat("gear me 159229806")
        tchat("gear me 80661504")
        tchat("gear me 108158379")
        tchat("gear me 73829193")
        tchat("gear me 233520257")
        tchat("gear me 139577901")
        tchat("gear me 2544549379")
        tchat("gear me 99119240")
        wait(.8)
        for i, v in pairs(game.Players.LocalPlayer.Backpack:getChildren()) do
            if v:IsA("Tool") then
                v.Parent = game.Players.LocalPlayer.Character
            end
        end
    end
)

section8:addToggle(
    "Rainbow Building Bricks",
    nil,
    function(value)
        if value == true then
            paint1 = true
            paint()
            error("Rainbow Building Bricks set to true")
            coroutine.wrap(
                function()
                    while paint1 do
                        wait()
                        for _, v in pairs(ws["Building Bricks"]:GetChildren()) do
                            colour(v, math.random(), math.random(), math.random())
                        end
                    end
                end
            )()
        else
            paint1 = false
            error("Rainbow Building Bricks set to false")
            unpaint()
        end
    end
)

section8:addToggle(
    "Rainbow Obby",
    nil,
    function(value)
        if value == true then
            paint2 = true
            paint()
            error("Rainbow Obby set to true")
            coroutine.wrap(
                function()
                    while paint2 do
                        wait()
                        for _, v in pairs(ws["Obby"]:GetChildren()) do
                            colour(v, math.random(), math.random(), math.random())
                        end
                    end
                end
            )()
        else
            paint2 = false
            error("Rainbow Obby set to false")
            unpaint()
        end
    end
)

section8:addToggle(
    "Rainbow Obby Box",
    nil,
    function(value)
        if value == true then
            paint3 = true
            paint()
            error("Rainbow Obby Box set to true")
            coroutine.wrap(
                function()
                    while paint3 do
                        wait()
                        for _, v in pairs(ws["Obby Box"]:GetChildren()) do
                            colour(v, math.random(), math.random(), math.random())
                        end
                    end
                end
            )()
        else
            paint3 = false
            error("Rainbow Obby Box set to false")
            unpaint()
        end
    end
)

section8:addToggle(
    "Rainbow Admin Dividers",
    nil,
    function(value)
        if value == true then
            paint4 = true
            paint()
            error("Rainbow Admin Dividers set to true")
            coroutine.wrap(
                function()
                    while paint4 do
                        wait()
                        for _, v in pairs(ws["Admin Dividers"]:GetChildren()) do
                            colour(v, math.random(), math.random(), math.random())
                        end
                    end
                end
            )()
        else
            paint4 = false
            error("Rainbow Admin Dividers set to false")
            unpaint()
        end
    end
)

section8:addToggle(
    "Rainbow Pads",
    nil,
    function(value)
        if value == true then
            paint5 = true
            paint()
            error("Rainbow Pads set to true")
            coroutine.wrap(
                function()
                    while paint5 do
                        wait()
                        for _, v in pairs(Pads:GetChildren()) do
                            colour(v.Head, math.random(), math.random(), math.random())
                        end
                    end
                end
            )()
        else
            paint5 = false
            error("Rainbow Pads set to false")
            unpaint()
        end
    end
)

section8:addToggle(
    "Rainbow Regen",
    nil,
    function(value)
        if value == true then
            paint6 = true
            paint()
            error("Rainbow Regen set to true")
            coroutine.wrap(
                function()
                    while paint6 do
                        wait()
                        colour(Admin.Regen, math.random(), math.random(), math.random())
                    end
                end
            )()
        else
            paint6 = false
            error("Rainbow Regen set to false")
            unpaint()
        end
    end
)

section8:addToggle(
    "Rainbow Baseplate",
    nil,
    function(value)
        if value == true then
            paint7 = true
            paint()
            error("Rainbow Baseplate set to true")
            coroutine.wrap(
                function()
                    while paint7 do
                        wait()
                        colour(ws.baseplate, math.random(), math.random(), math.random())
                    end
                end
            )()
        else
            paint7 = false
            error("Rainbow Baseplate set to false")
            unpaint()
        end
    end
)

section8:addToggle(
    "Rainbow House",
    nil,
    function(value)
        if value == true then
            paint8 = true
            paint()
            error("Rainbow House set to true")
            coroutine.wrap(
                function()
                    while paint8 do
                        wait()
                        for i, v in pairs(house:GetChildren()) do
                            colour(v, math.random(), math.random(), math.random())
                        end
                    end
                end
            )()
        else
            paint8 = false
            error("Rainbow House set to false")
            unpaint()
        end
    end
)

section8:addToggle(
    "Rainbow Frenzy",
    nil,
    function(value)
        if value == true then
            paint9 = true
            paint()
            error("Rainbow Map set to true")
            coroutine.wrap(
                function()
                    while paint9 do
                        wait()
                        for i, v in pairs(game.Workspace.Terrain["_Game"]:GetDescendants()) do
                            if v:IsA("Part") then
                                colour(v, math.random(), math.random(), math.random())
                            end
                        end
                    end
                end
            )()
        else
            paint9 = false
            error("Rainbow Map set to false")
            unpaint()
        end
    end
)

section8:addButton(
    "Colour Map Black",
    function()
        paint()
        error("Map Colour set to black")
        black()
    end
)

section8:addButton(
    "Colour Map White",
    function()
        paint()
        error("Map Colour set to white")
        white()
    end
)

section8:addButton(
    "Colour Map Red",
    function()
        paint()
        error("Map Colour set to red")
        red()
    end
)

section8:addButton(
    "Colour Map Blue",
    function()
        paint()
        error("Map colour set to blue")
        blue()
    end
)

section8:addButton(
    "Colour Map Green",
    function()
        paint()
        error("Map colour set to green")
        green()
    end
)

section8:addButton(
    "Colour Map Orange",
    function()
        paint()
        error("Map colour set to orange")
        orange()
    end
)

section8:addButton(
    "Colour Map Yellow",
    function()
        paint()
        error("Map colour set to yellow")
        yellow()
    end
)

section8:addButton(
    "Colour Map Purple",
    function()
        paint()
        error("map colour set to purple")
        purple()
    end
)

section8:addButton(
    "Colour Map Pink",
    function()
        paint()
        error("map colour set to pink")
        pink()
    end
)

section8:addButton(
    "Colour Map Brown",
    function()
        paint()
        error("map colour set to brown")
        brown()
    end
)

section8:addToggle(
    "Spam Color Map",
    nil,
    function(value)
        if value == true then
            error("Spam Colouring Map")
            paint10 = true
            paint()
            coroutine.wrap(
                function()
                    while wait(.2) do
                        black()
                        wait(.2)
                        white()
                        wait(.2)
                        red()
                        wait(.2)
                        orange()
                        wait(.2)
                        blue()
                        wait(.2)
                        pink()
                        wait(.2)
                        yellow()
                        wait(.2)
                        purple()
                        wait(.2)
                        brown()
                    end
                end
            )()
        else
            paint10 = false
            unpaint()
            error("Map Colour Spam Disabled")
        end
    end
)

section8:addToggle(
    "Spam Rainbow Parts",
    nil,
    function(value)
        if value == true then
            error("Rainbow")
            paint11 = true
            paint()
            coroutine.wrap(
                function()
                    if not Folder:FindFirstChild("Part") then
                        error("Part does not exist")
                    else
                        error("Rainbow Parts set to true")
                        while paint11 do
                            wait()
                            for i, v in pairs(Folder:GetChildren()) do
                                if v:IsA("Part") then
                                    colour(v, math.random(), math.random(), math.random())
                                end
                            end
                        end
                    end
                end
            )()
        else
            paint11 = false
            error("Rainbow Parts set to false")
            unpaint()
        end
    end
)

section8:addToggle(
    "Rainbow Players",
    nil,
    function(value)
        if value == true then
            paint12 = true
            paint()
            error("Rainbow Players set to true")
            coroutine.wrap(
                function()
                    while paint12 do
                        wait()
                        for i, v in pairs(getplrs) do
                            for _, v in pairs(v.Character:GetDescendants()) do
                                if v:IsA("Part") then
                                    colour(v, math.random(), math.random(), math.random())
                                end
                            end
                        end
                    end
                end
            )()
        else
            paint12 = false
            error("Rainbow Players set to false")
            unpaint()
        end
    end
)


section9:addButton(
    "Clear Console",
    function()
        rconsoleclear()
        print(jotunnheim)
    end
)


section9:addButton(
    "Text Color Red",
    function()
        red = false
        blue = false
        green = false
        cyan = false
        black = false
        magenta = false
        brown = false
        light_gray = false
        dark_gray = false
        light_blue = false
        light_green = false
        light_cyan = false
        light_red = false
        light_magenta = false
        yellow = false
        white = false
        wait()
        red = true
        coroutine.wrap(
            function()
                while red do
                    wait()
                    color("RED")
                end
            end
        )()
    end
)

section9:addButton(
    "Text Color Blue",
    function()
        red = false
        blue = false
        green = false
        cyan = false
        black = false
        magenta = false
        brown = false
        light_gray = false
        dark_gray = false
        light_blue = false
        light_green = false
        light_cyan = false
        light_red = false
        light_magenta = false
        yellow = false
        white = false
        wait()
        blue = true
        coroutine.wrap(
            function()
                while blue do
                    wait()
                    color("BLUE")
                end
            end
        )()
    end
)

section10:addToggle(
    "Hook Music Id",
    nil,
    function(value)
        if value then
        if not Folder:FindFirstChild("Sound") then
        error("No sounds are playing")
        else
        hookmusic = true
        error("Music Id Has been Hooked, Only your id will be played")
        id = Folder:FindFirstChild("Sound").SoundId
        Folder:FindFirstChild("Sound"):GetPropertyChangedSignal("SoundId"):Connect(function()
        str = tostring(id):split("=")
            tchat("music ".. zero .. str[2])
    end)
end
        else
        hookmusic = false
        error("Unhooked Music Id, other songs shall be played now")
        end
    end
)


section10:addButton("Copy Music Id", function()
    if not Folder:FindFirstChild("Sound") then
        error("No sounds are playing")
    else
        copied_id = tostring(Folder:FindFirstChild("Sound").SoundId):split("=")
        copied_id = copied_id[2]
    warn("Successfully copied Id: "..copied_id..", id has been set to clipboard")
    setclipboard(copied_id)
    end
    end
)

section10:addButton(
    "Shuffle Random Id",
    function()
        error("Selecting Random Id...")
        wait(.4)
        id = tostring(_G.musicids[math.random(1, #_G.musicids)])
        tchat("music " .. genv .. id)
        error("Playing Id: " .. id)
    end
)

section10:addButton("Copy Vis", function()
    local vis = game.Lighting
warn("Copied Lighting Settings!")
print("FogColor: "..tostring(vis.FogColor))
print("ColorShiftBottom: "..tostring(vis.ColorShift_Bottom))
print("ColorShiftTop: "..tostring(vis.ColorShift_Top))
    end
)

section10:addButton(
    "Random FogColor",
    function()
        tchat("fogend 100")
        fogcolor = math.random(1, 1000) .. " " .. math.random(1, 1000) .. " " .. math.random(1, 1000)
        colorshifttop = math.random(1, 1000) .. " " .. math.random(1, 1000) .. " " .. math.random(1, 1000)
        colorshiftbottom = math.random(1, 1000) .. " " .. math.random(1, 1000) .. " " .. math.random(1, 1000)
        tchat("fogcolor " .. fogcolor)
        warn("fogcolor set to " .. fogcolor)

        tchat("colorshifttop " .. colorshifttop)
        warn("colorshifttop set to " .. colorshifttop)

        tchat("colorshiftbottom " .. colorshiftbottom)
        warn("colorshiftbottom set to " .. colorshiftbottom)
    end
)

section10:addButton(
    "Enable Vis",
    function()
        if not Folder:FindFirstChild("Sound") then
            error("Play music first ya retard")
        else
            vis = true
            while vis do
                wait()
                loudness = Game.Workspace.Terrain._Game.Folder:WaitForChild("Sound").PlaybackLoudness
                fog = loudness / 4
                basefog = 250
                fogend = basefog - fog
                tchat("fogend " .. fogend)
            end
        end
    end
)

section10:addButton(
    "Disable Vis",
    function()
        vis = false
        wait(.3)
        tchat("fix")
    end
)

section10:addToggle(
    "Fog Disco",
    nil,
    function(value)
        if value then
            disco = true
            warn("Enabled Fog Disco")
            tchat("fogend 100")
            while disco do
                wait(.00001)
                tchat(":fogcolor " .. math.random(1, 999) .. " " .. math.random(1, 999) .. " " .. math.random(1, 999))
                tchat(
                    ":colorshifttop " .. math.random(1, 999) .. " " .. math.random(1, 999) .. " " .. math.random(1, 999)
                )
                tchat(
                    ":colorshiftbottom " ..
                        math.random(1, 999) .. " " .. math.random(1, 999) .. " " .. math.random(1, 999)
                )
            end
        else
            disco = false
        end
    end
)

section11:addButton(
    "Sunset",
    function()
        tchat("fix")
        wait()
        tchat("time 6.20")
        tchat("colorshifttop 600 400 0")
        tchat("colorshiftbottom 600 400 0")
    end
)

section11:addButton(
    "Sunset2",
    function()
        tchat("fix")
        wait()
        tchat("time 17")
        tchat("colorshifttop 600 400 0")
        tchat("colorshiftbottom 600 400 0")
    end
)

section11:addButton(
    "Day Cycle",
    function()
        tchat("fix")
        for i = 1, 100 do
            wait()
            tchat("time " .. i)
        end
    end
)

section11:addButton(
    "Sinister Fog",
    function()
        tchat("fix")
        wait()
        tchat("time 0")
        tchat("fogend 25")
        tchat("fogcolor 0 0 0")
        tchat("outdoorambient 255 0 0")
    end
)

section11:addButton(
    "Pitch Black",
    function()
        tchat("fix")
        wait()
        tchat("time 0")
        tchat("colorshifttop 100000000 1000000000 10000000000000")
        tchat("colorshiftbottom 100000000 1000000000 10000000000000")
    end
)

section11:addButton(
    "Hide And Seek",
    function()
        tchat("fix")
        wait()
        tchat("time 0")
        tchat("fogcolor 0 0 0")
        tchat("fogend 25")
        tchat("fogstart 25")
    end
)

section12:addButton(
    "Compass Visualiser",
    function()
        error("Playing Compass Visualiser")
        tchat("fogcolor 127 0 255")
		tchat("music 5538346242")
		tchat("fogend 100")
		tchat("time 1")
		vis = true
    end
)

section12:addButton(
    "Yarichin Visualiser",
    function()
        error("Playing Yarichin Visualiser")
        tchat("fogcolor 127 0 255")
		tchat("music 2651273577")
		tchat("fogend 100")
		tchat("time 1")
		vis = true
    end
)

section12:addButton(
    "Everything Black Visualiser",
    function()
        error("Playing Everything Black Visualiser")
        tchat("time 1")
		tchat("fogend 200")
		tchat("fogcolor 1 1 1")
		tchat("colorshiftbottom 1 1 1")
		tchat("colorshifttop 1 1 1")
		tchat("music 00000000000000000000000000000000000000000001317469859")
		vis = true
    end
)

section12:addButton(
    "Hype Visualiser",
    function()
        error("Playing Hype Visualiser")
        tchat("music 0000000000000000000000000000002883061097")
		tchat("time -4")
		tchat("fogcolor -400 -0 -400")
		tchat("fogend 100")
		tchat("outdoorambient 400 0 400")
		tchat("colorshifttop 400 0 400")
        tchat("fogstart 1000000000000000")
		tchat("colorshiftbottom 400 0 400")
		vis = true
    end
)

section12:addButton(
    "Buttercup Visualiser",
    function()
        error("Playing Buttercup Visualiser")
        tchat("music 0000000000000000000000000000002325704183")
        tchat("time -4")
		tchat("fogcolor -400 -0 -400")
		tchat("fogend 400")
		tchat("outdoorambient 400 0 400")
		tchat("colorshifttop 400 0 400")
		tchat("colorshiftbottom 400 0 400")
		vis = true
    end
)

section12:addButton(
    "Play Date Visualiser",
    function()
        error("Playing Play Date Visualiser")
        tchat("music 4954877483")
		wait(.2)
		tchat("fogcolor 100 200 400")
		tchat("colorshifttop 600 10 600")
		tchat("fogend 400")
		vis = true
    end
)

section12:addButton(
    "Umbrella Visualiser",
    function()
        error("Playing Umbrella Visualiser")
        tchat("music 000000000000000000000000000000000000000000000000000000000000000000000000000000005580376560")
		tchat("fogcolor 10 200 400")
		tchat("colorshifttop 400 0 600")
		tchat("fogend 400")
		vis = true
    end
)

-- second page
local theme = venyx:addPage("Theme", 5012544693)
local colors = theme:addSection("Colors")

for theme, color in pairs(themes) do -- all in one theme changer, i know, im cool
    colors:addColorPicker(
        theme,
        color,
        function(color3)
            venyx:setTheme(theme, color3)
        end
    )
end
