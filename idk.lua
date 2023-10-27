--getgenv().Only_comet = true
--getgenv().boothsnipe = true
repeat task.wait() until game:IsLoaded()
getgenv().success = true

if getgenv().success then
    print("Checking Key...")
    
    function hehenigga(data)
        local b = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
        return ((data:gsub('.', function(x) 
            local r,b='',x:byte()
            for i=8,1,-1 do r=r..(b%2^i-b%2^(i-1)>0 and '1' or '0') end
            return r;
        end)..'0000'):gsub('%d%d%d?%d?%d?%d?', function(x)
            if (#x < 6) then return '' end
            local c=0
            for i=1,6 do c=c+(x:sub(i,i)=='1' and 2^(6-i) or 0) end
            return b:sub(c+1,c+1)
        end)..({ '', '==', '=' })[#data%3+1])
    end
    function hehenigga1(data)
        local b = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
        data = string.gsub(data, '[^'..b..'=]', '')
        return (data:gsub('.', function(x)
            if (x == '=') then return '' end
            local r,f='',(b:find(x)-1)
            for i=6,1,-1 do r=r..(f%2^i-f%2^(i-1)>0 and '1' or '0') end
            return r;
        end):gsub('%d%d%d?%d?%d?%d?%d?%d?', function(x)
            if (#x ~= 8) then return '' end
            local c=0
            for i=1,8 do c=c+(x:sub(i,i)=='1' and 2^(8-i) or 0) end
            return string.char(c)
        end))
    end
    
    rdtext = ""
    randomtexts = {'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z'}
    for i= 1, 10 do
        rdtext = rdtext..randomtexts[math.random(1,26)]
    end
    local ip = game:HttpGet("https://projectwdscripts.com/projectwd/ips.php?key="..rdtext, true)
    local ip1 = game:HttpGet("https://projectwdscripts.com/projectwd/testomg.php?key="..rdtext, true)
    jsondata = game.HttpService:JSONDecode(ip)
    jsondata1 = game.HttpService:JSONDecode(ip1)
    
    local key = rdtext
    base64_string = jsondata["callback"]
    decoded_string = hehenigga1(base64_string)
    local decrypted_string = ''
    for i = 1, #decoded_string do
        decrypted_string = decrypted_string .. string.char(bit32.bxor(decoded_string:byte(i), key:byte((i - 1) % #key + 1)))
    end
    
    ---2nd data---
    base64_string1 = jsondata1["callback"]
    decoded_string1 = hehenigga1(base64_string1)
    local decrypted_string1 = ''
    for i = 1, #decoded_string1 do
        decrypted_string1 = decrypted_string1 .. string.char(bit32.bxor(decoded_string1:byte(i), key:byte((i - 1) % #key + 1)))
    end
    local data = game.HttpService:JSONDecode(decrypted_string)
    local data1 = game.HttpService:JSONDecode(decrypted_string1)
    if data["key"] ~= nil and data["key"] == rdtext and data1["key1"] ~= nil and data1["key1"] == rdtext then
        if data1["Identity"] == data["Identity"] then
            
        else
            game.Players.LocalPlayer:kick("Use Original String from discord.gg/u7JNWQcgsU")
            setclipboard("https://discord.gg/u7JNWQcgsU")
            wait(2)
            while true do end
        end
    else
        game.Players.LocalPlayer:kick("Use Original String from discord.gg/u7JNWQcgsU")
        setclipboard("https://discord.gg/u7JNWQcgsU")
        wait(2)
        while true do end
    end

    print("Key Verified...")
    if game.Workspace:FindFirstChild("Farmpart") then
        game.Workspace.Farmpart:Destroy()
    end
    local farmpart = Instance.new("Part")
    actualpart = farmpart
    actualpart.Name = "Farmpart"
    actualpart.Parent = game.Workspace
    actualpart.Anchored = true
    actualpart.Size = Vector3.new(20,1,20)
    actualpart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0,-50,0)
    
    repeat task.wait() until game:isLoaded()
    repeat task.wait() until game:GetService("Players")
    repeat task.wait() until game:GetService("Players").LocalPlayer
    repeat task.wait() until game:GetService("Players").LocalPlayer.Character
    repeat task.wait() until game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart")
    repeat task.wait() until game:GetService("Players").LocalPlayer.PlayerGui.Main.Enabled
    repeat task.wait() until game:GetService("Workspace"):WaitForChild("__MAP")
    
    getgenv().config = {
        booth = {
            savedpets = {},
            sniping = false,
            sniperarity = false,
            undergem = false,
            raregem = false,
            boothweb = "",
            rarities = {
                ['Basic'] = false;
                ['Rare'] = false;
                ['Epic'] = false;
                ['Legendary'] = false;
                ['Mythical'] = false;
                ['Exclusive'] = false;  
                ['Event'] = false;  
                ['Secret'] = false;
                ['Huges'] = false;
                ["Titanics"] = false;
            }
        },
        yeetorb = false,
        sahopfarm = false,
        selectedfruits = "",
        tbs = false,
        sFarm = false,
        serverhop = false,
        Farm = false,
        ooeil = false,
        cFarm = false,
        hFarm = false,
        dFarm = false,
        cb = false,
        cd = false,
        cl = false,
        ic = true,
        cg = false,
        nl = false,
        oe = false,
        toe = false,
        ooe = false,
        s2 = false,
       -- antiinvite = true,
        s3 = false,
        tpsniper = false,
        rea = true,
        esl = false,
        eul = false,
        im = false,
        ac = false,
        aoi = false,
        adc = false,
        acd = false,
        fsf = false,
        dim = false,
        dil = false,
        dad = false,
        scb = false,
        scd = false,
        pcrr = false,
        pcvr = false,
        pij = false,
        pmab = false,
        luckyfarm = false,
        sesl = false,
        servertime = 60,
        akick = false,
        igrshiny = false,

        DiscordId2 = "",
        url2 = "",
        coinhook = false,
        coinhook1 = false,
        hidpart = false,

        hcforfuse = false;
        igrshiforfuse = false;

        pet1name = "Select Pet",
        pet2name = "Select Pet",
        pet1amt = 0,
        pet2amt = 0,
        pet1typ = "None",
        pet2typ = "None",

        antijum = false,


        DiscordId = "",
        url = "",
        hatchhook = false,
        indexcol = {
            igrnormal = false,
            igrmyth = false,
            igrgold = false,
            igrrainbow = false,
            igrdarkmatter = false,
            hatchtype = "Single",
            coani = false,
            dpet = false,
            opegg = false
        },
        TrackList = {
            ['Basic'] = false;
            ['Rare'] = false;
            ['Epic'] = false;
            ['Legendary'] = false;
            ['Mythical'] = false;
            ['Exclusive'] = false;
            ['Event'] = false;
            ['Secret'] = false;
        },

        masteryfarm = false,
        myseggtyp = "Single",
        mysopegg = "Cracked Egg",
        selected = {},
        
        lfspeed = 0.1,
        hopwait = 30,
        sfspeed = 0.2,
        snipetyp = "Mythical",
        snipeprice = 0,
        snipepetid = "",
        snipepetrare = "Any",
        petworldtyp = "Any",
        ifrhhr = false,
        snipeweb = "",

        ---comet---
        cometsnipe = false;
        comethop = false;
        ----Options----
        sm = "Select Mode",
        smamt = 0,
        hcconv = false,
        igrconvsh = false,
        opegg = "Eggs",
        ChestName = "Chests",
        Area = "Areas",
        Area2 = "Areas",
        Method = "Methods",
        dpa = "Select Amount",
        dhcpet = false,
    digrconvsh = false,
        fst = "",
        fsp = "",
        fsa = "",
        dms = 0,
        dns = 0,
        pms = "All",
        pcp = "Hello!",
        ppn = "Pet Name",
        TWorlds = {
            ["Spawn"] = false,
            ["Fantasy"] = false,
            ["Tech"] = false,
            ["Axolotl Ocean"] = false,
            ["Pixel"] = false,
            ["Cat"] = false,
            ["Doodle"] = false,
            ["Kawaii"] = false,
            ["Dog"] = false,
            
        },
        THWorlds = {
            ["Spawn"] = false,
            ["Fantasy"] = false,
            ["Tech"] = false,
            ["Void"] = false,
            ["Axolotl Ocean"] = false,
            ["Pixel"] = false,
            ["Cat"] = false,
            ["Limbo"] = false,
            ["Doodle"] = false,
            ["Kawaii"] = false,
            ["Dog"] = false
            
        },
        
        delchecker = {
            ['Basic'] = false;
            ['Rare'] = false;
            ['Epic'] = false;
            ['Legendary'] = false;
            ['Mythical'] = false;
            ['Exclusive'] = false;  
            ['Event'] = false;  
            ['Secret'] = false;  
        },

        ---beta fuser---
        hatchegg = false,
        selhatchegg = "None",
        selfusepet = "None",
        selfuseamt = 0,
        selfusetyp = "None",
        selgoldenegg = false,
        igrselsh = false,
        selfusehc = false,
        --beta convert--
        hcconvpets = false,
        igrconvshpets = false,
        impets = false,
        smpets = "Golden/Rainbow",
        golamtpets = 6,
        stconvpets = false,
        --beta daycare--
        carepet = false,
        claimcare = false
    }

    
    local filename = (game.Players.LocalPlayer.Name).."_walkerfanXDsssr2"..".txt"
    function loadsettings()
        local json;
        local HttpService = game:GetService("HttpService");
        if (readfile and isfile and isfile(filename)) then
            getgenv().config = HttpService:JSONDecode(readfile(filename));
        end
    end
    loadsettings()
    if getgenv().boothsnipe == false then
        getgenv().config.booth.sniping = false
    end
    function savesettings()
        local json;
        local HttpService = game:GetService("HttpService");
        if (writefile) then
            json = HttpService:JSONEncode(getgenv().config);
            writefile(filename,json)
        else
            print("Your Execute not support");
        end
    end
 ----anti afk----

    
    
        game:GetService("Players").LocalPlayer.Idled:connect(
            function()
                game:GetService("VirtualUser"):ClickButton2(Vector2.new())
            end
        )
        

    task.spawn(function()
        while true do wait()
            if getgenv().config.antijum then
                game.Players.LocalPlayer.Character.Humanoid.Jump = true
                afktime = os.time()
                repeat task.wait()
                until (os.time() - afktime >= 30) or getgenv().config.antijum == false
            end
        end
    end)
    task.spawn(function()
        while true and wait(1) do
            if getgenv().config.yeetorb then
                for i,v in pairs(game.Workspace.__MAP.Interactive.Orbs:GetChildren()) do
                    v.Center.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                    v.ForceField.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                    v.Orb.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                end
            end
        end
    end)

        
    -------------remote names----------------

    
    boostremname = "Activate Server Boost"

    delremname = "Delete Several Pets"

    redaremname = "Redeem Dark Matter Pet"

    gifremname = "Redeem Free Gift"

    --[[(local mermacmod = getsenv(game:GetService("Players").LocalPlayer.PlayerScripts.Scripts.GUIs.Merchant)
    merremname = getconstants(mermacmod.Buy)[16])]]
    
    darremname = "Convert To Dark Matter"
    redaremname = "Redeem Dark Matter Pet"
    golremname = "Use Golden Machine"

    rbremname = "Use Rainbow Machine"
    eggremname = "Buy Egg"
    
    furemname = "Fuse Pets"

    bosremname = "Activate Boost"

    golremname = "Use Golden Machine"

    rbremname = "Use Rainbow Machine"

    eggremname = "Buy Egg"

    vipremname = "Redeem VIP Rewards"

    rankremname = "Redeem Rank Rewards"

    encremname = "Enchant Pets"
    ----------------------------------------------
    coinremname = "Get Coins"
    local petmod = require(game:GetService("ReplicatedStorage").Framework.Library)
    local mod = require(game:GetService("ReplicatedStorage").Framework.Library)
    local petNetwork = require(game:GetService("ReplicatedStorage").Library.Client.Network)
    
    local Library = require(game.ReplicatedStorage.Framework.Library)
    
    loadstring([[local Library = require(game.ReplicatedStorage.Framework.Library)
hookfunction(debug.getupvalue(Library.Network.Invoke, 1), function(...) return true end)
-- Currently we don't need to hook Fire, since both Invoke/Fire have the same upvalue, this may change in future.
-- hookfunction(debug.getupvalue(Library.Network.Fire, 1), function(...) return true end)

local originalPlay = Library.Audio.Play
Library.Audio.Play = function(...) 
    if checkcaller() then
        local audioId, parent, pitch, volume, maxDistance, group, looped, timePosition = unpack({ ... })
        if type(audioId) == "table" then
            audioId = audioId[Random.new():NextInteger(1, #audioId)]
        end
        if not parent then
            
            return nil
        end
        if audioId == 0 then return nil end
        
        if type(audioId) == "number" or not string.find(audioId, "rbxassetid://", 1, true) then
            audioId = "rbxassetid://" .. audioId
        end
        if pitch and type(pitch) == "table" then
            pitch = Random.new():NextNumber(unpack(pitch))
        end
        if volume and type(volume) == "table" then
            volume = Random.new():NextNumber(unpack(volume))
        end
        if group then
            local soundGroup = game.SoundService:FindFirstChild(group) or nil
        else
            soundGroup = nil
        end
        if timePosition == nil then
            timePosition = 0
        else
            timePosition = timePosition
        end
        local isGargabe = false
        if not pcall(function() local _ = parent.Parent end) then
            local newParent = parent
            pcall(function()
                newParent = CFrame.new(newParent)
            end)
            parent = Instance.new("Part")
            parent.Anchored = true
            parent.CanCollide = false
            parent.CFrame = newParent
            parent.Size = Vector3.new()
            parent.Transparency = 1
            parent.Parent = workspace:WaitForChild("__DEBRIS")
            isGargabe = true
        end
        local sound = Instance.new("Sound")
        sound.SoundId = audioId
        sound.Name = "sound-" .. audioId
        sound.Pitch = pitch and 1
        sound.Volume = volume and 0.5
        sound.SoundGroup = soundGroup
        sound.Looped = looped and false
        sound.MaxDistance = maxDistance and 100
        sound.TimePosition = timePosition
        sound.RollOffMode = Enum.RollOffMode.Linear
        sound.Parent = parent
        if not require(game:GetService("ReplicatedStorage"):WaitForChild("Library"):WaitForChild("Client")).Settings.SoundsEnabled then
            sound:SetAttribute("CachedVolume", sound.Volume)
            sound.Volume = 0
        end
        sound:Play()
        getfenv(originalPlay).AddToGarbageCollection(sound, isGargabe)
        return sound
    end
    return originalPlay(...)
end]])()


    loadstring([[local Blunder = require(game:GetService("ReplicatedStorage"):WaitForChild("X", 10):WaitForChild("Blunder", 10):WaitForChild("BlunderList", 10))
    if not Blunder or not Blunder.getAndClear then LocalPlayer:Kick("Error while bypassing the anti-cheat! (Didn't find blunder)") end
    
    local OldGet = Blunder.getAndClear
    setreadonly(Blunder, false)
    local function OutputData(Message)
       
    end
    
    Blunder.getAndClear = function(...)
       local Packet = ...
        for i,v in next, Packet.list do
           if v.message ~= "PING" then
               OutputData(v.message)
               table.remove(Packet.list, i)
           end
       end
       return OldGet(Packet)
    end
    print("ayo")
    setreadonly(Blunder, true)
]])()
    if not getgenv().sendedonce then
        getgenv().sendedonce = {}
    end
    function sendcomethook(url, key1, area, typet, players, placeid, jobid)
        link = url
        key = key1
        local encodelink = game:GetService("HttpService"):UrlEncode(link)
        local base64EncodedLink = hehenigga(encodelink..key)
        urlol = "https://projectwdscripts.com/hooks/hook.php?url="..base64EncodedLink.."&an="..key.."&area="..area.."&type="..typet.."&player="..tostring(players).."&id="..tostring(placeid).."&jon="..jobid
        request = http_request or request or HttpPost or syn.request or http.request
        local abcdef = {Url = urlol, Method = "GET"}
        request(abcdef)
    end
    
    -- task.spawn(function()
    --     while task.wait(1) do
    --         pcall(function()
    --             petmodr = require(game:GetService("ReplicatedStorage").Library.Client.Network)
    --             local c = petmodr.Invoke("Comets: Get Data");
    --             getgenv().cometer = false
    --             for i,v in pairs(c) do
    --                 wait(1)
    --                 getgenv().cometer = true
    --                 if v.Type == "Mini Comet" then
    --                     urlolr = "https://projectwdscripts.com/funstuff/comet1.php?type=T&players="..tostring(#game.Players:GetChildren()).."&jon="..game.JobId.."&time="..tostring(v.EndTime).."&rem=false"
    --                     request = http_request or request or HttpGET or syn.request or http.request
    --                     local abcdef = {Url = urlolr, Method = "GET"}
    --                     request(abcdef)
    --                 else
    --                     urlolr = "https://projectwdscripts.com/funstuff/comet1.php?type=M&players="..tostring(#game.Players:GetChildren()).."&jon="..game.JobId.."&time="..tostring(v.EndTime).."&rem=false"
    --                     request = http_request or request or HttpGET or syn.request or http.request
    --                     local abcdef = {Url = urlolr, Method = "GET"}
    --                     request(abcdef)
    --                 end
    --             end
    --             if getgenv().cometer == false or #game.Players:GetChildren() == 12 then
    --                 urlolr = "https://projectwdscripts.com/funstuff/comet1.php?jon="..game.JobId.."&rem=true"
    --                 request = http_request or request or HttpGET or syn.request or http.request
    --                 local abcdef = {Url = urlolr, Method = "GET"}
    --                 request(abcdef)
    --                 wait(1)
    --                 getgenv().cometer = false
    --             end
    --         end)
    --     end
    -- end)

    -- task.spawn(function()
    -- while true and task.wait() do
    --     local c = petNetwork.Invoke("Comets: Get Data");
    --     for i,v in pairs(c) do
    --         if v.WorldId == "Diamond Mine" then
    --             continue
    --         end
    --         if not table.find(getgenv().sendedonce, v.CoinId) then
                
    --             local urlol = ""
    --             if v.Type ~= "Mini Comet" then 
    --                 rdtexturl = ""
    --                 randomtexts = {'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z'}
    --                 for i= 1, 6 do
    --                     rdtexturl = rdtexturl..randomtexts[math.random(1,26)]
    --                 end
    --                 url = "https://discord.com/api/webhooks/1091882290008825927/6ZunAPdNkW4RDmczwN3RwL2T-NZMip72ZdPAYylFAXuL-uDS74yWR61zpDqt9H5XwEUE"
    --                 sendcomethook(url, rdtexturl, v.AreaId, v.Type, tostring(#game.Players:GetChildren()), tostring(game.PlaceId), game.JobId)
    --             else
    --                 rdtexturl = ""
    --                 randomtexts = {'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z'}
    --                 for i= 1, 6 do
    --                     rdtexturl = rdtexturl..randomtexts[math.random(1,26)]
    --                 end
    --                 url = "https://discord.com/api/webhooks/1091922591419207772/wXIXDjzi4nJJ8QCD_kAjVHDI1ifoeuFdH6jK5avZQAgy0iQNnMcDYyXYnwJ6Gc-fXb7A"
    --                 sendcomethook(url, rdtexturl, v.AreaId, v.Type, tostring(#game.Players:GetChildren()), tostring(game.PlaceId), game.JobId)
    --             end
    --             table.insert(getgenv().sendedonce, v.CoinId)
    --         end
    --     end
    -- end
    -- end)
    -- if game.PlaceId == 6284583030 or game.PlaceId == 10321372166 then
    --     urlol = "https://discord.com/api/webhooks/1090198431521308672/SwegdsDJBULi1VUVpmz2gtIDClEjzy6lNxUkl-inDawjsyyyudXiteD5TaN8TRVZmDOV"
    --     local comet = getsenv(game:GetService("Players").LocalPlayer.PlayerScripts.Scripts.Game.Comets)
    --     petmod.Signal.Invoked("Comets: Landed").OnInvoke = function(a)
    --         c = comet.GetCometByCoinId(a)
    --         local data = {
    --             ["content"] = "Comet Notifier ☄️",
    --             ["username"] = "PSX W41K3R",
    --             ["avatar_url"] = "https://wallpapercave.com/wp/wp2383838.jpg",
    --             ["embeds"] = {
    --                {
    --                ["fields"] = {
    --                                 {
    --                                     ["name"] = "🌟 Area = ".."```"..c.AreaId.."```",
    --                                     ['value'] = "",
    --                                     ["inline"] = true
    --                                 },
    --                                 {
    --                                     ["name"] = "☄️Type = ".."```"..c.Type.."```",
    --                                     ['value'] = "",
    --                                     ["inline"] = false
    --                                 },
    --                                 {
    --                                     ["name"] = "🤾 Players = ".."```"..#game.Players:GetChildren().."/12".."```",
    --                                     ['value'] = "",
    --                                     ["inline"] = false
    --                                 },
    --                                 {
    --                                     ["name"] = "Join Server Script",
    --                                     ["value"] = "```lua\ngame:GetService('TeleportService'):TeleportToPlaceInstance("..game.PlaceId..",".."'"..game.JobId.."'"..", game.Players.LocalPlayer)```",
    --                                     ["inline"] = false
    --                                 }
    --                         }
    --                }
    --            }
    --         }
    --         local newdata = game:GetService("HttpService"):JSONEncode(data)
    --         local headers = {
    --            ["content-type"] = "application/json"
    --         }
    --         request = http_request or request or HttpPost or syn.request or http.request
    --         local abcdef = {Url = urlol, Body = newdata, Method = "POST", Headers = headers}
    --         request(abcdef)
    --     end
    -- end
    -- local playmod = require(game:GetService("ReplicatedStorage").Library.Audio)
    --     oldplay = hookfunction(playmod.Play, function(...)
    --         return {["RollOffMinDistance"] = 0}
    --     end)
    --loadstring(game:HttpGet("https://raw.githubusercontent.com/Muhammad6196/roblox/main/playhook.lua"))()

    

    --[[getgenv().bankinvname = "" 
    getgenv().mainrem = ""
    for i,v in pairs(getupvalues(petNetwork.Invoke)) do
        for i2,v2 in pairs(getupvalues(v)) do
           for i3,v3 in pairs(getupvalues(v2)) do
                if type(v3) == 'table' then
                    for i4,v4 in pairs(v3) do
                        if type(v4) == 'table' then
                            for i5,v5 in pairs(v4) do
                                if v5.Parent == nil and i5 == "Invite To Bank" then
                                    getgenv().bankinvname = v5
                                end
                            end
                        end
                    end
                end
            end
        end
    end
    for i,v in pairs(getupvalues(petNetwork.Invoke)) do
        for i2,v2 in pairs(getupvalues(v)) do
           for i3,v3 in pairs(getupvalues(v2)) do
                if type(v3) == 'table' then
                    for i4,v4 in pairs(v3) do
                        if type(v4) == 'table' then
                            for i5,v5 in pairs(v4) do
                                if v5.Parent ~= nil and i5 == getgenv().bankinvname then
                                    getgenv().mainrem = v5
                                end
                            end
                        end
                    end
                end
            end
        end
    end
    local mt = getrawmetatable(game)
    local oldnamecall = mt.__namecall
    setreadonly(mt, false)
    
    mt.__namecall = newcclosure(function(self, ...)
        local args = {...}
        if self == getgenv().mainrem and getnamecallmethod() == "InvokeServer" then
            if getgenv().config.antiinvite then
                print("Invite Fired")
                pcall(function()
                    game:GetService("Players").LocalPlayer.PlayerGui.Message.Frame.Desc.Text = "Some One tried to Invite in your bank\n (Popup will close on 5 sec)"
                    game.Players.LocalPlayer.PlayerGui.Message.Enabled = true
                    wait(5)
                    game:GetService("Players").LocalPlayer.PlayerGui.Message.Enabled = false
                end)
                return wait(math.huge)
            end
        end
        return oldnamecall(self, ...)
    end)
    setreadonly(mt, true)]]
    
    
    

    
    
    
    

    
    


    -----------------------------------------

    local ListCoins = petNetwork.Invoke(coinremname)
    -----------------------Basic Stuffs-----------------------------
    local Run_Service = game:GetService("RunService")
    local rs = Run_Service.RenderStepped
    local GameLibrary = require(game:GetService("ReplicatedStorage"):WaitForChild("Framework"):WaitForChild("Library"))
    local Library = require(game:GetService("ReplicatedStorage"):WaitForChild("Framework"):WaitForChild("Library"))
    local Network = GameLibrary.Network
    local numsho = require(game:GetService("ReplicatedStorage").Library.Functions.NumberShorten)
    -----------------------------------------------------------------
    ---info view---
    -- task.spawn(function()
    --     while true and task.wait(0.05) do
    --         pcall(function()
    --             for _, lootbag in pairs(Library.Things:FindFirstChild("Lootbags"):GetChildren()) do
    --                 if lootbag and not lootbag:GetAttribute("Collected") then
    --                     Library.Network.Fire("Collect Lootbag", lootbag.Name, game.Players.LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(math.random(-0.05, 0.05), math.random(-0.05, 0.05), math.random(-0.05, 0.05)))
    --                     wait(0.03)
    --                 end
    --             end
    --         end)
    local cmod = getsenv(game:GetService("Players").LocalPlayer.PlayerScripts.Scripts.Game.Lootbags)
        for i,v in pairs(game:GetService("Workspace")["__THINGS"].Lootbags:GetChildren()) do
            petNetwork.Fire("Collect Lootbag", v.Name, v.CFrame.p)
            task.wait(.1)
            v:Destroy()
        end 
        Workspace["__THINGS"].Lootbags.ChildAdded:connect(function(Lootbag)
        petNetwork.Fire("Collect Lootbag",Lootbag.Name, Lootbag.CFrame.p)
            task.wait(.1)
            Lootbag:Destroy()
        end)
    --     end
    -- end)
    -------info view------
    local function infoview(nike)
        for i2,v2 in pairs(game.CoreGui:GetDescendants()) do
                    if v2.Name == "Title" and v2.Text:match("Player Coins Info:") then
                        v2.Text = "Player Coins Info:"
                    end
                end
                if nike ~= "None" then
                local currencys = {}
                local modcu = require(game:GetService("ReplicatedStorage").Framework.Library)
                for i,v in pairs(modcu.Directory.Currency) do
                    table.insert(currencys, i)
                end
        
        
        local modsp = debug.getupvalues(require(game:GetService("ReplicatedStorage").Framework.Library).Save.Get)[2][game.Players[nike]].save
        
        
        
            for i2,v2 in pairs(game.CoreGui:GetDescendants()) do
                    if v2.Name == "Title" and v2.ClassName == "TextLabel" and v2.Text:match("Player Coins Info:") then
                        for i,v in pairs(modsp) do
                if i:match("Diamonds") or table.find(currencys, i) then
                    v2.Text = v2.Text.."\n"..i..": "..numsho(v)
                    
                end
                    end
                    end
                end
        local totalegg = 0
                        for i,v in pairs(modsp.EggsOpened) do
                totalegg = totalegg + tonumber(v)
                    end
            for i2,v2 in pairs(game.CoreGui:GetDescendants()) do
                    if v2.Name == "Title" and v2.ClassName == "TextLabel" and v2.Text:match("Player Coins Info:") then
                v2.Text = v2.Text.."\n".."Total Eggs Opened: "..numsho(totalegg)
                a = v2.Text
                end
            end
        
        end
        end

    ---stats tracker----
    

    Player = game.Players.LocalPlayer
    function DestroyStatTracker()
        local CoinTypes = {}
        for i,v in pairs(Player.PlayerGui.Main.Right:GetChildren()) do
            if v:IsA("Frame") and v.Name ~= "Rank" then
                table.insert(CoinTypes, v)
            end
        end
        for i,v in pairs(CoinTypes) do
            if Player.PlayerGui.Main.Right:FindFirstChild(v.Name.." Tracker") then
                Player.PlayerGui.Main.Right:FindFirstChild(v.Name.." Tracker"):Destroy()
            end
        end
    end
    function StatTracker()
        if not getgenv().config.stats then
            return DestroyStatTracker()
        end
        DestroyStatTracker()
        local LayoutOrdersList = {
            ["Diamonds"] = 999900,
            ["Halloween Candy"] = 999910,
            ["Gingerbread"] = 999920,
            ["Cartoon Coins"] = 999930,
            ["Rainbow Coins"] = 999940,
            ["Tech Coins"] = 999950,
            ["Fantasy Coins"] = 999960,
            ["Coins"] = 999970,
        }
        local CoinTypes = {}
        for i,v in pairs(Player.PlayerGui.Main.Right:GetChildren()) do
            if v:IsA("Frame") and v.Name ~= "Rank" then
                table.insert(CoinTypes, v)
            end
        end
    
        local ActiveTypes = {}
        for i,v in pairs(CoinTypes) do
            task.spawn(function()
                if not Player.PlayerGui.Main.Right:FindFirstChild(v.Name.." Tracker") then
                    v.LayoutOrder = LayoutOrdersList[v.Name]
                    local TrackerClone = v:Clone()
                    TrackerClone.Name = TrackerClone.Name.." Tracker"
                    TrackerClone.Parent = Player.PlayerGui.Main.Right
                    TrackerClone.Size = UDim2.new(0, 175, 0, 30)
                    TrackerClone.LayoutOrder = TrackerClone.LayoutOrder + 1
                    ActiveTypes[v.Name] = TrackerClone
                end
            end)
        end
        for i,v in pairs(CoinTypes) do
            task.spawn(function()
                local AmountOfCurrency = {}
                local Index = 1
                local OldTime = 0
                local CurrencyStartTick = tick()
                local CurrencyEndTick = tick()
                local SecondsToUpdate = 0.5
                while true and task.wait(.1) do
                    if not getgenv().config.stats then
                            DestroyStatTracker()
                        break
                    end
                    pcall(function()
                        local CurrencyPath = (IsHardcore and Library.Save.Get().HardcoreCurrency) or Library.Save.Get()
                        if OldTime >= SecondsToUpdate then
                            while OldTime >= SecondsToUpdate do OldTime = OldTime - SecondsToUpdate end
                            AmountOfCurrency[Index] = CurrencyPath[v.Name]
                            local CurrencyToChange = CurrencyPath[v.Name] - (AmountOfCurrency[Index - 120] or AmountOfCurrency[1])
                            Index = Index + 1
                            ActiveTypes[v.Name].Amount.Text = tostring(Library.Functions.Commas(CurrencyToChange).." in 60s")
                            ActiveTypes[v.Name].Amount_odometerGUIFX.Text = tostring(Library.Functions.Commas(CurrencyToChange).." in 60s")
                        end
                        CurrencyEndTick = tick()
                        OldTime = OldTime + (CurrencyEndTick - CurrencyStartTick)
                    end)
                end
            end)
        end
    end
StatTracker()
    --snipeweb--
    function Sendsnipe(url , Name, Rarity, Pg, lg, ssid,str)
        pcall(function()
            Webhook = url
            local msg = {
                
                ["username"] = "PSX W41K3R",
                ["avatar_url"] = "https://wallpapercave.com/wp/wp2383838.jpg",
                ["embeds"] = {
                    {
                        ["color"] = tonumber(tostring("0x" .. "0096FF")), --decimal
                        ["title"] = "Pet: ".."🌟 **" .. Rarity .. "** 🌟" .. Name,
                        
                        ["fields"] = {
                            {
                                ["name"] = "🌟 **Name** 🌟",
                                ["value"] = "***"..Name.."***",
                                ["inline"] = true
                            },
                            {
                                ["name"] = "🌈 **Rarity** 🌈",
                                ["value"] = "***"..Rarity.."***",
                                ["inline"] = false
                            },
                            {
                                ["name"] = "💥 **Strength** 💥",
                                ["value"] = "***"..str.."***",
                                ["inline"] = false
                            },
                            {
                                ["name"] = "💎 **Pet Cost** 💎",
                                ["value"] = "***"..tostring(Pg).."***",
                                ["inline"] = false
                            },
                            {
                                ["name"] = "💎 **Gems Left** 💎",
                                ["value"] = "***"..tostring(lg).."***",
                                ["inline"] = false
                            },
                        },
                        ["thumbnail"] = {
                            ["url"] = game:GetService("HttpService"):JSONDecode(game:HttpGet(("https://thumbnails.roblox.com/v1/assets?assetIds="..ssid.."&size=250x250&format=Png&isCircular=false"))).data[1].imageUrl
                        },
                        ["author"] = {},
                        ["footer"] = {
                            ["icon_url"] = "https://cdn.discordapp.com/icons/1031282233882988695/a_fb0135e681e40497471a794e0b59ea13.webp?size=96",
                            ["text"] = "Boot Sniper Webhook\nhttps://discord.gg/projectwd"
                      }
                    }
                }
            }
            request = http_request or request or HttpPost or syn.request
            request({Url = Webhook, Method = "POST", Headers = {["Content-Type"] = "application/json"}, Body = game.HttpService:JSONEncode(msg)})
        end)
    end


    ----tables----

    local masterylist = {
        "Coins",
        "safe/vault",
        "crate",
        "present",
        "chest",
        "diamond",
        "Egg",
        "Golden Egg"
    }


    function eggers()
        local eggtable = {}
        for i,v in pairs(game:GetService("ReplicatedStorage").__DIRECTORY.Eggs:GetChildren()) do
            if v.ClassName == "Folder" then
            for i2,v2 in pairs(v:GetChildren()) do
                if petmod.Directory.Eggs[v2.Name] and petmod.Directory.Eggs[v2.Name].hatchable == true then
                    table.insert(eggtable, v2.Name)
                end
            end
            end
        end
        table.sort(eggtable, function(a, b)
            return a:byte() < b:byte()
        end)
        return eggtable
    end

    function eggers1()
        local eggtable = {}
        for i,v in pairs(game:GetService("ReplicatedStorage").__DIRECTORY.Eggs:GetChildren()) do
            for i2,v2 in pairs(v:GetChildren()) do
                if not v2.Name:match("Golden") then
                    if petmod.Directory.Eggs[v2.Name].hatchable == true then
                        table.insert(eggtable, v2.Name)
                    end
                end
            end
        end
        table.sort(eggtable, function(a, b)
            return a:byte() < b:byte()
        end)
        return eggtable
    end

    getgenv().Chestli = {"Grand Heaven/Angel Chest","Volcano Magma Chest", "Ancient Island Enchanted Chest", "Haunted Island Haunted Chest", "Hell Island Hell Chest","Heaven Island Angel Chest","Heavens Gate Grand Heaven Chest", "Ice Tech Giant Tech Chest","Giant Steampunk Chest", "Giant Alien Chest"}
    chestsnamers = {"All", "Summer Volcano Chest"}
    for i,v in pairs(game:GetService("ReplicatedStorage").Assets.CoinAssets:GetChildren()) do
        if v.Name:match("Chest") and v.Name ~= "Giant Hacker Chest" and v:FindFirstChildOfClass("MeshPart") and v:FindFirstChildOfClass("MeshPart"):FindFirstChild("Particles") then
            table.insert(chestsnamers, v.Name)
        end
    end

    local area = {"None","VIP"}
    local arear = {"None", "VIP"}
    for i,v in pairs(petmod.Directory.Areas) do
        if not v.hidden then
            table.insert(area, i)
            table.insert(arear, i)
        end
    end
    
    table.sort(area, function(a, b)
        return a:byte() < b:byte()
    end)
    table.sort(arear, function(a, b)
        return a:byte() < b:byte()
    end)
    boardtable = {}
    for i,v in pairs(petmod.Directory.Hoverboards) do
        if not table.find(boardtable, i) then
            table.insert(boardtable, i)
        end
    end


    Methods = {"Multi Target", "Random","Nearest", "Lowest", "Highest", "Highest to Lowest", "Lowest to Highest"}

    local function plrs()
        plrtable = {}
        for i,v in pairs(game.Players:GetChildren()) do
            table.insert(plrtable, v.Name)
        end
        return plrtable
    end
    local function plrs2()
        plrtable = {"None"}
        for i,v in pairs(game.Players:GetChildren()) do
            table.insert(plrtable, v.Name)
        end
        return plrtable
    end
    local function getallpets()
        local fusepettab = {}
        for i,v in pairs(game:GetService("ReplicatedStorage").__DIRECTORY.Pets:GetDescendants()) do
            if v.ClassName == "ModuleScript" then
                table.insert(fusepettab, require(v).name)
            end
        end
        return fusepettab
    end
    local pow = {
        "None"
    }
    local modpo = require(game.ReplicatedStorage:WaitForChild("Framework"):WaitForChild("Library"))
    for i,v in pairs(modpo.Directory.Powers) do
        if i ~= "Best Friend" then
            for i2,v2 in pairs(v.tiers) do
                table.insert(pow, i..(" ")..i2)
            end
        end
    end


    task.spawn(function()
        while true and task.wait() do
            if getgenv().config.stworhop then
                for i,v  in pairs(getgenv().config.TWorlds) do
                    if v then
                        petmod.WorldCmds.Load(i)
                        if getgenv().config.stworhop then
                            task.wait(getgenv().config.hopwait)
                        else
                            break
                        end
                    end
                end
            end
        end
    end)


    -- ----Booth Sniper----
    -- local function checkpetnames(r)
    --     local petmod = require(game:GetService("ReplicatedStorage").Framework.Library)
    --     local damnpets = petmod.PetCmds.Get(r)
    --     if damnpets.id ~= nil and petmod.Directory.Pets[damnpets.id] ~= nil then
    --         return petmod.Directory.Pets[damnpets.id]
    --     elseif damnpets.id ~= nil and petmod.Directory.Pets[damnpets.id] ~=nil and petmod.Directory.Pets[damnpets.id].name == getgenv().config.snipepetid then
    --         return petmod.Directory.Pets[damnpets.id]
    --     else
    --         return ""
    --     end
    -- end
    -- local function checkrarity(a,c)
    --     local rare = {}
    --     for i,v in pairs(petmod.Directory.Pets) do
    --         if c == true then
    --             if v.thumbnail == a and v.name:match("Huge") or v.goldenThumbnail == a and v.name:match("Huge") or v.darkMatterThumbnail == a and v.name:match("Huge") then
    --                 rare[1] = v.rarity
    --                 rare[2] = v.name
    --             end
    --         elseif c == false then
    --             if v.thumbnail == a or v.goldenThumbnail == a or v.darkMatterThumbnail == a then
    --                 rare[1] = v.rarity
    --                 rare[2] = v.name
    --             end
    --         end
    --     end
    --     return rare
    -- end

    -- boothremname = "Get All Booths"
    -- boothpurname = "Purchase Trading Booth Pet"
    -- getgenv().boothlist = petNetwork.Invoke(boothremname);
    -- local function checkbooth(b)
    --     booths = getgenv().boothlist
    --     petboot = {}
    --     for i,v in pairs(getgenv().boothlist) do
    --         if v.Owner ~= game.Players.LocalPlayer.UserId then
    --             for i2,v2 in pairs(v) do
    --                 if i2 == "Listings" then
    --                     for i3,v3 in pairs(v2) do
    --                         if i3 == b then
    --                          petboot[1] = i
    --                          petboot[2] = v3.Price
    --                         end
    --                     end
    --                 end
    --             end
    --         end
    --     end
    --     return petboot
    -- end
    
    -- local modrarecheck = getsenv(game:GetService("Players").LocalPlayer.PlayerScripts.Scripts.GUIs["Booth Inventory"])

    -- task.spawn(function()
    --     while task.wait() do
    --         if getgenv().config.tbs then
    --             pcall(function()
    --                 if game.Workspace:FindFirstChild("__MAP") and game.Workspace:FindFirstChild("__MAP"):FindFirstChild("Interactive") and game.Workspace:FindFirstChild("__MAP"):FindFirstChild("Interactive"):FindFirstChild("Booths") then
    --                     getgenv().boothlist =  petNetwork.Invoke(boothremname)
    --                     for i,v in pairs(game:GetService("Workspace")["__MAP"].Interactive.Booths:GetChildren()) do
    --                         if v:FindFirstChild("Pets") then
    --                             for i2,v2 in pairs(v.Pets.SurfaceGui.PetScroll:GetChildren()) do
    --                                 if v2.Name ~= "PetHolder" and v2.ClassName == "Frame" and v2:FindFirstChildOfClass("TextButton") and v2:FindFirstChildOfClass("TextButton"):FindFirstChild("PetIcon") and v2:FindFirstChildOfClass("TextButton"):FindFirstChild("PetIcon").image ~= nil then
    --                                     if getgenv().config.tbs == false then
    --                                         break
    --                                     end
    --                                     if getgenv().config.ifrhhr and not modrarecheck.GetFullName(petmod.PetCmds.Get(v2.Name)):match("Huge Hell Rock") or not getgenv().config.ifrhhr then
    --                                         if getgenv().config.petworldtyp == "Any" or getgenv().config.petworldtyp == "Hard Core" and petmod.PetCmds.Get(v2.Name).hc ~= nil or getgenv().config.petworldtyp == "Normal" and petmod.PetCmds.Get(v2.Name).hc == nil then
    --                                             if getgenv().config.snipepetid ~= "" and checkpetnames(v2.Name) ~= "" and checkpetnames(v2.Name).name == getgenv().config.snipepetid or getgenv().config.snipepetid ~= "" and checkpetnames(v2.Name) ~= "" and tostring(checkpetnames(v2.Name).id) == getgenv().config.snipepetid or getgenv().config.snipepetid == "" then
    --                                                 peterparker = modrarecheck.GetFullName(petmod.PetCmds.Get(v2.Name))
    --                                                 if getgenv().config.snipepetrare ~= "Normal" and getgenv().config.snipepetrare ~= "Any" and peterparker:match(getgenv().config.snipepetrare) or getgenv().config.snipepetrare == "Any" or getgenv().config.snipepetrare == "Normal" and not peterparker:match("Golden") and not peterparker:match("Rainbow") and not peterparker:match("Dark Matter")  then
    --                                                     peticon = v2:FindFirstChildOfClass("TextButton").PetIcon.Image
    --                                                     if getgenv().config.snipetyp ~= "Huge" then
    --                                                         local rarche = checkrarity(peticon, false)
    --                                                         if getgenv().config.snipetyp ~= "Any" then
    --                                                             if #rarche > 0 and  rarche[1] == getgenv().config.snipetyp then
    --                                                                 local prcheck = checkbooth(v2.Name)
    --                                                                 if #prcheck ~= 0 and prcheck[2] <= getgenv().config.snipeprice then
    --                                                                     if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Interact.Position).magnitude > 15 then
    --                                                                         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Interact.CFrame+Vector3.new(0,5,0)
    --                                                                         wait(1)
    --                                                                     end
    --                                                                     if petNetwork.Invoke(boothpurname, prcheck[1], v2.Name) then
                                                                            
    --                                                                         task.spawn(function()
    --                                                                             Sendsnipe(getgenv().config.snipeweb ,rarche[2], rarche[1], numsho(petmod.Save.Get().Diamonds), numsho(prcheck[2]), string.split(peticon, "//")[2])
    --                                                                         end)
    --                                                                         wait(5)
    --                                                                     end
    --                                                                 end
    --                                                             end
    --                                                         elseif getgenv().config.snipetyp == "Any" then
    --                                                             if #rarche > 0  then
    --                                                                 local prcheck = checkbooth(v2.Name)
    --                                                                 if #prcheck ~= 0 and prcheck[2] <= getgenv().config.snipeprice then
    --                                                                     if petNetwork.Invoke(boothpurname, prcheck[1], v2.Name) then
    --                                                                         if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Interact.Position).magnitude > 15 then
    --                                                                             game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Interact.CFrame+Vector3.new(0,5,0)
    --                                                                             wait(1)
    --                                                                         end
    --                                                                         task.spawn(function()    
    --                                                                             Sendsnipe(getgenv().config.snipeweb ,rarche[2], rarche[1], numsho(petmod.Save.Get().Diamonds), numsho(prcheck[2]), string.split(peticon, "//")[2])
    --                                                                         end)
    --                                                                         wait(5)
    --                                                                     end
    --                                                                 end
    --                                                             end
    --                                                         end
    --                                                     elseif getgenv().config.snipetyp == "Huge" then
    --                                                         local rarche = checkrarity(peticon, true)
    --                                                         if #rarche > 0  then
    --                                                             local prcheck = checkbooth(v2.Name)
    --                                                             if #prcheck ~= 0 and prcheck[2] <= getgenv().config.snipeprice then
    --                                                                 if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Interact.Position).magnitude > 15 then
    --                                                                     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Interact.CFrame+Vector3.new(0,5,0)
    --                                                                     wait(1)
    --                                                                 end
    --                                                                 if petNetwork.Invoke(boothpurname, prcheck[1], v2.Name) then
    --                                                                     task.spawn(function()
    --                                                                         Sendsnipe(getgenv().config.snipeweb ,rarche[2], rarche[1], numsho(petmod.Save.Get().Diamonds), numsho(prcheck[2]), string.split(peticon, "//")[2])
    --                                                                     end)
    --                                                                     wait(5)
    --                                                                 end
    --                                                             end
    --                                                         end
    --                                                     end
    --                                                 end
    --                                             end
    --                                         end
    --                                     end
    --                                 end
    --                             end
    --                         end
    --                     end
    --                 end
    --             end)
    --         end
    --     end
    -- end)


    local PlaceID = game.PlaceId
    local AllIDs = {}
    local foundAnything = ""
    local actualHour = os.date("!*t").hour
    local Deleted = false
    local File = pcall(function()
        AllIDs = game:GetService('HttpService'):JSONDecode(readfile("NotSameServers.json"))
    end)
    if not File then
        table.insert(AllIDs, actualHour)
        writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
    end
    function TPReturner()
        local Site;
        if foundAnything == "" then
            Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
        else
            Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
        end
        local ID = ""
        if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
            foundAnything = Site.nextPageCursor
        end
        local num = 0;
        for i,v in pairs(Site.data) do
            local Possible = true
            ID = tostring(v.id)
            if v.playing and tonumber(v.maxPlayers) > tonumber(v.playing) and tonumber(v.playing) >= 1 then
                for _,Existing in pairs(AllIDs) do
                    if num ~= 0 then
                        if ID == tostring(Existing) then
                            Possible = false
                        end
                    else
                        if tonumber(actualHour) ~= tonumber(Existing) then
                            local delFile = pcall(function()
                                delfile("NotSameServers.json")
                                AllIDs = {}
                                table.insert(AllIDs, actualHour)
                            end)
                        end
                    end
                    num = num + 1
                end
                if Possible == true then
                    table.insert(AllIDs, ID)
                    pcall(function()
                        writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
                        game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                    end)
                    wait(3)
                end
            end
        end
    end

    function Teleport()
        while wait() do
            pcall(function()
                TPReturner()
                if foundAnything ~= "" then
                    TPReturner()
                end
            end)
        end
    end

    task.spawn(function()
        while task.wait() do
            if getgenv().config.serverhop then
                timerstart = tick()
                repeat task.wait()
                until (tick() - timerstart) > getgenv().config.servertime or not getgenv().config.serverhop
                if getgenv().config.serverhop then
                    Teleport()
                end
            end
        end
    end)

    local plr = game.Players.LocalPlayer
    game.Players.PlayerAdded:Connect(function(hit)
        if getgenv().config.akick then
            if hit:IsInGroup(5060810) then
                Teleport()
            end
        end
    end)

    function FarmCoin(CoinID, PetID)
        local damn = {[1] = PetID}
        
            petNetwork.Invoke("Join Coin", CoinID ,damn)
      
        
            petNetwork.Fire("Farm Coin", CoinID, PetID)
        
    end

    task.spawn(function()
        while  task.wait() do
            if getgenv().config.masteryfarm then
                local ListCoins = petNetwork.Invoke(coinremname)
                for i,v in pairs(ListCoins) do
                    if table.find(petmod.Save.Get().AreasUnlocked, v.a) then
                        if petmod.Save.Get().Mastery["Coin Piles"] ~= 980000 and v.n:match("Coins") and table.find(getgenv().config.selected, "Coins") then
                            for i2,v2 in pairs(GetMyPets()) do
                                FarmCoin(i, v2)
                            end
                            wait(.5)
                            if getgenv().config.masteryfarm == false then
                                break
                            end
                        end
                        if petmod.Save.Get().Mastery["VaultsAndSafes"] ~= 980000 and v.n:match("Safe") and table.find(getgenv().config.selected, "safe/vault") or petmod.Save.Get().Mastery["VaultsAndSafes"] ~= 980000 and v.n:match("Vault") and table.find(getgenv().config.selected, "safe/vault") then
                            for i2,v2 in pairs(GetMyPets()) do
                                FarmCoin(i, v2)
                            end
                            wait(.5)
                            if getgenv().config.masteryfarm == false then
                                break
                            end
                        end
                        if petmod.Save.Get().Mastery["Crates"] ~= 980000 and v.n:match("Crate") and table.find(getgenv().config.selected, "crate") then
                            for i2,v2 in pairs(GetMyPets()) do
                                FarmCoin(i, v2)
                            end
                            wait(.5)
                            if getgenv().config.masteryfarm == false then
                                break
                            end
                        end
                        if petmod.Save.Get().Mastery["Presents"] ~= 980000 and v.n:match("Present") and table.find(getgenv().config.selected, "present") then
                            for i2,v2 in pairs(GetMyPets()) do
                                FarmCoin(i, v2)
                            end
                            wait(.5)
                            if getgenv().config.masteryfarm == false then
                                break
                            end
                        end
                        if petmod.Save.Get().Mastery["Chests"] ~= 980000 and v.n:match("Chest") and table.find(getgenv().config.selected, "chest") then
                            for i2,v2 in pairs(GetMyPets()) do
                                FarmCoin(i, v2)
                            end
                            wait(.5)
                            if getgenv().config.masteryfarm == false then
                                break
                            end
                        end
                        if petmod.Save.Get().Mastery["Diamond Piles"] ~= 980000 and v.n:match("Diamonds") and table.find(getgenv().config.selected, "diamond") then
                            for i2,v2 in pairs(GetMyPets()) do
                                FarmCoin(i, v2)
                            end
                            wait(.5)
                            if getgenv().config.masteryfarm == false then
                                break
                            end
                        end
                    end
                end
            end
        end
    end)
    task.spawn(function()
        while task.wait() do
            if getgenv().config.masteryfarm then
                if petmod.Save.Get().Mastery["Eggs"] ~= 980000 and table.find(getgenv().config.selected, "Egg") then
                    if getgenv().config.myseggtyp == "Single" then
                        petNetwork.Invoke(eggremname, getgenv().config.mysopegg, false, false)
                    elseif getgenv().config.myseggtyp == "Triple" then
                        petNetwork.Invoke(eggremname, getgenv().config.mysopegg, true, false)
                    elseif getgenv().config.myseggtyp == "Octa" then
                        petNetwork.Invoke(eggremname, getgenv().config.mysopegg, false, true)
                    end
                end
                if petmod.Save.Get().Mastery["Golden Eggs"] ~= 980000 and table.find(getgenv().config.selected, "Golden Egg") then
                    if getgenv().config.myseggtyp == "Single" then
                        petNetwork.Invoke(eggremname, "Golden "..getgenv().config.mysopegg, false, false)
                    elseif getgenv().config.myseggtyp == "Triple" then
                        petNetwork.Invoke(eggremname, "Golden "..getgenv().config.mysopegg, true, false)
                    elseif getgenv().config.myseggtyp == "Octa" then
                        petNetwork.Invoke(eggremname, "Golden "..getgenv().config.mysopegg, false, true)
                    end
                end
            end
        end
    end)

    function eggersmys()
        local eggtable = {}
        for i,v in pairs(game:GetService("ReplicatedStorage").__DIRECTORY.Eggs:GetChildren()) do
            for i2,v2 in pairs(v:GetChildren()) do
                if not v2.Name:match("Golden") and petmod.Directory.Eggs[v2.Name].hatchable == true then
                    table.insert(eggtable, v2.Name)
                end
            end
        end
        table.sort(eggtable, function(a, b)
            return a:byte() < b:byte()
        end)
        return eggtable
    end

    spawn(function()
                while wait(10) do
                    if getgenv().config.coinhook then
                        if game.PlaceId == 6284583030 or game.PlaceId == 7722306047 or game.PlaceId == 10321372166 then
                        repeat wait() until game:GetService("Players")
                        repeat wait() until game:GetService("Players").LocalPlayer
                        repeat wait() until game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("Loading"):WaitForChild("Black").BackgroundTransparency == 1
                        repeat wait() until game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                
                        local Library = require(game:GetService("ReplicatedStorage").Framework.Library)
                        local IDToName = {}
                        local PettoRarity = {}
                        for i,v in pairs(Library.Directory.Pets) do
                            IDToName[i] = v.name
                            PettoRarity[i] = v.rarity
                        end
                        
                        function GetThumbnai()
                            curth = {}
                            for i,v in pairs(Library.Directory.Currency) do
                                if v.Visibility == 2 or i == "Diamonds" then                              
                                    if not table.find(curth, i) then
                                        table.insert(curth, i)
                                    end
                                end
                            end
                            local eeee = Library.Directory.Currency[curth[1]].Image
                            local eeee = eeee:gsub("rbxassetid%:%/%/", "")
                            local eeee = game:GetService("HttpService"):JSONDecode(game:HttpGet(("https://thumbnails.roblox.com/v1/assets?assetIds="..eeee.."&size=250x250&format=Png&isCircular=false"))).data[1].imageUrl
                            return eeee
                        end
                        function Sendcoin(Thumbnail, NewPowers)
                            local Webhook = getgenv().config.url2
                            local msg = {
                                
                                ["username"] = "PSX W41K3R",
                                ["avatar_url"] = "https://wallpapercave.com/wp/wp2383838.jpg",
                                ["content"] = "<@"..getgenv().config.DiscordId2..">".."\n WebHook Create By W41K3R#0363",
                                ["embeds"] = {
                                    {
                                        ["color"] = tonumber(tostring("0x036ffc")), --decimal
                                        ["title"] = "PSX Stats Hook",
                                        
                                        ["fields"] = {},
                                        ["thumbnail"] = {
                                            ["url"] = Thumbnail
                                        },
                                        ["author"] = {},
                                    }
                                }
                            }
                            for qq,bb in pairs(NewPowers) do
                                local bsd = string.split(bb," ")
                                if bsd[3] ~= nil then
                                local thingy = {
                                    ["name"] = bsd[1].." "..bsd[2],
                                    ["value"] = "***"..tostring(bsd[3]).."***",
                                    ["inline"] = true
                                }
                                table.insert(msg["embeds"][1]["fields"], thingy)
                                elseif bsd[3] == nil then
                                    local thingy = {
                                    ["thumbnail"] = Thumbnail,
                                    ["name"] = bsd[1],
                                    ["value"] = "***"..tostring(bsd[2]).."***",
                                    ["inline"] = true
                                }
                                table.insert(msg["embeds"][1]["fields"], thingy)
                                end
                            end
                            request = http_request or request or HttpPost or syn.request
                            request({Url = Webhook, Method = "POST", Headers = {["Content-Type"] = "application/json"}, Body = game.HttpService:JSONEncode(msg)})
                        end
                        function Sendcoinhook()
                            local Thumbnail = GetThumbnai()
                            local NewPowers = {}
                            local currencyser = {}
                            if game.PlaceId ~= 10321372166 then
                                for i,v in pairs(Library.Directory.Currency) do
                                    if v.Visibility == 2 or i == "Diamonds" then                                      
                                        if not table.find(currencyser, i) then
                                            table.insert(currencyser, i)
                                        end
                                    end
                                end
                            else
                                for i,v in pairs(petmod.Save.Get().HardcoreCurrency) do
                                    if not table.find(currencyser, i) then
                                        table.insert(currencyser, i)
                                    end
                                end
                            end
                            
                            if game.PlaceId ~= 10321372166 then
                                for i,v in pairs(Library.Save.Get()) do
                                    if table.find(currencyser, i) then
                                        local eeeeeeee = tostring(i.. " " ..numsho(v))
                                        table.insert(NewPowers, eeeeeeee)
                                    end
                                end
                            else
                                for i,v in pairs(Library.Save.Get().HardcoreCurrency) do
                                    if table.find(currencyser, i) then
                                        local eeeeeeee = tostring(i.. " " ..numsho(v))
                                        table.insert(NewPowers, eeeeeeee)
                                    end
                                end
                            end
                        Sendcoin(Thumbnail,NewPowers)
                    end
                    Sendcoinhook()
                end
            end
            end
        
    end)

    spawn(function()
        while task.wait() do
            if getgenv().config.coinhook1 then
                if game.PlaceId == 6284583030 or game.PlaceId == 7722306047 or game.PlaceId == 10321372166 then
                repeat wait() until game:GetService("Players")
                repeat wait() until game:GetService("Players").LocalPlayer
                repeat wait() until game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("Loading"):WaitForChild("Black").BackgroundTransparency == 1
                repeat wait() until game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
        
                local Library = require(game:GetService("ReplicatedStorage").Framework.Library)
                local IDToName = {}
                local PettoRarity = {}
                for i,v in pairs(Library.Directory.Pets) do
                    IDToName[i] = v.name
                    PettoRarity[i] = v.rarity
                end
                
                function GetThumbnai()
                    curth = {}
                    for i,v in pairs(Library.Directory.Currency) do
                        if v.Visibility == 2 or i == "Diamonds" then
                            if not table.find(curth, i) then
                                table.insert(curth, i)
                            end
                        end
                    end
                    local eeee = Library.Directory.Currency[curth[1]].Image
                    local eeee = eeee:gsub("rbxassetid%:%/%/", "")
                    local eeee = game:GetService("HttpService"):JSONDecode(game:HttpGet(("https://thumbnails.roblox.com/v1/assets?assetIds="..eeee.."&size=250x250&format=Png&isCircular=false"))).data[1].imageUrl
                    return eeee
                end
                function Sendcoin1(Thumbnail, NewPowers)
                    local Webhook = getgenv().config.url2
                    local msg = {
                        
                        ["username"] = "PSX W41K3R",
                        ["avatar_url"] = "https://wallpapercave.com/wp/wp2383838.jpg",
                        ["content"] = "<@"..getgenv().config.DiscordId2..">".."\n WebHook Create By W41K3R#0363",
                        ["embeds"] = {
                            {
                                ["color"] = tonumber(tostring("0x036ffc")), --decimal
                                ["title"] = "PSX Per Min Stats Hook",
                                
                                ["fields"] = {},
                                ["thumbnail"] = {
                                    ["url"] = Thumbnail
                                },
                                ["author"] = {},
                            }
                        }
                    }
                    for qq,bb in pairs(NewPowers) do
                        local bsd = string.split(bb," ")
                        if bsd[3] ~= nil then
                        local thingy = {
                            ["name"] = bsd[1].." "..bsd[2],
                            ["value"] = "***"..tostring(bsd[3]).."***",
                            ["inline"] = true
                        }
                        table.insert(msg["embeds"][1]["fields"], thingy)
                        elseif bsd[3] == nil then
                            local thingy = {
                            ["thumbnail"] = Thumbnail,
                            ["name"] = bsd[1],
                            ["value"] = "***"..tostring(bsd[2]).."***",
                            ["inline"] = true
                        }
                        table.insert(msg["embeds"][1]["fields"], thingy)
                        end
                    end
                    request = http_request or request or HttpPost or syn.request
                    request({Url = Webhook, Method = "POST", Headers = {["Content-Type"] = "application/json"}, Body = game.HttpService:JSONEncode(msg)})
                end
                function Sendcoinhook1()
                    local Thumbnail = GetThumbnai()
                    local NewPowers = {}
                    local currencyser = {}
                    if game.PlaceId ~= 10321372166 then
                        for i,v in pairs(Library.Directory.Currency) do
                            if v.Visibility == 2 or i == "Diamonds" then
                                if not table.find(currencyser, i) then
                                    table.insert(currencyser, i)
                                end
                            end
                        end
                    else
                        for i,v in pairs(petmod.Save.Get().HardcoreCurrency) do
                            if v.Visibility == 2 then
                                if not table.find(currencyser, i) then
                                    table.insert(currencyser, i)
                                end
                            end
                        end
                    end
                    local eeeeeeee = {}
                    
                    if game.PlaceId ~= 10321372166 then
                        for i,v in pairs(Library.Save.Get()) do
                            if table.find(currencyser, i) then
                                eeeeeeee[i] = v
                            end
                        end
                    else
                        for i,v in pairs(Library.Save.Get().HardcoreCurrency) do
                            if table.find(currencyser, i) then
                                eeeeeeee[i] = v
                            end
                        end
                    end
                    oldtime = os.time()
                    repeat task.wait()
                    until (os.time() - oldtime) >= 60 or getgenv().config.coinhook1 == false
                    if game.PlaceId ~= 10321372166 then
                        for i,v in pairs(Library.Save.Get()) do
                            if table.find(currencyser, i) then
                                value = v
                                eeeeeeee[i] = v - eeeeeeee[i]
                                table.insert(NewPowers, i.." "..numsho(eeeeeeee[i]))
                            end
                        end
                    else
                        for i,v in pairs(Library.Save.Get().HardcoreCurrency) do
                            if table.find(currencyser, i) then
                                value = v
                                eeeeeeee[i] = v - eeeeeeee[i]
                                table.insert(NewPowers, i.." "..numsho(eeeeeeee[i]))
                            end
                        end
                    end
                Sendcoin1(Thumbnail,NewPowers)
            end
            Sendcoinhook1()
        end
    end
    end

end)

pcall(function()
    for i,v in pairs(getgenv().confunc) do
        v:Disconnect()
    end
end)




getgenv().confunc = {}

spawn(function()   
    VirtualUser = game:GetService("VirtualUser")
    table.insert(getgenv().confunc, game:GetService("Players").LocalPlayer.Idled:connect(function()
        VirtualUser:CaptureController()
        VirtualUser:ClickButton2(Vector2.new())
    end))
end)

    if game.PlaceId == 6284583030 or game.PlaceId == 7722306047 or game.PlaceId == 10321372166 then
        repeat wait() until game:GetService("Players")
        repeat wait() until game:GetService("Players").LocalPlayer
        repeat wait() until game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("Loading"):WaitForChild("Black").BackgroundTransparency == 1
        repeat wait() until game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart")

        local Library = require(game:GetService("ReplicatedStorage").Framework.Library)
        local IDToName = {}
        local PettoRarity = {}
        for i,v in pairs(Library.Directory.Pets) do
        IDToName[i] = v.name
        PettoRarity[i] = v.rarity
        end
        
        function GetThumbnail(id, type)
        local nailname = (type == 'Normal' or type == 'Rainbow' and 'thumbnail') or (type == 'Gold' and 'goldenThumbnail') or (type == 'Dark Matter' and 'darkMatterThumbnail')
        local eeee = Library.Directory.Pets[tostring(id)][tostring(nailname)] or Library.Directory.Pets[tostring(id)]["thumbnail"] 
        local eeee = eeee:gsub("rbxassetid%:%/%/", "")
        local eeee = game:GetService("HttpService"):JSONDecode(game:HttpGet(("https://thumbnails.roblox.com/v1/assets?assetIds="..eeee.."&size=250x250&format=Png&isCircular=false"))).data[1].imageUrl
        return eeee
        end
        
        function Send(Name, Nickname, Strength, Rarity, Thumbnail, Formation, Color, NewPowers, nth)

            local Webhook = getgenv().config.url
                local stren = string.split(tostring(Strength),",")
                local relstr = ""
                for i,v in pairs(stren) do
                    relstr = relstr..tostring(v)
                end
                local val = tostring(numsho(tonumber(relstr)))
            local msg = {
                
                ["username"] = "PSX W41K3R",
                ["avatar_url"] = "https://wallpapercave.com/wp/wp2383838.jpg",
                ["content"] = "<@"..getgenv().config.DiscordId..">".."\n WebHook Create By W41K3R#0363",
                ["embeds"] = {
                    {
                        ["color"] = tonumber(tostring("0x" .. Color)), --decimal
                        ["title"] = "Pet: ".."*" .. Rarity .. "* " .. Name,
                        
                        ["fields"] = {
                            {
                                ["name"] = "*Nickname*",
                                ["value"] = "***"..Nickname.."***",
                                ["inline"] = true
                            },
                            {
                                ["name"] = "*Type*",
                                ["value"] = "***"..Formation.."***",
                                ["inline"] = true
                            },
                            {
                                ["name"] = "*Strength*",
                                ["value"] = "***"..val.."***",
                                ["inline"] = true
                            },
                        },
                        ["thumbnail"] = {
                            ["url"] = Thumbnail
                        },
                        ["author"] = {},
                    }
                }
            }
            for qq,bb in pairs(NewPowers) do
                local thingy = {
                    ["name"] = "***Enchant*** ".."***"..tostring(qq).."***",
                    ["value"] = "***"..bb.."***",
                    ["inline"] = true
                }
                table.insert(msg["embeds"][1]["fields"], thingy)
            end
            request = http_request or request or HttpPost or syn.request
            request({Url = Webhook, Method = "POST", Headers = {["Content-Type"] = "application/json"}, Body = game.HttpService:JSONEncode(msg)})
        end
        
        function SendWebhook(uid)
            for i,v in pairs(Library.Save.Get().Pets) do
                if v.uid == uid and getgenv().config.TrackList[PettoRarity[v.id]] then
                    local ThingyThingyTempTypeThing = (v.g and 'Gold') or (v.r and 'Rainbow') or (v.dm and 'Dark Matter') or "Normal"
                    local Formation = (v.g and ':sun_with_face: Gold') or (v.r and ':tada: Rainbow') or (v.dm and ':night_with_stars: Dark Matter') or ':smiling_face_with_tear: Normal'
                    local Thumbnail = GetThumbnail(v.id, ThingyThingyTempTypeThing)
                    local Name = IDToName[v.id]
                    local Nickname = v.nk
                    local nth = v.idt  
                    
                    local Strength = v.s
                    local Powers = v.powers or {}
                    local Rarity = PettoRarity[v.id]
                    local Color = (Rarity == 'Mythical' and "310382") or (Rarity == 'Legendary' and "ff0303") or (Rarity == 'Epic' and "08c94c") or (Rarity == 'Rare' and "d0d408") or (Rarity == 'Exclusive' and "1ec700") or (Rarity == 'Basic' and "e34d12")
                    local NewPowers = {}
                    for a,b in pairs(Powers) do
                        local eeeeeeee = tostring(b[1] .. " " .. b[2])
                        table.insert(NewPowers, eeeeeeee)
                    end
                    Send(Name, Nickname, Library.Functions.Commas(Strength), Rarity, tostring(Thumbnail), Formation, Color, NewPowers, nth)
                    end
            end
        end
        spawn(function()
            table.insert(getgenv().confunc, petNetwork.Fired("Open Egg"):Connect(function(egg, openTable)
                wait(1)
                for i,v in pairs(openTable) do
                    if getgenv().config.hatchhook then
                        SendWebhook(v.uid)
                    end
                end
            end))
        end)
    end

    spawn(function()
        table.insert(getgenv().confunc, petNetwork.Fired("Open Egg"):Connect(function(egg, openTable)
            if getgenv().config.indexcol.dpet then
                save = petmod.Save.Get()
    
                local deleteTable = {}
                for i,v in ipairs(openTable) do
                    if (petmod.Directory.Pets[v.id]["rarity"] == "Mythical") then
                        continue
                    end
                    if (petmod.Directory.Pets[v.id]["rarity"] == "Exclusive") then
                        continue
                    end
                    matched = false
                    if not (getgenv().config.indexcol.igrdarkmatter) then
                        if petmod.Functions.SearchArray(save.Collection, v.id .. "-" .. 4) then
                            matched = true
                        end
                    end
    
                    if not (getgenv().config.indexcol.igrrainbow) then
                        if petmod.Functions.SearchArray(save.Collection, v.id .. "-" .. 3) then
                            matched = true
                        end
                    end
    
                    if not (getgenv().config.indexcol.igrgold) then
                        if petmod.Functions.SearchArray(save.Collection, v.id .. "-" .. 2) then
                            matched = true
                        end
                    end
    
                    if not (getgenv().config.indexcol.igrnormal) then
                        if petmod.Functions.SearchArray(save.Collection, v.id .. "-" .. 1) then
                            matched = true
                        end
                    end
    
                    if (matched == true) then
                        table.insert(deleteTable, v.uid)
                    end
                end
                petNetwork.Invoke(delremname, deleteTable)
            else
                return
            end
        end))
    end)
    
    spawn(function()
        while task.wait() do
            if getgenv().config.indexcol.opegg then
                collectablePets = petmod.Shared.GetAllCollectablePets()
    
                for i,v in pairs(collectablePets) do
                    if not petmod.Shared.GetPetEgg(v.petId) then
                        collectablePets[i] = nil
                    end
                end
    
                for i,v in pairs(collectablePets) do
                    if getgenv().config.indexcol.opegg then
                        local isRainbow = v["isRainbow"]
                        local isDarkMatter = v["isDarkMatter"]
                        if v["isGolden"] then
                            attribute = 2
                        elseif isRainbow then
                            attribute = 3
                        elseif isDarkMatter then
                            attribute = 4
                        else
                            attribute = 1
                        end;
    
                        if (getgenv().config.indexcol.igrdarkmatter) then
                            if attribute == 4 then
                                continue
                            end
                        end
    
                        if (getgenv().config.indexcol.igrrainbow) then
                            if attribute == 3 then
                                continue
                            end
                        end
    
                        if (getgenv().config.indexcol.igrgold) then
                            if attribute == 2 then
                                continue
                            end
                        end
    
                        if (getgenv().config.indexcol.igrnormal) then
                            if attribute == 1 then
                                continue
                            end
                        end
    
                        if getgenv().config.indexcol.igrmyth then
                            if (petmod.Directory.Pets[v.petId]["rarity"] == "Mythical") then
                                continue
                            end
                        end
                        
                    
                        
                        ownPet = petmod.Functions.SearchArray((petmod.Save.Get().Collection), v.petId .. "-" .. attribute)
                        if petmod.Shared.GetPetEgg(v.petId) ~= nil then
                            inEgg = petmod.Shared.GetPetEgg(v.petId)
                        end
                        if inEgg ~= nil then
                            if not ownPet then
                                if petmod.Directory.Eggs[inEgg].hatchable then
                                    collectworld =  game.PlaceId ~= 10321372166 and petmod.Save.Get().World or game.PlaceId == 10321372166 and petmod.Save.Get().Hardcore.World
                                    areacheck1 = game.PlaceId ~= 10321372166 and petmod.Save.Get().AreasUnlocked or game.PlaceId == 10321372166 and petmod.Save.Get().Hardcore.AreasUnlocked
                                    if table.find(areacheck1, petmod.Directory.Eggs[inEgg].area) and petmod.Directory.Areas[petmod.Directory.Eggs[inEgg].area].world ~= collectworld then
                                        
                                        petmod.WorldCmds.Load(petmod.Directory.Areas[petmod.Directory.Eggs[inEgg].area].world)
                                        repeat task.wait()
                                        until not petmod.Variables.Teleporting
                                        
                                        local maps = game:GetService("Workspace"):WaitForChild("__MAP")
                                        eggs = maps:WaitForChild("Eggs")
                                        for i4,v4 in pairs(eggs:GetChildren()) do
                                            for i5,v5 in pairs(v4.Eggs:GetChildren()) do
                                                if v5:GetAttribute("ID") == inEgg then
                                                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v5.PriceHUD.Position).magnitude > 94 then
                                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v5.PriceHUD.CFrame+Vector3.new(0,.5,0)
                                                    end
                                                end
                                            end
                                        end
                                        wait(.5)
                                        goldData = (petmod.Directory.Eggs[("Golden "..inEgg)])
                                        eggData = petmod.Directory.Eggs[inEgg]
                                        if goldData and  not (attribute == 1) then
                                            if eggData.hatchable and (petmod.Save.Get()[(eggData.currency)] >= goldData.cost) then
                                                if getgenv().config.indexcol.hatchtype == "Single" then
                                                    petNetwork.Invoke("Buy Egg", ("Golden "..inEgg), false, false)
                                                elseif getgenv().config.indexcol.hatchtype == "Triple" then
                                                    petNetwork.Invoke("Buy Egg", ("Golden "..inEgg), true, false)
                                                elseif getgenv().config.indexcol.hatchtype == "Octa" then
                                                    petNetwork.Invoke("Buy Egg", ("Golden "..inEgg), false, true)
                                                end
                                                wait(0.8)
                                            end
                                        else
                                            if eggData.hatchable and (petmod.Save.Get()[eggData.currency] >= eggData.cost) then
                                                if getgenv().config.indexcol.hatchtype == "Single" then
                                                    petNetwork.Invoke("Buy Egg", inEgg, false, false)
                                                elseif getgenv().config.indexcol.hatchtype == "Triple" then
                                                    petNetwork.Invoke("Buy Egg", inEgg, true, false)
                                                elseif getgenv().config.indexcol.hatchtype == "Octa" then
                                                    petNetwork.Invoke("Buy Egg", inEgg, false, true)
                                                end
                                            end
                                        end
                                        wait(2)
                                    end
                                end
                            end
                        end
                    end
                end
            wait()
            end
        end
        return
    end)

    -- task.spawn(function()
    --     while true and task.wait(1) do
    --         local areacheck = game.PlaceId ~= 10321372166 and petmod.Save.Get().AreasUnlocked or game.PlaceId == 10321372166 and petmod.Save.Get().Hardcore.AreasUnlocked
    --         for i,v in pairs(petmod.WorldCmds.GetAllGates()) do
    --             if v.Name ~= "Cozy Cove" and v.Name ~= "Doodle Barn" then
    --                 if table.find(areacheck, v.Name) then
    --                     v:Destroy()
    --                 end
    --             end
    --         end
    --     end
    -- end)

    ---Beta Fusing---
    getgenv().fusingomg = false
    
    task.spawn(function()
        while task.wait() do
            if getgenv().config.hatchegg and not getgenv().fusingomg and not getgenv().convertingomg then
                local maps = game:GetService("Workspace"):WaitForChild("__MAP")
                eggs = maps:WaitForChild("Eggs")
                for i,v in pairs(eggs:GetChildren()) do
                    for i,v in pairs(v.Eggs:GetChildren()) do
                        if v:GetAttribute("ID") == getgenv().config.selhatchegg then
                            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.PriceHUD.Position).magnitude > 94 then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.PriceHUD.CFrame+Vector3.new(0,.5,0)
                            end
                        end
                    end
                end
                if getgenv().config.selhatchegg ~= "None" then
                    omgeggname = getgenv().config.selhatchegg
                    canhatchlim = petmod.Save.Get()[petmod.Directory.Eggs[getgenv().config.selhatchegg].currency]/petmod.Directory.Eggs[getgenv().config.selhatchegg].cost
                    if getgenv().config.selgoldenegg and getgenv().config.selhatchegg ~= "None" then
                        omgeggname = "Golden "..getgenv().config.selhatchegg
                    end
                    if canhatchlim >= 8 and petmod.Save.Get()["OwnsOctupleEggs"] == true and (petmod.Save.Get().MaxSlots-#petmod.Save.Get().Pets) >= 8 then
                        petNetwork.Invoke(eggremname, omgeggname, false, true)
                    elseif canhatchlim >= 3 and table.find(petmod.Save.Get().Gamepasses, 18674307) and (petmod.Save.Get().MaxSlots-#petmod.Save.Get().Pets) >= 3 then
                        petNetwork.Invoke(eggremname, omgeggname, true, false)
                    elseif canhatchlim >=1 and (petmod.Save.Get().MaxSlots-#petmod.Save.Get().Pets) >= 1 then
                        petNetwork.Invoke(eggremname, omgeggname, false, false)
                    end
                end
            end
        end
    end)


    local function fusegroups()
        allgroups = {}
        listpets = {}
        local petmod = require(game.ReplicatedStorage.Framework.Library)
        for i,v in pairs(petmod.Save.Get().Pets) do
            if getgenv().config.selfusehc and v.hc or not getgenv().config.selfusehc and not v.hc then
                if getgenv().config.igrselsh and not v.sh or not getgenv().config.igrselsh then
                    if getgenv().config.selfusetyp == "Golden" and v.g or getgenv().config.selfusetyp == "Rainbow" and v.r or getgenv().config.selfusetyp == "DarkMatter" and v.dm or getgenv().config.selfusetyp == "Normal" and not v.g and not v.r and not v.dm then
                        if petmod.Directory.Pets[petmod.PetCmds.Get(v.uid).id] and string.lower(petmod.Directory.Pets[petmod.PetCmds.Get(v.uid).id].name) == string.lower(getgenv().config.selfusepet) then 
                            table.insert(listpets ,v.uid)
                            if #listpets == getgenv().config.selfuseamt then
                                table.insert(allgroups, listpets)
                                listpets = {}
                            end
                        end
                    end
                end
            end
        end
        return allgroups
    end
    task.spawn(function()
        while task.wait() do
            if getgenv().config.stfuse then
                if #petmod.Save.Get().Pets == petmod.Save.Get().MaxSlots then
                    if #fusegroups() >= 1 then
                        getgenv().fusingomg = true
                        local playerworld = game.PlaceId ~= 10321372166 and petmod.Save.Get().World or game.PlaceId == 10321372166 and petmod.Save.Get().Hardcore.World
                        repeat task.wait()
                        until not petmod.Variables.Teleporting
                        if playerworld ~= "Spawn" and not petmod.Variables.Teleporting then
                            petmod.WorldCmds.Load("Spawn")
                            repeat task.wait()
                            until not petmod.Variables.Teleporting
                        end
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-721.04895, 96.41008, 108.994896, 0.794231474, 5.32091593e-10, -0.607615292, -1.16827081e-09, 1, -6.51375787e-10, 0.607615292, 1.22720234e-09, 0.794231474)
                        repeat task.wait()
                            if getgenv().config.selfuseamt ~= 0 and getgenv().config.selfusepet ~= "None" and getgenv().config.selfusetyp ~= "None" then
                                for i,v in pairs(fusegroups()) do
                                    petNetwork.Invoke(furemname, v)
                                end
                            end
                        until #fusegroups() < 1 or not getgenv().config.stfuse
                        getgenv().fusingomg = false
                        petmod.WorldCmds.Load(playerworld)
                    end
                end
            end
        end
    end)



    --beta convert--
    local function goldengroup()
        petids = {}
        for i,v in pairs(petmod.Save.Get().Pets) do
            if petmod.Directory.Pets[v.id].rarity ~= "Exclusive" and petmod.Directory.Pets[v.id].rarity ~= "Event" then
                if getgenv().config.smpets == "Golden" and not v.g and not v.r and not v.dm and not petmod.PetCmds.Get(v.uid).l or getgenv().config.smpets == "Golden/Rainbow" and not v.g and not v.r and not v.dm and not petmod.PetCmds.Get(v.uid).l then
                    if getgenv().config.hcconv and v.hc or not getgenv().config.hcconv and not v.hc then
                        if getgenv().config.igrconvsh and not v.sh or not getgenv().config.igrconvsh then
                            if getgenv().config.impets and petmod.Directory.Pets[v.id].rarity ~= "Mythical" or not getgenv().config.impets then
                                if petids[v.id] == nil then
                                    petids[v.id] = {}
                                end
                                if not table.find(petids[v.id], v.uid) then
                                    table.insert(petids[v.id], v.uid)
                                end
                            end
                        end
                    end
                end
            end
        end
        local convertgolpets = {}
        for i,v in pairs(petids) do
            if #v >= getgenv().config.golamtpets then
                listpets = {}
                for i,v in pairs(v) do
                    table.insert(listpets, v)
                    if #listpets == getgenv().config.golamtpets then
                        table.insert(convertgolpets, listpets)
                        listpets = {}
                    end
                end
            end
        end
        return convertgolpets
    end

    local function rainbowgroup()
        petids = {}
        for i,v in pairs(petmod.Save.Get().Pets) do
            if petmod.Directory.Pets[v.id].rarity ~= "Exclusive" and petmod.Directory.Pets[v.id].rarity ~= "Event" then
                if getgenv().config.smpets == "Rainbow" and v.g and not v.r and not v.dm and not petmod.PetCmds.Get(v.uid).l or getgenv().config.smpets == "Golden/Rainbow" and v.g and not v.r and not v.dm and not petmod.PetCmds.Get(v.uid).l then
                    if getgenv().config.hcconv and v.hc or not getgenv().config.hcconv and not v.hc then
                        if getgenv().config.igrconvsh and not v.sh or not getgenv().config.igrconvsh then
                            if getgenv().config.impets and petmod.Directory.Pets[v.id].rarity ~= "Mythical" or not getgenv().config.impets then
                                if petids[v.id] == nil then
                                    petids[v.id] = {}
                                end
                                if not table.find(petids[v.id], v.uid) then
                                    table.insert(petids[v.id], v.uid)
                                end
                            end
                        end
                    end
                end
            end
        end
        local convertgolpets = {}
        for i,v in pairs(petids) do
            if #v >= getgenv().config.golamtpets then
                listpets = {}
                for i,v in pairs(v) do
                    table.insert(listpets, v)
                    if #listpets == getgenv().config.golamtpets then
                        table.insert(convertgolpets, listpets)
                        listpets = {}
                    end
                end
            end
        end
        return convertgolpets
    end
    
    task.spawn(function()
        while true and task.wait() do
            if getgenv().config.stconvpets then
                if #petmod.Save.Get().Pets == petmod.Save.Get().MaxSlots then
                    local playerworld = ""
                    if #goldengroup() >= 1 and  getgenv().config.stconvpets then
                        getgenv().convertingomg = true
                        playerworld = game.PlaceId ~= 10321372166 and petmod.Save.Get().World or game.PlaceId == 10321372166 and petmod.Save.Get().Hardcore.World
                        repeat task.wait()
                        until not petmod.Variables.Teleporting
                        if playerworld ~= "Spawn" and not petmod.Variables.Teleporting then
                            petmod.WorldCmds.Load("Spawn")
                            repeat task.wait()
                            until not petmod.Variables.Teleporting
                        end
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(129.270142, 97.5967712, 354.432281, 0.842462659, 9.29088007e-09, 0.538754702, -6.20652196e-09, 1, -7.53982565e-09, -0.538754702, 3.00822856e-09, 0.842462659)
                        repeat task.wait()
                            if getgenv().config.golamtpets ~= 0 then
                                for i,v in pairs(goldengroup()) do
                                    if not getgenv().config.stconvpets then
                                        break
                                    end
                                    petNetwork.Invoke(golremname, v)
                                    task.wait(2)
                                end
                            end
                        until #goldengroup() < 1 or not getgenv().config.stconvpets
                    end
                    if #rainbowgroup() >= 1 and getgenv().config.stconvpets then
                        getgenv().convertingomg = true
                        if playerworld == "" then
                            playerworld = game.PlaceId ~= 10321372166 and petmod.Save.Get().World or game.PlaceId == 10321372166 and petmod.Save.Get().Hardcore.World
                        end
                        repeat task.wait()
                        until not petmod.Variables.Teleporting
                        if playerworld ~= "Spawn" and not petmod.Variables.Teleporting then
                            petmod.WorldCmds.Load("Spawn")
                            repeat task.wait()
                            until not petmod.Variables.Teleporting
                        end
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1105.20056, 99.5967712, 111.739006, 0.265399009, 4.91309535e-08, -0.964138687, 5.94685048e-08, 1, 6.73283154e-08, 0.964138687, -7.52047526e-08, 0.265399009)
                        repeat task.wait()
                            if getgenv().config.golamtpets ~= 0 then
                                for i,v in pairs(rainbowgroup()) do
                                    if not getgenv().config.stconvpets then
                                        break
                                    end
                                    petNetwork.Invoke(rbremname, v)
                                    task.wait(2)
                                end
                            end
                        until #rainbowgroup() < 1 or not getgenv().config.stconvpets
                    end

                    if playerworld ~= "" then
                        getgenv().convertingomg = false
                        petmod.WorldCmds.Load(playerworld)
                    end
                end
            end
        end
    end)

    -- task.spawn(function()
    --     while true and task.wait(1) do
    --         for i,v in pairs(petmod.WorldCmds.GetAllGates()) do
    --             if v.Name ~= "Cozy Cove" and v.Name ~= "Doodle Barn" then
    --                 if table.find(petmod.Save.Get().AreasUnlocked, v.Name) then
    --                     v:Destroy()
    --                 end
    --             end
    --         end
    --     end
    -- end)

    --Daycare--
    local localpetlist = petmod.Directory.Pets
    local function returnpetslists()
        local mypetslist = {}
        if game.PlaceId == 10321372166 then
            for i,v in pairs(petmod.Save.Get().Pets) do
                local rarity = localpetlist[petmod.PetCmds.Get(v.uid).id].rarity
                if not petmod.PetCmds.Get(v.uid).l and rarity ~= "Event" and rarity ~= "Exclusive" and v.hc then
                    table.insert(mypetslist,v)
                end
            end
            table.sort(mypetslist, 
            function(a,b)
                return a.s>b.s
            end)
            anotherlist = {}
            for i,v in pairs(petmod.Save.Get().Pets) do
                local rarity = localpetlist[petmod.PetCmds.Get(v.uid).id].rarity
                if not petmod.PetCmds.Get(v.uid).l and rarity ~= "Event" and rarity ~= "Exclusive" and not v.hc then
                    table.insert(anotherlist,v)
                end
            end
            table.sort(anotherlist, 
            function(a,b)
                return a.s>b.s
            end)
            for i,v in pairs(anotherlist) do
                table.insert(mypetslist, v)
            end
        else
            for i,v in pairs(petmod.Save.Get().Pets) do
                local rarity = localpetlist[petmod.PetCmds.Get(v.uid).id].rarity
                if not petmod.PetCmds.Get(v.uid).l and rarity ~= "Event" and rarity ~= "Exclusive" and not v.hc then
                    table.insert(mypetslist,v)
                end
            end
            table.sort(mypetslist, 
            function(a,b)
                return a.s>b.s
            end)
            anotherlist = {}
            for i,v in pairs(petmod.Save.Get().Pets) do
                local rarity = localpetlist[petmod.PetCmds.Get(v.uid).id].rarity
                if not petmod.PetCmds.Get(v.uid).l and rarity ~= "Event" and rarity ~= "Exclusive" and v.hc then
                    table.insert(anotherlist,v)
                end
            end
            table.sort(anotherlist, 
            function(a,b)
                return a.s>b.s
            end)
            for i,v in pairs(anotherlist) do
                table.insert(mypetslist, v)
            end
        end
        return mypetslist
    end
    local function canclaimcare()
        local carequeue = game.PlaceId == 10321372166 and petmod.Save.Get().DaycareHardcoreQueue or game.PlaceId ~= 10321372166 and petmod.Save.Get().DaycareQueue
        for i,v in pairs(carequeue) do
            if petmod.Shared.DaycareComputeRemainingTime(petmod.Save.Get(), v) <= 0 then
                return true
            end
        end
        return false
    end
    task.spawn(function()
        while task.wait() do
            local carequeue = game.PlaceId == 10321372166 and petmod.Save.Get().DaycareHardcoreQueue or game.PlaceId ~= 10321372166 and petmod.Save.Get().DaycareQueue
            local idkvariable = canclaimcare()
            if getgenv().config.claimcare and idkvariable then
                local playerworld = game.PlaceId ~= 10321372166 and petmod.Save.Get().World or game.PlaceId == 10321372166 and petmod.Save.Get().Hardcore.World
                local oldcf = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                if playerworld ~= "Spawn" then
                    petmod.WorldCmds.Load("Spawn")
                    repeat task.wait()
                    until not petmod.Variables.Teleporting
                end
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(41.5185585, 99.8286057, 36.7093468, -0.164607778, 3.06414516e-09, 0.986359119, 2.28373978e-08, 1, 7.04680647e-10, -0.986359119, 2.26418706e-08, -0.164607778)
                wait(1)
                carequeue = game.PlaceId == 10321372166 and petmod.Save.Get().DaycareHardcoreQueue or game.PlaceId ~= 10321372166 and petmod.Save.Get().DaycareQueue
                petNetwork.Invoke("Daycare: Claim", nil)
                wait(3)
                petmod.WorldCmds.Load(playerworld)
                repeat task.wait()
                until not petmod.Variables.Teleporting
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldcf
                wait(.5) 
            end
            if getgenv().config.carepet and (petmod.Shared.DaycareComputeSlotsForTier(petmod.Save.Get().DaycareTier) - #carequeue) ~= 0 then
                local playerworld = game.PlaceId ~= 10321372166 and petmod.Save.Get().World or game.PlaceId == 10321372166 and petmod.Save.Get().Hardcore.World
                local oldcf = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                if playerworld ~= "Spawn" then
                    petmod.WorldCmds.Load("Spawn")
                    repeat task.wait()
                    until not petmod.Variables.Teleporting
                end
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(41.5185585, 99.8286057, 36.7093468, -0.164607778, 3.06414516e-09, 0.986359119, 2.28373978e-08, 1, 7.04680647e-10, -0.986359119, 2.26418706e-08, -0.164607778)
                wait(1)
                carepettable  = {}
                local pettotalininv  = returnpetslists()
                if #pettotalininv >= petmod.Shared.DaycareComputeSlotsForTier(petmod.Save.Get().DaycareTier) - #carequeue then
                    for i = 1, petmod.Shared.DaycareComputeSlotsForTier(petmod.Save.Get().DaycareTier) - #carequeue do
                        table.insert(carepettable, pettotalininv[i].uid)
                    end
                end
                petNetwork.Invoke("Daycare: Enroll", carepettable)
                wait(1)
                petNetwork.Invoke("Equip Best Pets")
                petmod.WorldCmds.Load(playerworld)
                repeat task.wait()
                until not petmod.Variables.Teleporting
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldcf
                wait(.5)
            end
        end
    end)


    
    local function GetHumanoidRootPart()
        return game.Players.LocalPlayer.Character.HumanoidRootPart
    end
    local Library = require(game.ReplicatedStorage.Framework.Library)
    function TeleportToArea(Area)
        if Library.WorldCmds.Get() ~= Library.Directory.Areas[Area].world then
            Library.WorldCmds.Load(Library.Directory.Areas[Area].world)
            repeat task.wait() until not petmod.Variables.Teleporting
            local distance = (GetHumanoidRootPart().CFrame.Position - game:GetService("Workspace")["__MAP"].Teleports[tostring(Area)].CFrame.Position).Magnitude 
            if distance >= 50 then
                GetHumanoidRootPart().CFrame = game:GetService("Workspace")["__MAP"].Teleports[tostring(Area)].CFrame
            end
        else
            task.wait()
            local distance = (GetHumanoidRootPart().CFrame.Position - game:GetService("Workspace")["__MAP"].Teleports[tostring(Area)].CFrame.Position).Magnitude 
            if distance >= 50 then
                GetHumanoidRootPart().CFrame = game:GetService("Workspace")["__MAP"].Teleports[tostring(Area)].CFrame
            end
        end
    end
    ---Event
    ---Event
    task.spawn(function()
        while task.wait() do
            if getgenv().config.tpsniper and getgenv().config.selectedfruits ~= "" then
                local petmod = require(game.ReplicatedStorage.Framework.Library)
                function GetMyPets()
                        returntable = {}
                        equippets = game.PlaceId == 10321372166 and petmod.Save.Get().HardcorePetsEquipped or game.PlaceId ~= 10321372166 and petmod.Save.Get().PetsEquipped
                        for i,v in pairs(equippets) do
                            table.insert(returntable, i)
                        end
                        return returntable
                    end
                local function checkcoins1(area)
                    local cointable  = {}
                    local ListCoins = petNetwork.Invoke("Get Coins")
                    for i,v in pairs(ListCoins) do
                        if getgenv().config.selectedfruits == "Lucky Block" and v.n:match("Lucky") and v.a == area or getgenv().config.selectedfruits == "Clover" and v.a == area and v.n:match("Clover") or getgenv().config.selectedfruits == "Pinata" and v.n:match("Pinata") and v.a == area  or getgenv().config.selectedfruits == "Easter" and v.n:match("Easter") and v.a == area  or getgenv().config.selectedfruits == "Fruits" and v.n:match("Apple") and v.a == area  or getgenv().config.selectedfruits == "Fruits" and v.n:match("Banana") and v.a == area  or getgenv().config.selectedfruits == "Fruits" and v.n:match("Pear") and v.a == area  or getgenv().config.selectedfruits == "Fruits" and v.n:match("Orange") and getgenv().config.selectedfruits == "Fruits" and v.a == area  or v.n:match("Pineapple") and v.a == area  or getgenv().config.selectedfruits == "Fruits" and v.n:match("Rainbow Fruit") and v.a == area  then
                            table.insert(cointable, i)
                        end
                    end
                    return cointable
                end

                
                local function checkcoins()
                    local cointable  = {}
                    local ListCoins = petNetwork.Invoke("Get Coins")
                    for i,v in pairs(ListCoins) do
                        if getgenv().config.selectedfruits == "Lucky Block" and v.n:match("Lucky") or getgenv().config.selectedfruits == "Clover" and v.n:match("Clover") or getgenv().config.selectedfruits == "Pinata"  and v.n:match("Pinata") or getgenv().config.selectedfruits == "Easter" and v.n:match("Easter")  or getgenv().config.selectedfruits == "Fruits" and v.n:match("Apple")  or getgenv().config.selectedfruits == "Fruits" and v.n:match("Banana")  or getgenv().config.selectedfruits == "Fruits" and v.n:match("Pear")  or getgenv().config.selectedfruits == "Fruits" and v.n:match("Orange") and getgenv().config.selectedfruits == "Fruits"  or v.n:match("Pineapple")  or getgenv().config.selectedfruits == "Fruits" and v.n:match("Rainbow Fruit")  then
                            table.insert(cointable, i)
                        end
                    end
                    return cointable
                end

                local function checkcoinsarea()
                    local cointable  = {}
                    local ListCoins = petNetwork.Invoke("Get Coins")
                    for i,v in pairs(ListCoins) do
                        if getgenv().config.selectedfruits == "Lucky Block" and v.n:match("Lucky") or getgenv().config.selectedfruits == "Clover" and v.n:match("Clover") or getgenv().config.selectedfruits == "Pinata"  and v.n:match("Pinata") or getgenv().config.selectedfruits == "Easter" and v.n:match("Easter")  or getgenv().config.selectedfruits == "Fruits" and v.n:match("Apple")  or getgenv().config.selectedfruits == "Fruits" and v.n:match("Banana")  or getgenv().config.selectedfruits == "Fruits" and v.n:match("Pear")  or getgenv().config.selectedfruits == "Fruits" and v.n:match("Orange") and getgenv().config.selectedfruits == "Fruits"  or v.n:match("Pineapple")  or getgenv().config.selectedfruits == "Fruits" and v.n:match("Rainbow Fruit")  then
                            if not table.find(cointable, v.a) then
                                table.insert(cointable, v.a)
                            end
                        end
                    end
                    return cointable
                end
                
                local areacheck = game.PlaceId ~= 10321372166 and petmod.Save.Get().AreasUnlocked or game.PlaceId == 10321372166 and petmod.Save.Get().Hardcore.AreasUnlocked
                for i,v in pairs(getgenv().config.TWorlds) do
                    if v then
                        if not getgenv().config.tpsniper then
                            break
                        end
                        petmod.WorldCmds.Load(i)
                        repeat task.wait()
                            local playerworld = game.PlaceId ~= 10321372166 and petmod.Save.Get().World or game.PlaceId == 10321372166 and petmod.Save.Get().Hardcore.World
                            for i2,v2 in pairs(checkcoinsarea()) do
                            
                                if petmod.Directory.Areas[v2].world == i and table.find(areacheck, v2) then
                                    if not getgenv().config.tpsniper then
                                        break
                                    end
                                    TeleportToArea(v2)
                                    repeat task.wait()
                                    until not petmod.Variables.Teleporting
                                    local notpettab = GetMyPets()
                                    if not getgenv().config.sahopfarm then
                                        for i3,v3 in pairs(checkcoins1(v2)) do
                                            if not getgenv().config.tpsniper then
                                                break
                                            end
                                            task.spawn(function()
                                                petNetwork.Invoke("Join Coin", v3, notpettab)
                                            end)
                                            task.spawn(function()
                                                petNetwork.Fire("Farm Coin", v3, notpettab[i3%#notpettab+1])
                                            end)
                                        end
                                        task.wait(getgenv().config.lfspeed)
                                    elseif getgenv().config.sahopfarm then
                                        repeat task.wait()
                                            for i3,v3 in pairs(checkcoins1(v2)) do
                                                if not getgenv().config.tpsniper then
                                                    break
                                                end
                                                task.spawn(function()
                                                    petNetwork.Invoke("Join Coin", v3, notpettab)
                                                end)
                                                task.spawn(function()
                                                    petNetwork.Fire("Farm Coin", v3, notpettab[i3%#notpettab+1])
                                                end)
                                            end
                                            task.wait(getgenv().config.lfspeed)
                                        until #checkcoins1(v2) == 0 or not getgenv().config.sahopfarm or not getgenv().config.tpsniper
                                    end
                                end
                            end
                            
                        until #checkcoins() == 0 or not getgenv().config.tpsniper
                
                    end
                end
            end
        end
    end)
    
    -----Comet Sniper-----
    -- function FarmCoin(CoinID, PetID)
    --     local damn = {[1] = PetID}
    --     task.spawn(function()
    --         petNetwork.Invoke("Join Coin", CoinID ,damn)
    --     end)
    --     task.spawn(function()
    --         petNetwork.Fire("Farm Coin", CoinID, PetID)
    --     end)
    -- end
    -- task.spawn(function()
    --     while true and wait(1) do
    --         if getgenv().config.cometsnipe then
    --             local c = petNetwork.Invoke("Comets: Get Data");
    --             for i,v in pairs(c) do
    --                 urlol = "https://discord.com/api/webhooks/1090198431521308672/SwegdsDJBULi1VUVpmz2gtIDClEjzy6lNxUkl-inDawjsyyyudXiteD5TaN8TRVZmDOV"
    --                 local comet = getsenv(game:GetService("Players").LocalPlayer.PlayerScripts.Scripts.Game.Comets)
    --                 local data = {
    --                     ["content"] = "Comet Notifier ☄️",
    --                     ["username"] = "PSX W41K3R",
    --                     ["avatar_url"] = "https://wallpapercave.com/wp/wp2383838.jpg",
    --                     ["embeds"] = {
    --                     {
    --                     ["fields"] = {
    --                                         {
    --                                             ["name"] = "🌟 Area = ".."```"..v.AreaId.."```",
    --                                             ['value'] = "",
    --                                             ["inline"] = true
    --                                         },
    --                                         {
    --                                             ["name"] = "☄️Type = ".."```"..v.Type.."```",
    --                                             ['value'] = "",
    --                                             ["inline"] = false
    --                                         },
    --                                         {
    --                                             ["name"] = "🤾 Players = ".."```"..#game.Players:GetChildren().."/12".."```",
    --                                             ['value'] = "",
    --                                             ["inline"] = false
    --                                         },
    --                                         {
    --                                             ["name"] = "Join Server Script",
    --                                             ["value"] = "```lua\ngame:GetService('TeleportService'):TeleportToPlaceInstance("..game.PlaceId..",".."'"..game.JobId.."'"..", game.Players.LocalPlayer)```",
    --                                             ["inline"] = false
    --                                         }
    --                                 }
    --                     }
    --                 }
    --                 }
    --                 local newdata = game:GetService("HttpService"):JSONEncode(data)
    --                 local headers = {
    --                 ["content-type"] = "application/json"
    --                 }
    --                 request = http_request or request or HttpPost or syn.request or http.request
    --                 local abcdef = {Url = urlol, Body = newdata, Method = "POST", Headers = headers}
    --                 request(abcdef)
    --                 print("Comet Found...")
    --                 local playerworld = game.PlaceId ~= 10321372166 and petmod.Save.Get().World or game.PlaceId == 10321372166 and petmod.Save.Get().Hardcore.World
    --                 print("Teleporting to Comet...")
    --                 TeleportToArea(v.AreaId)
    --                 repeat task.wait()
    --                 until not petmod.Variables.Teleporting
                    
    --                 print("Breaking Comet...")
    --                 repeat task.wait()
    --                     for i2,v2 in pairs(GetMyPets()) do
    --                         FarmCoin(v.CoinId, v2)
    --                     end
    --                 until petNetwork.Invoke(coinremname)[v.CoinId] == nil or not getgenv().config.cometsnipe
    --                 if getgenv().config.cometsnipe then
    --                     print("Finished Breaking Comet...")
    --                 else
    --                     print("Farm Cancelled...")
    --                     break
    --                 end
    --                 print("Checking Comet...")
    --                 wait(3)
    --             end

    --             ----double check----
    --             local d = petNetwork.Invoke("Comets: Get Data");
    --             for i,v in pairs(d) do
    --                 urlol = "https://discord.com/api/webhooks/1090198431521308672/SwegdsDJBULi1VUVpmz2gtIDClEjzy6lNxUkl-inDawjsyyyudXiteD5TaN8TRVZmDOV"
    --                 local comet = getsenv(game:GetService("Players").LocalPlayer.PlayerScripts.Scripts.Game.Comets)
    --                 local data = {
    --                     ["content"] = "Comet Notifier ☄️",
    --                     ["username"] = "PSX W41K3R",
    --                     ["avatar_url"] = "https://wallpapercave.com/wp/wp2383838.jpg",
    --                     ["embeds"] = {
    --                     {
    --                     ["fields"] = {
    --                                         {
    --                                             ["name"] = "🌟 Area = ".."```"..v.AreaId.."```",
    --                                             ['value'] = "",
    --                                             ["inline"] = true
    --                                         },
    --                                         {
    --                                             ["name"] = "☄️Type = ".."```"..v.Type.."```",
    --                                             ['value'] = "",
    --                                             ["inline"] = false
    --                                         },
    --                                         {
    --                                             ["name"] = "🤾 Players = ".."```"..#game.Players:GetChildren().."/12".."```",
    --                                             ['value'] = "",
    --                                             ["inline"] = false
    --                                         },
    --                                         {
    --                                             ["name"] = "Join Server Script",
    --                                             ["value"] = "```lua\ngame:GetService('TeleportService'):TeleportToPlaceInstance("..game.PlaceId..",".."'"..game.JobId.."'"..", game.Players.LocalPlayer)```",
    --                                             ["inline"] = false
    --                                         }
    --                                 }
    --                     }
    --                 }
    --                 }
    --                 local newdata = game:GetService("HttpService"):JSONEncode(data)
    --                 local headers = {
    --                 ["content-type"] = "application/json"
    --                 }
    --                 request = http_request or request or HttpPost or syn.request or http.request
    --                 local abcdef = {Url = urlol, Body = newdata, Method = "POST", Headers = headers}
    --                 request(abcdef)
    --                 print("Comet Found...")
    --                 local playerworld = game.PlaceId ~= 10321372166 and petmod.Save.Get().World or game.PlaceId == 10321372166 and petmod.Save.Get().Hardcore.World
    --                 print("Teleporting to Comet...")
    --                 TeleportToArea(v.AreaId)
    --                 repeat task.wait()
    --                 until not petmod.Variables.Teleporting
                    
    --                 print("Breaking Comet...")
    --                 repeat task.wait()
    --                     for i2,v2 in pairs(GetMyPets()) do
    --                         FarmCoin(v.CoinId, v2)
    --                     end
    --                 until petNetwork.Invoke(coinremname)[v.CoinId] == nil or not getgenv().config.cometsnipe
    --                 if getgenv().config.cometsnipe then
    --                     print("Finished Breaking Comet...")
    --                 else
    --                     print("Farm Cancelled...")
    --                     break
    --                 end
    --                 print("Checking Comet...")
    --                 wait(3)
    --             end
    --             if petNetwork.Invoke("Comets: Get Data").AreaId == nil then
    --                 print("Comet Not Found...")
    --                 if getgenv().config.comethop and getgenv().config.cometsnipe then
                       
    --                     print("Switching Server...")
    --                     -- local servers = {}
    --                     -- for _, server in pairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")).data) do
    --                     -- if type(server) == "table" and server.playing ~= nil and tonumber(server.maxPlayers) > tonumber(server.playing)  and server.id ~= game.JobId then
    --                     --         table.insert(servers, server.id)
    --                     --     end
    --                     -- end
    --                     -- if #servers > 0 then
    --                     --     game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, servers[math.random(1, #servers)])
    --                     -- else
    --                     --     print("Couldn't find a server.")
    --                     -- end
    --                     Teleport()
    --                 end
    --             end
    --         end
    --     end
    -- end)
    ---library
    local finity = loadstring(game:HttpGet("https://raw.githubusercontent.com/Muhammad6196/roblox/main/finity.lua"))()
    local FinityWindow = finity.new(true, "Project WD Pet Simulator X 🐕 (Press Right Shift to hide ui)", false)
    FinityWindow.ChangeToggleKey(Enum.KeyCode.LeftShift)
    local credits = FinityWindow:Category("😎 Credits")
    local creditsector = credits:Sector("😎 Credits")
    local autfar = FinityWindow:Category("⛏️ AutoFarms")
    local pettab = FinityWindow:Category("🐕 Pet")
    local boothtab = FinityWindow:Category("🎯 Booth")
    local collectiontab = FinityWindow:Category("😎 Collection")
    local collectionsector = collectiontab:Sector("😎 Collection")
    local contab = FinityWindow:Category("♻️Converter")
    local masterytab = FinityWindow:Category("😎 Mastery")
    local deltab = FinityWindow:Category("🗑️Deleters")
    local playtab = FinityWindow:Category("🧍‍♂️Player Stuffs")
    local webtab = FinityWindow:Category("🕸️Webhook")
    local guitab = FinityWindow:Category("📺Guis")
    local mistab = FinityWindow:Category("🐛Misc")
    local betafar = FinityWindow:Category("⛏️ New")


    creditsector:Cheat("Label", "Developer/Owner: W41K3R#0363", function()end)

    creditsector:Cheat("Label", "Discord Server: Project WD", function()end)

    creditsector:Cheat("Label", "Join: https://discord.gg/u7JNWQcgsU", function()end)

    creditsector:Cheat("Button", "Copy Discord Link", function()
        setclipboard("https://discord.gg/u7JNWQcgsU")
    end)


    local autsec = autfar:Sector("AutoFarms")
    local autsec1 = autfar:Sector("Farm Misc")

    local petsec = pettab:Sector("Open Eggs")
    local petsec1 = pettab:Sector("Auto Enchant")
    local petsec2 = pettab:Sector("Egg Misc")

    local concard = contab:Sector("Gold/Rainbow")
    local concard1 = contab:Sector("Darkmatter")
    local concard2 = contab:Sector("Fuser")

    local masterysector = masterytab:Sector("😎 Mastery")

    local boothcard = boothtab:Sector("Booth Sniper")
    local boothcard1 = boothtab:Sector("Rarities")

    local delcard = deltab:Sector("Instant Delete")
    local delcard1 = deltab:Sector("Hatch Deleter")

    local pcard = playtab:Sector("Player Stuffs")
    --local pcard2 =playtab:Sector("Merchant")

    local guicard = guitab:Sector("GUIS")

    local webcard = webtab:Sector("Hatch webhook")
    local webcard1 = webtab:Sector("Stats webhook")

    local micard = mistab:Sector("Misc")

    local betasec = betafar:Sector("New Stuffs")

    local betasec1 = betafar:Sector("More New Stuffs")



    ----------Button and shit-----------
    autsec:Cheat("Label", "Discord Link: https://discord.gg/u7JNWQcgsU")
    autsec:Cheat("Label", "Note: Use Weak pets for super farm")
    autsec:Cheat("Checkbox", "⛏️ Super Farm(Kick)", function(state)
        getgenv().config.sFarm = state
    end, {enabled = getgenv().config.sFarm})
    autsec:Cheat("Textbox", "🚄 Super Speed Control", function(Value)
        getgenv().config.sfspeed = tonumber(Value)
    end, {{placeholder = tostring(getgenv().config.sfspeed)}})
    autsec:Cheat("Checkbox", "⛏️ Normal Farm", function(state)
        getgenv().config.Farm = state
    end, {enabled = getgenv().config.Farm})
    autsec:Cheat("Checkbox", "🍀 Random Sniper (Snipe Event)", function(state)
        getgenv().config.luckyfarm = state
    end, {enabled = getgenv().config.luckyfarm})
    autsec:Cheat("Dropdown", "Select Mode", function(Option)
        getgenv().config.Method = Option
    end, {options = Methods, default = getgenv().config.Method})
    autsec:Cheat("Dropdown", "Select Area", function(Option)
        getgenv().config.Area = Option
    end, {options = area, default = getgenv().config.Area})

    autsec:Cheat("Checkbox", "Hidden Platform", function(state)
        getgenv().config.hidpart = state
        if getgenv().config.hidpart == false then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame+Vector3.new(0,34,0)
        end
    end, {enabled = getgenv().config.hidpart})
    -- autsec:Cheat("Dropdown", "Select Area (Optional)", function(Option)
    --     getgenv().config.Area2 = Option
    -- end, {options = area, default = getgenv().config.Area2})
    autsec:Cheat("Checkbox", "⛏️ Chest Farm", function(state)
        getgenv().config.cFarm = state
    end, {enabled = getgenv().config.cFarm})
    autsec:Cheat("Dropdown", "Select Chest", function(Option)
        getgenv().config.ChestName = Option
    end, {options = chestsnamers, default = getgenv().config.ChestName})
    autsec:Cheat("Checkbox", "⛏️ Hacker Portal Farm", function(state)
        getgenv().config.hFarm = state
    end, {enabled = getgenv().config.hFarm})
    autsec:Cheat("Checkbox", "💎 Diamond Sniper", function(state)
        getgenv().config.dFarm = state
    end, {enabled = getgenv().config.dFarm})


    -------------Easter------------------
    

    autsec:Cheat("Checkbox", "🍀 Hop Selected Sniper", function(state)
        getgenv().config.tpsniper = state
    end, {enabled = getgenv().config.tpsniper})

    thingslist = {"Lucky Block" , "Clover", "Pinata", "Easter", "Fruits"}
    autsec:Cheat("Dropdown", "🍀 Select To Snipe", function(Option)
        getgenv().config.selectedfruits = Option
    end, {options = thingslist, default = getgenv().config.selectedfruits})

    autsec:Cheat("Checkbox", "🍀 Single Area", function(state)
        getgenv().config.sahopfarm = state
    end, {enabled = getgenv().config.sahopfarm})


    autsec:Cheat("Textbox", "🚄 Seleted Farm Speed", function(Value)
        getgenv().config.lfspeed = tonumber(Value)
    end, {{placeholder = tostring(getgenv().config.lfspeed)}})
    

    autsec:Cheat("Checkbox", "🗺️ Spawn World", function(state)
        getgenv().config.TWorlds["Spawn"] = state
    end, {enabled = getgenv().config.TWorlds["Spawn"]})
    autsec:Cheat("Checkbox", "🗺️ Fantasy World", function(state)
        getgenv().config.TWorlds["Fantasy"] = state
    end, {enabled = getgenv().config.TWorlds["Fantasy"]})
    autsec:Cheat("Checkbox", "🗺️ Tech World", function(state)
        getgenv().config.TWorlds["Tech"] = state
    end, {enabled = getgenv().config.TWorlds["Tech"]})
    autsec:Cheat("Checkbox", "🗺️ Axolotl Ocean World", function(state)
        getgenv().config.TWorlds["Axolotl Ocean"] = state
    end, {enabled = getgenv().config.TWorlds["Axolotl Ocean"]})

    autsec:Cheat("Checkbox", "🗺️ Pixel World", function(state)
        getgenv().config.TWorlds["Pixel"] = state
    end, {enabled = getgenv().config.TWorlds["Pixel"]})

    autsec:Cheat("Checkbox", "🗺️ Cat World", function(state)
        getgenv().config.TWorlds["Cat"] = state
    end, {enabled = getgenv().config.TWorlds["Cat"]})
    autsec:Cheat("Checkbox", "🗺️ Doodle World", function(state)
        getgenv().config.TWorlds["Doodle"] = state
    end, {enabled = getgenv().config.TWorlds["Doodle"]})
    autsec:Cheat("Checkbox", "🗺️ Kawaii World", function(state)
        getgenv().config.TWorlds["Kawaii"] = state
    end, {enabled = getgenv().config.TWorlds["Kawaii"]})
    autsec:Cheat("Checkbox", "🗺️ Dog World", function(state)
        getgenv().config.TWorlds["Dog"] = state
    end, {enabled = getgenv().config.TWorlds["Dog"]})

    ----------------------------
    autsec1:Cheat("Checkbox", "🔮 Collect Yeet Orbs", function(state)
        getgenv().config.yeetorb = state
    end, {enabled = getgenv().config.yeetorb})
    
    autsec1:Cheat("Checkbox", "💰 3x Coins Boost", function(state)
        getgenv().config.cb = state
    end, {enabled = getgenv().config.cb})
    autsec1:Cheat("Checkbox", "💰 3x Damage Boost", function(state)
        getgenv().config.cd = state
    end, {enabled = getgenv().config.cd})
    autsec1:Cheat("Checkbox", "💰 3x Server Coins Boost", function(state)
        getgenv().config.scb = state
    end, {enabled = getgenv().config.scb})
    autsec1:Cheat("Checkbox", "💰 3x Server Damage Boost", function(state)
        getgenv().config.scd = state
    end, {enabled = getgenv().config.scd})
    autsec1:Cheat("Checkbox", "💰 Instant Collect", function(state)
        getgenv().config.ic = state
    end, {enabled = getgenv().config.ic})
    autsec1:Cheat("Checkbox", "💰 Collect Gifts", function(state)
        getgenv().config.cg = state
    end, {enabled = getgenv().config.cg})
    autsec1:Cheat("Checkbox", "🧿 No Lag", function(state)
        getgenv().config.nl = state
    end, {enabled = getgenv().config.nl})
    autsec1:Cheat("Checkbox", "🧿 Anti Staff", function(state)
        getgenv().config.akick = state
    end, {enabled = getgenv().config.akick})
    --[[autsec1:Cheat("Checkbox", "🧿 Anti Bank Invite", function(state)
        getgenv().config.antiinvite = state
    end, {enabled = getgenv().config.antiinvite})]]
    autsec1:Cheat("Button", "🧿 No Lag+", function(state)
        if game:GetService("Workspace"):FindFirstChild("__DEBRIS") then
            game:GetService("Workspace")["__DEBRIS"]:Destroy()
        end
        local modcu = require(game:GetService("ReplicatedStorage").Framework.Library)
        for i,v in pairs(modcu.Directory.Currency) do
            v.tinyImage = "1234"
        end
        for i,v in pairs(game:GetService("ReplicatedStorage").Assets.Billboards.Orb:GetChildren()) do
            v.Visible = false
        end
    end)

    -- petsec:Cheat("Label", "Easter Event")
    -- getgenv().hunt = false
    -- autsec1:Cheat("Button", "🐰 Collect Easter Eggs", function(state)
    --     if not getgenv().hunt then
    --         getgenv().hunt = true
    --         local worlds = {
    --             "Spawn",
    --             "Fantasy",
    --             "Tech",
    --             "Void",
    --             "Axolotl Ocean",
    --             "Pixel",
    --             "Cat",
    --             "Limbo",
    --             "Doodle",
    --             "Kawaii"
                
    --         }
    --         petmod = require(game.ReplicatedStorage.Framework.Library)
    --         for i,v in pairs(getgenv().config.THWorlds) do
    --             if v == true then
    --                 petmod.WorldCmds.Load(i)
    --                 repeat task.wait() until not petmod.Variables.Teleporting
    --                 for i2,v2 in pairs(game:GetService("Workspace")["__MAP"].EasterEggs:GetChildren()) do
    --                     if v2:FindFirstChild("Egg") and v2:GetAttribute("Enabled") == true then
    --                         petNetwork.Invoke("Easter Egg Hunt: Claim", v2.Name, (v2:GetAttribute("TextureIDX")))
    --                     end
    --                 end
    --             end
    --         end
    --         getgenv().hunt = false
    --     end
    -- end)


    -- autsec1:Cheat("Checkbox", "🗺️ Spawn World", function(state)
    --     getgenv().config.THWorlds["Spawn"] = state
    -- end, {enabled = getgenv().config.THWorlds["Spawn"]})
    -- autsec1:Cheat("Checkbox", "🗺️ Fantasy World", function(state)
    --     getgenv().config.THWorlds["Fantasy"] = state
    -- end, {enabled = getgenv().config.THWorlds["Fantasy"]})
    -- autsec1:Cheat("Checkbox", "🗺️ Tech World", function(state)
    --     getgenv().config.THWorlds["Tech"] = state
    -- end, {enabled = getgenv().config.THWorlds["Tech"]})
    -- autsec1:Cheat("Checkbox", "🗺️ Void", function(state)
    --     getgenv().config.THWorlds["Void"] = state
    -- end, {enabled = getgenv().config.THWorlds["Void"]})
    -- autsec1:Cheat("Checkbox", "🗺️ Axolotl Ocean World", function(state)
    --     getgenv().config.THWorlds["Axolotl Ocean"] = state
    -- end, {enabled = getgenv().config.THWorlds["Axolotl Ocean"]})

    -- autsec1:Cheat("Checkbox", "🗺️ Pixel World", function(state)
    --     getgenv().config.THWorlds["Pixel"] = state
    -- end, {enabled = getgenv().config.THWorlds["Pixel"]})

    -- autsec1:Cheat("Checkbox", "🗺️ Cat World", function(state)
    --     getgenv().config.THWorlds["Cat"] = state
    -- end, {enabled = getgenv().config.THWorlds["Cat"]})

    -- autsec1:Cheat("Checkbox", "🗺️ Limbo", function(state)
    --     getgenv().config.THWorlds["Limbo"] = state
    -- end, {enabled = getgenv().config.THWorlds["Limbo"]})

    -- autsec1:Cheat("Checkbox", "🗺️ Doodle World", function(state)
    --     getgenv().config.THWorlds["Doodle"] = state
    -- end, {enabled = getgenv().config.THWorlds["Doodle"]})

    -- autsec1:Cheat("Checkbox", "🗺️ Kawaii World", function(state)
    --     getgenv().config.THWorlds["Kawaii"] = state
    -- end, {enabled = getgenv().config.THWorlds["Kawaii"]})


    -------------------------------
    
    -- autsec1:Cheat("Checkbox", "🧿 Comet Sniper", function(state)
    --     getgenv().config.cometsnipe = state
    -- end, {enabled = getgenv().config.cometsnipe})

    -- autsec1:Cheat("Checkbox", "🧿 Server hop", function(state)
    --     getgenv().config.comethop = state
    -- end, {enabled = getgenv().config.comethop})


    petsec:Cheat("Label", "Can Afford 0 Eggs".."\n".."Opened 0 Eggs")
    petsec:Cheat("Dropdown", "Select Egg", function(Option)
        getgenv().config.opegg = Option
        if game.PlaceId == 10321372166 then
            if petmod.Save.Get().HardcoreCurrency[petmod.Directory.Eggs[Option].currency] ~= nil then
            money = numsho(petmod.Save.Get().HardcoreCurrency[petmod.Directory.Eggs[Option].currency]/petmod.Directory.Eggs[Option].cost)
            else
                money = numsho(petmod.Save.Get()[petmod.Directory.Eggs[Option].currency]/petmod.Directory.Eggs[Option].cost)
            end
        else
            money = numsho(petmod.Save.Get()[petmod.Directory.Eggs[Option].currency]/petmod.Directory.Eggs[Option].cost)
        end
        if petmod.Save.Get().EggsOpened[Option] then
            eggamy = numsho(petmod.Save.Get().EggsOpened[Option])
        else
            eggamy = "0"
        end
        for i,v in pairs(game.CoreGui:GetDescendants()) do
            if v.Name == "Title" and v.Parent.Name ~= "Slideshow"  and v.Text:match("Can Afford") then
                v.Text = "Can Afford "..tostring(money).." Eggs".."\n".."Opened "..eggamy.." Eggs"
            end
        end
    end,{options = eggers(), default = getgenv().config.opegg})
    petsec:Cheat("Checkbox", "🥚 Auto Hatch Egg", function(state)
        getgenv().config.oe = state
    end, {enabled = getgenv().config.oe})

    petsec:Cheat("Checkbox", "🥚 Auto Triple Hatch Egg (req. Gamepass)", function(state)
        getgenv().config.toe = state
    end, {enabled = getgenv().config.toe})

    petsec:Cheat("Checkbox", "🥚 Auto Octo Hatch Egg (req. Gamepass)", function(state)
        getgenv().config.ooe = state
    end, {enabled = getgenv().config.ooe})

    petsec:Cheat("Checkbox", "🥚 Hatch at Insane Luck Only", function(state)
        getgenv().config.ooeil = state
    end, {enabled = getgenv().config.ooeil})








    -- getgenv().autoen = false;
    -- getgenv().ench1 = "None"
    -- getgenv().ench2 = "None"
    -- getgenv().ench3 = "None"
    -- getgenv().ench4 = "None"
    -- getgenv().petid = ""
    -- petsec1:Cheat("Textbox", "Pet Unique NickName", function(Value)
    --     getgenv().nickname = tostring(Value)
    -- end)
    -- petsec1:Cheat("Textbox", "Gem Limit", function(Value)
    --     enchantnumbers = Value
    --     getgenv().limit = tonumber(enchantnumbers)
       
    -- end)
    local enchpowers = {
        [1] = "None",
        [2] = "None",
        [3] = "None"
    }
    getgenv().ench2 = false
    getgenv().ench3 = false
    getgenv().startech = false
    petsec1:Cheat("Dropdown", "Select Enchant 1", function(Option)
        enchpowers[1] = Option
    end,{options = pow, default = "Select Enchant"})
    petsec1:Cheat("Dropdown", "Select Enchant 2", function(Option)
        enchpowers[2] = Option
    end,{options = pow, default = "Select Enchant"})
    petsec1:Cheat("Dropdown", "Select Enchant 3", function(Option)
        enchpowers[3] = Option
    end,{options = pow, default = "Select Enchant"})

    -- petsec1:Cheat("Dropdown", "Select Enchant 4", function(Option)
    --     getgenv().ench4 = Option
    --     getgenv().enchanted4 = string.split(getgenv().ench4," ")
    --     if #getgenv().enchanted4 == 3 then
    --         getgenv().enchant4 = string.split(getgenv().ench4," ")[1].." "..string.split(getgenv().ench4," ")[2]
    --         getgenv().enchantvalue4 = tonumber(string.split(getgenv().ench4," ")[3])
    --     elseif #getgenv().enchanted4 == 2 then
    --         getgenv().enchant4 = string.split(getgenv().ench4," ")[1]
    --         getgenv().enchantvalue4 = tonumber(string.split(getgenv().ench4," ")[2])
    --     end
    -- end,{options = pow, default = "Select Enchant"})

    petsec1:Cheat("Checkbox", "Match 2 Enchants", function(state)
        getgenv().ench2 = false
    end)
    petsec1:Cheat("Checkbox", "Match 3 Enchants", function(state)
        getgenv().ench3 = false
    end)
    petsec1:Cheat("Checkbox", "Start/Stop Enchant", function(state)
        getgenv().startech = state
    end)

    local function petstable()
        pettable = {}
        local petmod = require(game.ReplicatedStorage.Framework.Library)
        for l,k in pairs(petmod.Save.Get().Pets) do
            rarity_omg = petmod.Directory.Pets[tostring(petmod.PetCmds.Get(k.uid).id)].rarity
            if rarity_omg == "Mythical" and rarity_omg == "Event" and rarity_omg == "Exclusive" then 
                return
            end
            if k.nk == "wdpets" then
                if k.powers == nil then
                    table.insert(pettable, k.uid)
                else
                    if not getgenv().ench2 and not getgenv().ench3 and #k.powers >= 1 then
                        match = 0
                        for i,v in pairs(enchpowers) do
                            for i2,v2 in pairs(k.powers) do
                                if v == v2[1].." "..v2[2] then
                                    match = match + 1
                                end
                            end
                            if match >= 1 then
                                break
                            end
                        end
                        if match == 0 then
                            table.insert(pettable, k.uid)
                        end
                    elseif getgenv().ench2 and not getgenv().ench3 and #k.powers >= 1 then
                        if #k.powers >= 2 then
                            match = 0
                            for i,v in pairs(enchpowers) do
                                for i2,v2 in pairs(k.powers) do
                                    if v == v2[1].." "..v2[2] then
                                        match = match + 1
                                    end
                                end
                                if match >= 2 then
                                    break
                                end
                            end
                            if match < 2 then
                                table.insert(pettable, k.uid)
                            end
                        else
                            table.insert(pettable, k.uid)
                        end
                    elseif not getgenv().ench2 and getgenv().ench3 and #k.powers >= 1 then
                        if #k.powers >= 3 then
                            match = 0
                            for i,v in pairs(enchpowers) do
                                for i2,v2 in pairs(k.powers) do
                                    if v == v2[1].." "..v2[2] then
                                        match = match + 1
                                    end
                                end
                                if match >= 3 then
                                    break
                                end
                            end
                            if match < 3 then
                                table.insert(pettable, k.uid)
                            end
                        else
                            table.insert(pettable, k.uid)
                        end
                    end
                end
            end
        end
        return pettable
    end
    


    task.spawn(function()
        while true and task.wait() do
            local lenpow = 0
            for i,v in pairs(enchpowers) do
                if v == "None" then
                    lenpow = lenpow+1
                end
            end

            if getgenv().startech then
                local petNetwork = require(game:GetService("ReplicatedStorage").Library.Client.Network)
                if #petstable() >= 3 and lenpow == 0 then
                    petNetwork.Invoke(encremname, {petstable()[1], petstable()[2], petstable()[3]}, false)
                elseif #petstable() >= 2 and lenpow < 2 then
                    petNetwork.Invoke(encremname, {petstable()[1], petstable()[2]}, false)
                elseif #petstable() >= 1 and lenpow < 3 then
                    petNetwork.Invoke(encremname, {petstable()[1]}, false)
                end
            end
        end
    end)
    -- petsec1:Cheat("Button", "⭐ Start Enchant", function()
    --     local mod = require(game.ReplicatedStorage:WaitForChild("Framework"):WaitForChild("Library"))
    --     for i,v in pairs(mod.Save.Get().Pets) do
    --         if v.nk == getgenv().nickname then
    --             getgenv().petid = tostring(v.uid)
    --         end
    --     end
    --     local simper = getgenv().limit
    --     if getgenv().ench1 ~= "None" or getgenv().ench2 ~= "None" or getgenv().ench3 ~= "None" or getgenv().ench4 ~= "None" then
    --         getgenv().autoen=true;
    --         while getgenv().autoen and task.wait() do
    --             local lib = require(game.ReplicatedStorage:WaitForChild("Framework"):WaitForChild("Library"))
    --             local function enchantval(tbl, value)
    --                 for i,v in pairs(tbl) do
    --                 if v == value then
    --                     return true;
    --                 end
    --             end
    --             return false;
    --             end

    --             function hasenchant(tbl, value)
    --             for i,v in pairs(tbl) do
    --                 if (i == value) then
    --                     return true;
    --                 end
    --             end
    --             return false;
    --             end
    --             for i,v in pairs(lib.Save.Get().Pets) do
    --             if enchantval(v, getgenv().petid) then
    --                 if hasenchant(v, "powers") then
    --                     if getgenv().config.s3 == true then
    --                     local ch = require(game.ReplicatedStorage:WaitForChild("Framework"):WaitForChild("Library"))
    --                     local dope =  v.powers
    --                     if #dope == 3 then
    --                         getgenv().autoen = false;
    --                     end
    --                     end
    --                     if getgenv().config.s2 == true then
    --                         local ch = require(game.ReplicatedStorage:WaitForChild("Framework"):WaitForChild("Library"))
    --                         local dope =  v.powers
    --                         if #dope == 2 then
    --                             getgenv().autoen = false;
    --                         end
    --                     end
    --                     for i,v in pairs(v.powers) do
    --                         if getgenv().ench1 ~= "None" and enchantval(v, getgenv().enchant) and enchantval(v, getgenv().enchantvalue) or getgenv().ench2 ~= "None" and enchantval(v, getgenv().enchant2) and enchantval(v, getgenv().enchantvalue2) or getgenv().ench3 ~= "None" and enchantval(v, getgenv().enchant3) and enchantval(v, getgenv().enchantvalue3) or getgenv().ench4 ~= "None" and enchantval(v, getgenv().enchant4) and enchantval(v, getgenv().enchantvalue4) then
    --                             local cap = gethui and gethui() or get_hidden_gui and get_hidden_gui() or game:GetService("CoreGui")
                                
    --                             for i2,v2 in pairs(game:GetService("CoreGui"):GetDescendants()) do
    --                                 if v2.Name == "Title" and v2.ClassName == "TextLabel" and v2.Text:match("Current Enchant: ") or v2.Name == "Title" and v2.ClassName == "TextLabel" and v2.Text:match("Enchant Found: ") then
    --                                     v2.Text = "Enchant Found: "..v[1].." "..v[2]
    --                                 end
    --                             end
    --                             getgenv().autoen=false
    --                         else
    --                             for i2,v2 in pairs(game:GetService("CoreGui"):GetDescendants()) do
    --                                 if v2.Name == "Title" and v2.ClassName == "TextLabel" and v2.Text:match("Current Enchant: ") or v2.Name == "Title" and v2.ClassName == "TextLabel" and v2.Text:match("Enchant Found: ") then
    --                                     v2.Text = "Current Enchant: "..v[1].." "..v[2]
    --                                 end
    --                             end
    --                             if game.PlaceId == 10321372166 then
    --                                 getgenv().trash = simper - 500000
    --                             else
    --                                 getgenv().trash = simper - 10000
    --                             end
    --                             simper = getgenv().trash
    --                             if game.PlaceId == 10321372166 and simper < 500000 then
    --                                 getgenv().autoen = false
    --                             elseif game.PlaceId == 10321372166 and simper < 10000 then
    --                                 getgenv().autoen = false
    --                             end
    --                             if getgenv().autoen == true then
    --                             petNetwork.Invoke(encremname, {getgenv().petid}, false)
    --                             wait(2)
    --                         end
    --                         end
    --                     end
    --                 else
    --                 if getgenv().autoen == true then
    --                     petNetwork.Invoke(encremname, {getgenv().petid}, false)
    --                     wait(2)
    --                 end
    --                 end
    --             end
    --         end
    --         end
    --     end
    -- end)
    -- petsec1:Cheat("Button", "🛑 Emergency Stop", function()
    --     getgenv().autoen = false
    -- end)
    -- petsec1:Cheat("Label", "Current Enchant: ")

    petsec2:Cheat("Checkbox", "🥚 Remove Egg Animation", function(state)
        getgenv().config.rea = state
    end, {enabled = getgenv().config.rea})
    petsec2:Cheat("Checkbox", "🍀 Auto Super Lucky", function(state)
        getgenv().config.esl = state
    end, {enabled = getgenv().config.esl})
    petsec2:Cheat("Checkbox", "🍀 Auto Ultra Lucky", function(state)
        getgenv().config.eul = state
    end, {enabled = getgenv().config.eul})
    petsec2:Cheat("Checkbox", "🍀 Auto Server Super Lucky", function(state)
        getgenv().config.sesl = state
    end, {enabled = getgenv().config.sesl})
    -- local function enchantval(tbl, value)
    --     for i,v in pairs(tbl) do
    --         if v == value then
    --             return true;
    --         end
    --     end
    --     return false;
    -- end
    -- petsec2:Cheat("Label", "Equipped pet enchant")
    -- petrare = {}
    -- for i,v in pairs(mod.Directory.Pets) do
    --     petrare[i] = v.rarity
    -- end
    -- getgenv().eenchant = ""
    -- getgenv().eenchanted = ""
    -- getgenv().eenchantvalue = 0
    -- getgenv().enchants = ""
    -- petsec2:Cheat("Dropdown", "Select Enchant 1", function(Option)
    --     getgenv().eenchant = Option
    --     getgenv().eenchanted = string.split(getgenv().eenchant," ")
    --     if #getgenv().eenchanted == 3 then
    --         getgenv().enchants = string.split(getgenv().eenchant," ")[1].." "..string.split(getgenv().eenchant," ")[2]
    --         getgenv().eenchantvalue = tonumber(string.split(getgenv().eenchant," ")[3])
    --     elseif #getgenv().eenchanted == 2 then
    --         getgenv().enchants = string.split(getgenv().eenchant," ")[1]
    --         getgenv().eenchantvalue = tonumber(string.split(getgenv().eenchant," ")[2])
    --     end
        
    -- end,{options = pow, default = "Select Enchant"})

    -- getgenv().equipenchant = false
    -- petsec2:Cheat("Button", "Start Enchant", function(Option)
    --     if getgenv().equipenchant == false then
    --         getgenv().equipenchant = true
    --         enchantedtable = {}
    --         etable = {}
    --         for i,v in pairs(mod.Save.Get().Pets) do
    --             if petmod.Save.Get().PetsEquipped[v.uid] ~= nil and petrare[v.id] ~= "Mythical" and petrare[v.id] ~= "Exclusive" then
    --                 table.insert(etable, v.uid)
    --             end
    --         end
    --         while getgenv().equipenchant and task.wait() do
    --             if #enchantedtable ~= #etable then
    --                 for i,v in pairs(mod.Save.Get().Pets) do
    --                     if getgenv().equipenchant == false then
    --                         break
    --                     end
    --                     if petmod.Save.Get().PetsEquipped[v.uid] and petrare[v.id] ~= "Mythical" and petrare[v.id] ~= "Exclusive" then
    --                         if v.powers ~= nil then
    --                             for i2,v2 in pairs(v.powers) do
    --                                 if enchantval(v2, getgenv().enchants) and enchantval(v2, getgenv().eenchantvalue) and not table.find(enchantedtable, v.uid) then
    --                                     table.insert(enchantedtable, v.uid)
    --                                 elseif not table.find(enchantedtable, v.uid) then
    --                                     mod.Network.Invoke(encremname, {v.uid}, false)
    --                                     wait(2)
    --                                 end
    --                                 if getgenv().equipenchant == false then
    --                                     break
    --                                 end
    --                             end
    --                         else
    --                             mod.Network.Invoke(encremname, {v.uid}, false)
    --                             wait(2)
    --                         end
    --                     end
    --                 end
    --             else
    --                 getgenv().equipenchant = false
    --                 break
    --             end
    --         end
    --     end
    -- end)

    -- petsec2:Cheat("Button", "Stop Enchanting", function()
    --     getgenv().equipenchant = false
    -- end)

    ----Chest----
    task.spawn(function()
        while true do
            task.wait()
            if getgenv().config.cFarm then
                function farmchest(CoinID, PetID)
                    local damn = {[1] = PetID}
                    
                        petNetwork.Invoke("Join Coin", CoinID ,damn)
                   
                   
                        petNetwork.Fire("Farm Coin", CoinID, PetID)
                end
                local ListChest = petNetwork.Invoke(coinremname)
                for i,v in pairs(GetMyPets()) do
                    for i2,v2 in pairs(ListChest)do
                        if getgenv().config.ChestName ~= "All" and getgenv().config.ChestName ~= "Grand Heaven/Angel Chest" and v2.n:match(getgenv().config.ChestName) then
                            farmchest(i2, v)
                        elseif getgenv().config.ChestName ~= "All" and getgenv().config.ChestName == "Grand Heaven/Angel Chest" and v2.n:match("Heavens Gate Grand Heaven Chest") or getgenv().config.ChestName == "Grand Heaven/Angel Chest" and v2.n:match("Heaven Island Angel Chest") then
                            farmchest(i2, v)
                        elseif getgenv().config.ChestName == "All" and table.find(getgenv().Chestli, v2.n) then
                            farmchest(i2, v)
                        end
                    end
                end
            end
        end
    end)
    local function fuseamtpet()
        if game.PlaceId ~= 10321372166 then
            brb = {"1 (13%)", "2 (29%)", "3 (47%)", "4 (63%)", "5 (88%)", "6 (100%)"}
            return brb
        else
            brb = {"1 (8%)", "2 (17%)", "3 (29%)", "4 (37%)", "5 (46%)", "6 (55%)", "7 (67%)", "8 (78%)", "9 (88%)", "10 (100%)"}
            return brb
        end
    end
    local function fuseamtdarkpet()
        if game.PlaceId == 10321372166 then
            brb = {"1", "2", "3", "4", "5", "6", "7", "8"}
            return brb
        else
            brb = {"1", "2", "3", "4", "5", "6"}
            return brb
        end
    end
    concard:Cheat("Dropdown", "Select Mode", function(Option)
        getgenv().config.sm = Option
    end, {options = {"Golden", "Rainbow", "Golden/Rainbow"}, default = getgenv().config.sm})
    concard:Cheat("Dropdown", "Select Pet Amount", function(Option)
        local perc = Option
        local percnum = string.split(perc, "(")
        getgenv().config.smamt = tonumber(percnum[1])
    end, {options = {"1", "2", "3", "4", "5", "6", "7", "8", "9", "10"}, default = getgenv().config.smamt})
    concard:Cheat("Checkbox", "😒 HC Pets", function(state)
        getgenv().config.hcconv = state
    end, {enabled = getgenv().config.hcconv})
    concard:Cheat("Checkbox", "😒 Ignore Mythicals", function(state)
        getgenv().config.im = state
    end, {enabled = getgenv().config.im})
    concard:Cheat("Checkbox", "😒 Ignore Shiny", function(state)
        getgenv().config.igrconvsh = state
    end, {enabled = getgenv().config.igrconvsh})
    concard:Cheat("Checkbox", "⛏️ Auto Convert", function(state)
        getgenv().config.ac = state
    end, {enabled = getgenv().config.ac})

    concard1:Cheat("Dropdown", "Select Pet Amount", function(Option)
        getgenv().config.dpa = tonumber(Option)
    end, {options = {"1", "2", "3", "4", "5", "6", "7", "8"}, default = getgenv().config.dpa})
    concard1:Cheat("Checkbox", "HC Pets Only", function(state)
        getgenv().config.dhcpet = state
    end, {enabled = getgenv().config.dhcpet})
    concard1:Cheat("Checkbox", "Ignore Shiny", function(state)
        getgenv().config.digrconvsh = state
    end, {enabled = getgenv().config.digrconvsh})
    concard1:Cheat("Checkbox", "⛏️ Auto DarkMatter", function(state)
        getgenv().config.adc = state
    end, {enabled = getgenv().config.adc})

    concard1:Cheat("Checkbox", "Collect Darkmatter", function(state)
        getgenv().config.acd = state
    end, {enabled = getgenv().config.acd})

    concard2:Cheat("Label", "Pet 1", function()end)

    concard2:Cheat("Dropdown", "Select 1st Pet", function(Option)
        getgenv().config.pet1name = Option
    end, {options = getallpets(), default = getgenv().config.pet1name})
    concard2:Cheat("Textbox", "1st Pet Name(Optional)", function(value)
        getgenv().config.pet1name = value
    end, {{placeholder = getgenv().config.pet1name}})
    concard2:Cheat("Dropdown", "Select Amount", function(Option)
        getgenv().config.pet1amt = tonumber(Option)
    end, {options = {"0","1","2","3","4","5","6","7","8","9","10","11","12"}, default = getgenv().config.pet1amt})
    concard2:Cheat("Dropdown", "Select Type", function(Option)
        getgenv().config.pet1typ = Option
    end, {options = {"Normal", "Gold", "Rainbow", "DarkMatter"}, default = getgenv().config.pet1typ})
    
    concard2:Cheat("Label", "Pet 2", function()end)

    concard2:Cheat("Dropdown", "Select 2nd Pet", function(Option)
        getgenv().config.pet2name = Option
    end, {options = getallpets(), default = getgenv().config.pet2name})
    concard2:Cheat("Textbox", "2nd Pet Name(Optional)", function(value)
        getgenv().config.pet2name = value
    end, {{placeholder = getgenv().config.pet2name}})
    concard2:Cheat("Dropdown", "Select Amount", function(Option)
        getgenv().config.pet2amt = tonumber(Option)
    end, {options = {"0","1","2","3","4","5","6","7","8","9","10","11","12"}, default = getgenv().config.pet1amt})
    concard2:Cheat("Dropdown", "Select Type", function(Option)
        getgenv().config.pet2typ = Option
    end, {options = {"Normal", "Gold", "Rainbow", "DarkMatter"}, default = getgenv().config.pet2typ})
    
    concard2:Cheat("Checkbox", "Harcore Pets", function(state)
        getgenv().config.hcforfuse = state
    end, {enabled = getgenv().config.hcforfuse})

    concard2:Cheat("Checkbox", "Ignore Shiny Pets", function(state)
        getgenv().config.igrshiforfuse = state
    end, {enabled = getgenv().config.igrshiforfuse})
    
    concard2:Cheat("Checkbox", "Start/Stop Fuse", function(state)
        getgenv().config.fsf = state
    end, {enabled = getgenv().config.fsf})

    local masterydrop = masterysector:Cheat("Dropdown", "Selected Masterys", function()
    
    end, {options = getgenv().config.selected, default = "Selected Masterys"})
    masterysector:Cheat("Dropdown", "Select Masterys", function(option)
        if not table.find(getgenv().config.selected, option) then
            table.insert(getgenv().config.selected, option)
            allmastab = getgenv().config.selected
            masterydrop:RemoveOptionAll()
            masterydrop:AddOptions(allmastab)
        end
    end, {options = masterylist})
    
    masterysector:Cheat("Dropdown", "Select Egg", function(option)
        getgenv().config.mysopegg = option
    end, {options = eggersmys(), default = getgenv().config.mysopegg})
    
    masterysector:Cheat("Dropdown", "Select Hatch Mode", function(option)
        getgenv().config.myseggtyp = option
    end, {options = {"Single", "Triple", "Octa"}})
    
    masterysector:Cheat("Checkbox", "Start/Stop Mastery Farm", function(state)
        getgenv().config.masteryfarm = state
    end, {enabled = getgenv().config.masteryfarm})
    
    masterysector:Cheat("Button", "Remove Selections", function(option)
        getgenv().config.selected = {}
        masterydrop:RemoveOptionAll()
    end, {options = masterylist})


    ----Booth sniper----
    petnames = {}
    directory = petmod.Directory
    for i,v in pairs(directory.Pets) do
        table.insert(petnames, string.lower(v.name))
    end
    snipepet = ""
    sniperar = ""
    snipetype = ""
    snipemode = ""
    snipegems = 0


    local Player = game.Players.LocalPlayer
    local Notify = getsenv(Player:WaitForChild("PlayerGui"):WaitForChild("Admin Commands"):WaitForChild("Admin Cmds Client")).AddNotification


    local TypeList = {"Shiny", "Golden", "Rainbow", "Dark Matter", "Any"}
    local RaritiesWithHugeList = {"Basic", "Rare", "Epic", "Legendary", "Mythical", "Secret", "Exclusive", "Event", "Huges", "Titanics"}

    boothcard:Cheat("Label", "Note: Stop Hop until seller in trade", function()end)
    boothcard:Cheat("Checkbox", "Start Sniping", function(state)
        getgenv().config.booth.sniping = state
    end, {enabled =  getgenv().config.booth.sniping})

    boothcard:Cheat("Checkbox", "Snipe By Rarity", function(state)
        getgenv().config.booth.sniperarity = state
    end, {enabled =  getgenv().config.booth.sniperarity})

    boothcard:Cheat("Textbox", "Pet Name", function(Value)
        if not table.find(petnames, string.lower(Value)) then
            snipepet = ""
            Notify("Pet Not Exist or Double Check spelling")
            return
        end
        for i,v in pairs(directory.Pets) do
            if string.lower(v.name) == string.lower(Value) then
                snipepet = i
            end
        end
    end, {{placeholder = "Pet Name"}})

    boothcard:Cheat("Textbox", "Gems Amount", function(Value)
        snipegems = tonumber(Value)
        getgenv().config.booth.raregem = tonumber(Value)
    end, {{placeholder = "Gems Amount"}})



    boothcard:Cheat("Dropdown", "Select Type", function(Option)
        snipetype = Option
    end, {options = TypeList, default = "Select Type"})

    boothcard:Cheat("Dropdown", "Select Mode", function(Option)
        snipemode = Option
    end, {options = {"Hardcore", "Regular"}, default = "Select Mode"})

    boothcard:Cheat("Button", "Show List", function()
        for i,v in pairs(game.CoreGui:GetDescendants()) do
            if v.Name == "Selected Pets List:" and v:FindFirstChild("Title") then
                v.Title.TextYAlignment = "Top"
                v.Title.Text = "Selected Pets List:"
            end
        end

        for i,v in pairs(game.CoreGui:GetDescendants()) do
            if v.Name == "Selected Pets List:" and v:FindFirstChild("Title") then
                for i2,v2 in pairs(getgenv().config.booth.savedpets) do
                    v.Title.TextYAlignment = "Top"
                        v.Title.Text =  v.Title.Text.."\n".."["..tostring(i2).."] ".."Pet Name: "..directory.Pets[v2.name].name..", Type: "..v2.type..", price: "..tostring(v2.gems)..", World: "..v2.hc.."\n"
                
                end
            end
        end
    end)

    boothcard:Cheat("Button", "Print List", function()
        for i,v in pairs(game.CoreGui:GetDescendants()) do
            if v.Name == "Selected Pets List:" and v:FindFirstChild("Title") then
                v.Title.Text = "Selected Pets List:"
            end
        end
        local texto = ""
        for i,v in pairs(game.CoreGui:GetDescendants()) do
            if v.Name == "Selected Pets List:" and v:FindFirstChild("Title") then
                texto = v.Title.Text
                for i2,v2 in pairs(getgenv().config.booth.savedpets) do
                    
                    texto =  texto.."\n".."["..tostring(i2).."] ".."Pet Name: "..directory.Pets[v2.name].name..", Type: "..v2.type..", price: "..tostring(v2.gems)..", World: "..v2.hc.."\n"
                
                end
            end
        end
        print(texto)
    end)

    boothcard:Cheat("Button", "Add in Snipe List", function(state)
        if snipemode ~= "" and snipepet ~= "" and snipetyp ~= "" and snipegems ~= 0 then
            local petdata = {["gems"] = snipegems, ["name"] = snipepet, ["type"] = snipetype, ["hc"] = snipemode}
            for i,v in pairs(getgenv().config.booth.savedpets) do
                if v.name == petdata.name and v.type == petdata.type and v.hc == petdata.hc and v.gems == petdata.gems then
                    table.remove(getgenv().config.booth.savedpets, i)
                end
            end
            table.insert(getgenv().config.booth.savedpets, petdata)
            -- for i,v in pairs(getgenv().config.booth.savedpets) do
            --     for i2,v2 in pairs(v) do
            --         print(i2,v2)
            --     end
            -- end
        else
            Notify("You Forgot To Select Something")
        end
    end)
    boothcard:Cheat("Button", "Clear Selections", function()
        getgenv().config.booth.savedpets = {}
        for i,v in pairs(game.CoreGui:GetDescendants()) do
            if v.Name == "Selected Pets List:" and v:FindFirstChild("Title") then
                v.Title.TextYAlignment = "Top"
                v.Title.Text = "Selected Pets List:"
            end
        end
    end)

    boothcard:Cheat("Label", "Selected Pets List:", function()end)

    boothcard1:Cheat("Checkbox", "Basic", function(state)
        getgenv().config.booth.rarities["Basic"] = state
    end, {enabled = getgenv().config.booth.rarities["Basic"]})
    boothcard1:Cheat("Checkbox", "Rare", function(state)
        getgenv().config.booth.rarities["Rare"] = state
    end, {enabled = getgenv().config.booth.rarities["Rare"]})
    boothcard1:Cheat("Checkbox", "Epic", function(state)
        getgenv().config.booth.rarities["Epic"] = state
    end, {enabled = getgenv().config.booth.rarities["Epic"]})
    boothcard1:Cheat("Checkbox", "Legendary", function(state)
        getgenv().config.booth.rarities["Legendary"] = state
    end, {enabled = getgenv().config.booth.rarities["Legendary"]})
    boothcard1:Cheat("Checkbox", "Mythicals", function(state)
        getgenv().config.booth.rarities["Mythical"] = state
    end, {enabled = getgenv().config.booth.rarities["Mythical"]})
    boothcard1:Cheat("Checkbox", "Exclusives", function(state)
        getgenv().config.booth.rarities["Exclusive"] = state
    end, {enabled = getgenv().config.booth.rarities["Exclusive"]})
    boothcard1:Cheat("Checkbox", "Event", function(state)
        getgenv().config.booth.rarities["Event"] = state
    end, {enabled = getgenv().config.booth.rarities["Event"]})
    boothcard1:Cheat("Checkbox", "Secret", function(state)
        getgenv().config.booth.rarities["Secret"] = state
    end, {enabled = getgenv().config.booth.rarities["Secret"]})
    boothcard1:Cheat("Checkbox", "Huges", function(state)
        getgenv().config.booth.rarities["Huges"] = state
    end, {enabled = getgenv().config.booth.rarities["Huges"]})
    boothcard1:Cheat("Checkbox", "Titanics", function(state)
        getgenv().config.booth.rarities["Titanics"] = state
    end, {enabled = getgenv().config.booth.rarities["Titanics"]})

    boothcard1:Cheat("Label", "Switch Server", function()end)
    boothcard1:Cheat("Textbox", "Webhook URL", function(Value)
        getgenv().config.booth.boothweb = Value
    end, {{placeholder = tostring(getgenv().config.booth.boothweb)}})
    boothcard1:Cheat("Checkbox", "Switch Server", function(state)
        getgenv().config.booth.server = state
    end, {enabled = getgenv().config.booth.server})


    boothcard1:Cheat("Checkbox", "Start Serverhop After Time", function(state)
        getgenv().config.serverhop = state
    end, {enabled = getgenv().config.serverhop})
    boothcard1:Cheat("Textbox", "Server Hop Time (in mins)", function(Value)
        getgenv().config.servertime = tonumber(Value) * 60
    end,{placeholder = getgenv().config.servertime/60})


    collectionsector:Cheat("Checkbox", "Ignore Normal Index", function(state)
        getgenv().config.indexcol.igrnormal = state
    end)
    collectionsector:Cheat("Checkbox", "Ignore Mythical Index", function(state)
        getgenv().config.indexcol.igrmyth = state
    end)
    collectionsector:Cheat("Checkbox", "Ignore Gold Index", function(state)
        getgenv().config.indexcol.igrgold = state
    end)
    collectionsector:Cheat("Checkbox", "Ignore Rainbow Index", function(state)
        getgenv().config.indexcol.igrrainbow = state
    end)
    collectionsector:Cheat("Checkbox", "Ignore DarkMatter Index", function(state)
        getgenv().config.indexcol.igrdarkmatter = state
    end)
    collectionsector:Cheat("Dropdown", "Select Hatch Type", function(option)
        getgenv().config.indexcol.hatchtype = option
    end, {options = {"Single", "Triple", "Octa"}})
    collectionsector:Cheat("Checkbox", "Remove Egg Animation", function(state)
        getgenv().config.indexcol.coani = state
    end)
    collectionsector:Cheat("Checkbox", "Delete Indexed Pets", function(state)
        getgenv().config.indexcol.dpet = state
    end)
    collectionsector:Cheat("Checkbox", "Start Index Hatch", function(state)
        getgenv().config.indexcol.opegg = state
    end)
    

    delcard:Cheat("Checkbox", "😒 Ignore Mythicals", function(state)
        getgenv().config.dim = state
    end, {enabled = getgenv().config.dim})
    delcard:Cheat("Checkbox", "😒 Ignore Legendary", function(state)
        getgenv().config.dil = state
    end, {enabled = getgenv().config.dil})
    delcard:Cheat("Textbox", "Max Strength", function(Value)
        getgenv().config.dms = Value
    end, {placeholder = getgenv().config.dms})
    delcard:Cheat("Textbox", "Min Strength", function(Value)
        getgenv().config.dns = Value
    end, {placeholder = getgenv().config.dns})
    delcard:Cheat("Button", "🗑️ Instant Delete", function()
        local petmod = require(game.ReplicatedStorage.Framework.Library)
        for i,v in pairs(petmod.Save.Get().Pets) do
            if getgenv().config.dil == true and getgenv().config.dim == false and petmod.Directory.Pets[(petmod.PetCmds.Get(v.uid)).id].rarity ~= "Legendary" and petmod.Directory.Pets[(petmod.PetCmds.Get(v.uid)).id].rarity ~= "Exclusive" or  getgenv().config.dim == true and getgenv().config.dil == false and petmod.Directory.Pets[(petmod.PetCmds.Get(v.uid)).id].rarity ~= "Mythical" and not petmod.Directory.Pets[(petmod.PetCmds.Get(v.uid)).id].rarity == "Legendary" or getgenv().config.dil == true and getgenv().config.dim == true and petmod.Directory.Pets[(petmod.PetCmds.Get(v.uid)).id].rarity ~= "Legendary" and petmod.Directory.Pets[(petmod.PetCmds.Get(v.uid)).id].rarity ~= "Mythical" and petmod.Directory.Pets[(petmod.PetCmds.Get(v.uid)).id].rarity ~= "Exclusive" or getgenv().config.dil == false and getgenv().config.dim == false and petmod.Directory.Pets[(petmod.PetCmds.Get(v.uid)).id].rarity ~= "Exclusive" then
                if v.s < tonumber(getgenv().config.dms) and v.s > tonumber(getgenv().config.dns) then
                    sike = {v.uid}
                    task.spawn(function()
                        petNetwork.Invoke(delremname, sike)
                    end)
                end
            end
        end
    end)



    delcard1:Cheat("Checkbox", "🗑️ Delete Basic", function(state)
        getgenv().config.delchecker["Basic"] = state
    end, {enabled = getgenv().config.delchecker["Basic"]})
    delcard1:Cheat("Checkbox", "🗑️ Delete Rare", function(state)
        getgenv().config.delchecker["Rare"] = state
    end, {enabled = getgenv().config.delchecker["Rare"]})
    delcard1:Cheat("Checkbox", "🗑️ Delete Epic", function(state)
        getgenv().config.delchecker["Epic"] = state
    end, {enabled = getgenv().config.delchecker["Epic"]})
    delcard1:Cheat("Checkbox", "🗑️ Delete Legendary", function(state)
        getgenv().config.delchecker["Legendary"] = state
    end, {enabled = getgenv().config.delchecker["Legendary"]})
    delcard1:Cheat("Checkbox", "🗑️ Delete Mythicals", function(state)
        getgenv().config.delchecker["Mythical"] = state
    end, {enabled = getgenv().config.delchecker["Mythical"]})
    delcard1:Cheat("Checkbox", "🗑️ Delete Exclusives", function(state)
        getgenv().config.delchecker["Exclusive"] = state
    end, {enabled = getgenv().config.delchecker["Exclusive"]})
    delcard1:Cheat("Checkbox", "🗑️ Ignore Shiny", function(state)
        getgenv().config.igrshiny = state
    end, {enabled = getgenv().config.igrshiny})
    delcard1:Cheat("Checkbox", "🗑️ Start/Stop Auto Delete", function(state)
        getgenv().config.dad = state
    end, {enabled = getgenv().config.dad})

    pcard:Cheat("Button", "✨ Fake Orb Spawner", function()
        local modora = getsenv(game:GetService("Players").LocalPlayer.PlayerScripts.Scripts.Game.Orbs)
        local h =
        setmetatable(
        {},
        {__index = function(i, j)
                return game:GetService(j)
            end, __newindex = function(i, k)
                i[k] = nil
                return
            end}
        )
        local currs = {}
        for i,v in pairs(petmod.Directory.Currency) do
            lol = {
                type = i,
                pos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position,
                am = 1000000000000
            }
            table.insert(currs, lol)
        end
        ListCoins = petNetwork.Invoke(coinremname)
        for i = 1, 20 do
            local all = currs
            local c = math.random(1, #all)
            local typer = all[c]
            modora.AddOrb(tostring(h.HttpService:GenerateGUID()),typer)
        end
    end)
    pcard:Cheat("Checkbox", "💰 Auto Rank Rewards", function(state)
        getgenv().config.pcrr = state
    end, {enabled = getgenv().config.pcrr})
    pcard:Cheat("Checkbox", "💰 Auto VIP Reward", function(state)
        getgenv().config.pcvr = state
    end, {enabled = getgenv().config.pcvr})
    pcard:Cheat("Slider", "🚶 WalkSpeed", function(value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
    end, {min = 25, max = 100, suffix = "°"})
    pcard:Cheat("Slider", "🚶 Jumpower", function(value)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = value
    end, {min = 50, max = 100, suffix = "°"})
    pcard:Cheat("Checkbox", "🚶 Inf Jump", function(state)
        getgenv().config.pij = state
    end, {enabled = getgenv().config.pij})



    --[[pcard2:Cheat("Dropdown", "Select Slot", function(Option)
        getgenv().config.pms = state
    end,{options = {"All", "1", "2", "3"}, default = getgenv().config.pms})
    pcard2:Cheat("Checkbox", "Auto Buy", function(Option)
        getgenv().config.pmab = state
    end, {enabled = getgenv().config.pmab})]]
    --[[local selectedplr = ""
    local plrdrop = pcard2:Cheat("Dropdown", "Select Player", function(Option)
        selectedplr = Option
    end,{options = plrs(), default = "Select Player"})
    pcard2:Cheat("Button", "🧍 Spoof Player", function(Option)
        pcall(function()
        game:GetService("ReplicatedStorage").Framework.Shared["2 | Network"]["new stats"]:Fire(petNetwork.Invoke('Get Stats', game:GetService('Players')[selectedplr]), game.Players.LocalPlayer)
        end)
    end)
    pcard2:Cheat("Button", "🧍 UnSpoof Player", function(Option)
        game:GetService("ReplicatedStorage").Framework.Shared["2 | Network"]["new stats"]:Fire(petNetwork.Invoke('Get Stats', game:GetService('Players').LocalPlayer), game.Players.LocalPlayer)
    end)

    game.Players.ChildAdded:Connect(function(v)
        plrdrop:AddOption(v.Name)
    end)
    game.Players.ChildRemoved:Connect(function(v)
        plrdrop:RemoveOption(v.Name)
    end)]]



    local gmamt = 0


    game:GetService("UserInputService").JumpRequest:connect(function()
        if getgenv().config.pij then
            game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
        end
    end)
    task.spawn(function()
        while true do
            task.wait()
            if getgenv().config.pmab then
                if getgenv().config.pms == "All" then
                    for i = 1, 3 do
                        petNetwork.Invoke(merremname, tonumber(i))        
                    end
                elseif getgenv().config.pms ~= "All" then
                    petNetwork.Invoke(merremname, tonumber(getgenv().config.pms))
                end
            end
        end
    end)
    task.spawn(function()
        while true do
            wait(1)
            if getgenv().config.pcrr then
                petNetwork.Invoke(rankremname)
            end
        end
    end)

    task.spawn(function()
        while true do
            wait(1)
            if getgenv().config.pcvr then
                petNetwork.Invoke(vipremname)
            end
        end
    end)
    task.spawn(function()
        local boostpopup = game.Players.LocalPlayer.PlayerGui:WaitForChild("Message"):WaitForChild("Frame")
        while task.wait(.25) do
            if boostpopup.Parent.Enabled==true then
                if string.match(boostpopup.Desc.Text, "Boost has expired") then
                    boostpopup.Parent.Enabled=false
                end
            end
        end
    end)


    webcard:Cheat("Checkbox", "🕸️ Basic Pets Webhook", function(state)
        getgenv().config.TrackList.Basic = state
    end, {enabled = getgenv().config.TrackList.Basic})
    webcard:Cheat("Checkbox", "🕸️ Rare Pets Webhook", function(state)
        getgenv().config.TrackList.Rare = state
    end, {enabled = getgenv().config.TrackList.Rare})
    webcard:Cheat("Checkbox", "🕸️ Epic Pets Webhook", function(state)
        getgenv().config.TrackList.Epic = state
    end, {enabled = getgenv().config.TrackList.Epic})
    webcard:Cheat("Checkbox", "🕸️ Legendary Pets Webhook", function(state)
        getgenv().config.TrackList.Legendary = state
    end, {enabled = getgenv().config.TrackList.Legendary})
    webcard:Cheat("Checkbox", "🕸️ Mythical Pets Webhook", function(state)
        getgenv().config.TrackList.Mythical = state
    end, {enabled = getgenv().config.TrackList.Mythical})
    webcard:Cheat("Checkbox", "🕸️ Exclusive Pets Webhook", function(state)
        getgenv().config.TrackList.Exclusive = state
    end, {enabled = getgenv().config.TrackList.Exclusive})
    webcard:Cheat("Checkbox", "🕸️ Event Pets Webhook", function(state)
        getgenv().config.TrackList.Event = state
    end, {enabled = getgenv().config.TrackList.Event})
    webcard:Cheat("Checkbox", "🕸️ Secret Pets Webhook", function(state)
        getgenv().config.TrackList.Secret = state
    end, {enabled = getgenv().config.TrackList.Secret})
    webcard:Cheat("Textbox", "Discord ID", function(value)
        getgenv().config.DiscordId = value
    end,{placeholder = getgenv().config.DiscordId})
    webcard:Cheat("Textbox", "🕸️ Webhook URL", function(value)
        getgenv().config.url = value
    end,{placeholder = getgenv().config.url})
    webcard:Cheat("Checkbox", "🕸️ Start Webhook", function(state)
        getgenv().config.hatchhook = state
    end, {enabled = getgenv().config.hatchhook})
    
    webcard1:Cheat("Textbox", "Discord ID", function(value)
        getgenv().config.DiscordId2 = value
    end,{placeholder = getgenv().config.DiscordId2})
    webcard1:Cheat("Textbox", "🕸️ Webhook URL", function(value)
        getgenv().config.url2 = value
    end,{placeholder = getgenv().config.url2})
    webcard1:Cheat("Checkbox", "🕸️ Start/Stop Stats Webhook", function(state)
        getgenv().config.coinhook = state
    end, {enabled = getgenv().config.coinhook})
    webcard1:Cheat("Checkbox", "🕸️ Start/Stop Stats Webhook(Min)", function(state)
        getgenv().config.coinhook1 = state
    end, {enabled = getgenv().config.coinhook1})
    guicard:Cheat("Button", "🖵 Upgrades", function()
        game.Players.LocalPlayer.PlayerGui.Upgrades.Enabled = true
    end)
    guicard:Cheat("Button", "🖵 Fuse Pets", function()
        game.Players.LocalPlayer.PlayerGui.FusePets.Enabled = true
    end)
    guicard:Cheat("Button", "🖵 Golden Machine", function()
        game.Players.LocalPlayer.PlayerGui.Golden.Enabled = true
    end)
    guicard:Cheat("Button", "🖵 Rainbow Machine", function()
        game.Players.LocalPlayer.PlayerGui.Rainbow.Enabled = true
    end)
    guicard:Cheat("Button", "🖵 Huge Machine", function()
        game:GetService("Players").LocalPlayer.PlayerGui.HugeMachine.Enabled = true
    end)
    guicard:Cheat("Button", "🖵 Collections", function()
        game.Players.LocalPlayer.PlayerGui.Collection.Enabled = true
    end)
    guicard:Cheat("Button", "🖵 Merchant Shop", function()
        game.Players.LocalPlayer.PlayerGui.Merchant.Enabled = true
    end)
    guicard:Cheat("Button", "🖵 DarkMatter Machine", function()
        game.Players.LocalPlayer.PlayerGui.DarkMatter.Enabled = true
    end)
    guicard:Cheat("Button", "🖵 Server Booster", function()
        game.Players.LocalPlayer.PlayerGui.ServerBoosts.Enabled = true
    end)
    guicard:Cheat("Button", "🖵 Bank", function()
        game.Players.LocalPlayer.PlayerGui.Bank.Enabled = true
    end)

    

    micard:Cheat("Dropdown", "Teleport", function(Option)
        
        TeleportToArea(Option)
    end, {options = arear})
    if game.PlaceId == 10321372166 then
        micard:Cheat("Button", "Normal Mode", function()
            game:GetService("TeleportService"):Teleport(6284583030, game.Players.LocalPlayer)
        end)
    else
        micard:Cheat("Button", "Hardcore Mode", function()
            game:GetService("TeleportService"):Teleport(10321372166, game.Players.LocalPlayer)
        end)
    end
    micard:Cheat("Button", "Rejoin", function()
        game:GetService("TeleportService"):Teleport(game.PlaceId, game.Players.LocalPlayer)
    end)
    micard:Cheat("Button", "Unequip All Pets", function()
        local dmod = getsenv(game:GetService("Players").LocalPlayer.PlayerScripts.Scripts.GUIs.Inventory)
        dmod.UnequipAllPets()
    end)
    micard:Cheat("Button", "Equip Best Pet", function()
        petNetwork.Invoke("Equip Best Pets")
    end)
    micard:Cheat("Button", "Anti AFK", function()
        local GC = getconnections or get_signal_cons
        if GC then
            for i,v in pairs(GC(game.Players.LocalPlayer.Idled)) do
                if v["Disable"] then
                    v["Disable"](v)
                elseif v["Disconnect"] then
                    v["Disconnect"](v)
                end
            end
        else
            local vu = game:GetService("VirtualUser")
            game:GetService("Players").LocalPlayer.Idled:connect(function()
                vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
                wait(1)
                vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
            end)
        end
    end)

    micard:Cheat("Checkbox", "Anti AFK(Jump)", function(state)
        getgenv().config.antijum = state
    end, {enabled = getgenv().config.antijum})


    micard:Cheat("Button", "Lag Reducer", function()
        local decalsyeeted = true -- Leaving this on makes games look shitty but the fps goes up by at least 20.
        local g = game
        local w = g.Workspace
        local l = g.Lighting
        local t = w.Terrain
        t.WaterWaveSize = 0
        t.WaterWaveSpeed = 0
        t.WaterReflectance = 0
        t.WaterTransparency = 0
        l.GlobalShadows = false
        l.FogEnd = 9e9
        l.Brightness = 0
        settings().Rendering.QualityLevel = "Level01"
        for i, v in pairs(g:GetDescendants()) do
            if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
                v.Material = "Plastic"
                v.Reflectance = 0
            elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
                v.Transparency = 1
            elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
                v.Lifetime = NumberRange.new(0)
            elseif v:IsA("Explosion") then
                v.BlastPressure = 1
                v.BlastRadius = 1
            elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
                v.Enabled = false
            elseif v:IsA("MeshPart") then
                v.Material = "Plastic"
                v.Reflectance = 0
                v.TextureID = 10385902758728957
            end
        end
        for i, e in pairs(l:GetChildren()) do
            if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
                e.Enabled = false
            end
        end
    end)

    getgenv().stats = false 
    micard:Cheat("Checkbox", "Stats Tracker", function(state)
        getgenv().config.stats = state
        StatTracker()
    end)
    micard:Cheat("Dropdown", "Equip Hoverboard", function(Option)
        local moders = getsenv(game:GetService("Players").LocalPlayer.PlayerScripts.Scripts.Game.Hoverboard)
        local mods = require(game:GetService("ReplicatedStorage").Framework.Library)
        mods.Save.Get().EquippedHoverboard = Option
        moders.Create(mods.LocalPlayer)
    end,{options = boardtable})
    micard:Cheat("Dropdown", "Hoverboard Speed", function(Option)
        for i,v in pairs(game:GetService("ReplicatedStorage").__DIRECTORY.Hoverboards:GetChildren()) do
            local modul = nil
            for k,e in pairs(v:GetChildren()) do
                if string.find(e.Name,"Data") then
                    modul = e
                end
            end
            if modul ~= nil then
                local s = require(modul)
                s["speed"] = tonumber(Option)
            else
                warn("no module found lol")
            end
        end
        
    end,{options = {"1", "2", "3"}})
    local tab = {["Pet Walkspeed"] = 5}
    micard:Cheat("Slider", "Pet Speed", function(value)
        if not table.find(mod.Save.Get().Upgrades, "Pet Walkspeed") then
            mod.Save.Get().Upgrades = tab
        end
        petmod.Save.Get().Upgrades["Pet Walkspeed"] = value
    end, {min = 5, max = 100, suffix = ""})

    micard:Cheat("Button", "Save Settings", function()
        savesettings()
    end)

    ---Beta---
    betasec:Cheat("Label", "Can Afford 0 Eggs".."\n".."Opened 0 Eggs")



    betasec:Cheat("Checkbox", "Auto Hatch", function(state)
        getgenv().config.hatchegg = state
    end, {enabled = getgenv().config.hatchegg})

    betasec:Cheat("Checkbox", "Golden", function(state)
        getgenv().config.selgoldenegg = state
    end, {enabled = getgenv().config.selgoldenegg})

    betasec:Cheat("Dropdown", "Select Egg", function(Option)
        getgenv().config.selhatchegg = Option
        
        if game.PlaceId == 10321372166 then
            money = numsho(petmod.Save.Get().HardcoreCurrency[petmod.Directory.Eggs[Option].currency]/petmod.Directory.Eggs[Option].cost)
        else
            money = numsho(petmod.Save.Get()[petmod.Directory.Eggs[Option].currency]/petmod.Directory.Eggs[Option].cost)
        end
        if petmod.Save.Get().EggsOpened[Option] then
            eggamy = numsho(petmod.Save.Get().EggsOpened[Option])
        else
            eggamy = "0"
        end
        for i,v in pairs(game.CoreGui:GetDescendants()) do
            if v.Name == "Title" and v.Parent.Name ~= "Slideshow" and v.Text:match("Can Afford") then
                v.Text = "Can Afford "..tostring(money).." Eggs".."\n".."Opened "..eggamy.." Eggs"
            end
        end
    end,{options = eggers1(), default = getgenv().config.selhatchegg})

    betasec:Cheat("Checkbox", "⛏️ open/Close Inventory When 999", function(state)
        getgenv().config.aoi = state
    end, {enabled = getgenv().config.aoi})
    betasec:Cheat("Label", "Fuse here")

    betasec:Cheat("Label", "Pet 1", function()end)

    betasec:Cheat("Dropdown", "Select Pet", function(Option)
        getgenv().config.selfusepet = Option
    end, {options = getallpets(), default = getgenv().config.selfusepet})
    betasec:Cheat("Textbox", "Pet Name(Optional)", function(value)
        getgenv().config.selfusepet = value
    end, {{placeholder = getgenv().config.selfusepet}})
    betasec:Cheat("Dropdown", "Select Amount", function(Option)
        getgenv().config.selfuseamt = tonumber(Option)
    end, {options = {"0","1","2","3","4","5","6","7","8","9","10","11","12"}, default = getgenv().config.selfuseamt})
    betasec:Cheat("Dropdown", "Select Type", function(Option)
        getgenv().config.selfusetyp = Option
    end, {options = {"Normal", "Golden", "Rainbow", "DarkMatter"}, default = getgenv().config.selfusetyp})
    betasec:Cheat("Checkbox", "Ignore Shiny", function(state)
        getgenv().config.igrselsh = state
    end, {enabled = getgenv().config.igrselsh})
    betasec:Cheat("Checkbox", "HC", function(state)
        getgenv().config.selfusehc = state
    end, {enabled = getgenv().config.selfusehc})
    betasec:Cheat("Checkbox", "Fuse When Inventory Full", function(state)
        getgenv().config.stfuse = state
    end, {enabled = getgenv().config.stfuse})

    betasec1:Cheat("Label", "Converter")
    convtypes = {"Golden", "Rainbow", "Golden/Rainbow"}
    betasec1:Cheat("Dropdown", "Select Pet", function(Option)
        getgenv().config.smpets = Option
    end, {options = convtypes, default = getgenv().config.smpets})
    
    betasec1:Cheat("Dropdown", "Select Amount", function(Option)
        getgenv().config.golamtpets = tonumber(Option)
    end, {options = {"0","1","2","3","4","5","6","7","8","9","10"}, default = getgenv().config.golamtpets})
    betasec1:Cheat("Checkbox", "HC", function(state)
        getgenv().config.hcconvpets = Option
    end, {enabled = getgenv().config.hcconvpets})
    betasec1:Cheat("Checkbox", "Ignore Shiny", function(state)
        getgenv().config.igrconvshpets = Option
    end, {enabled = getgenv().config.igrconvshpets})
    betasec1:Cheat("Checkbox", "Ignore Mythicals", function(state)
        getgenv().config.impets = Option
    end, {enabled = getgenv().config.impets})
    betasec1:Cheat("Checkbox", "Convert When Inventory Full", function(state)
        getgenv().config.stconvpets = state
    end, {enabled = getgenv().config.stconvpets})


    betasec1:Cheat("Label", "DarkMatter")



    betasec1:Cheat("Label", "DayCare")
    betasec1:Cheat("Checkbox", "Auto Daycare", function(state)
        getgenv().config.carepet = state
    end, {enabled = getgenv().config.carepet})
    betasec1:Cheat("Checkbox", "Auto Claim Daycare", function(state)
        getgenv().config.claimcare = state
    end, {enabled = getgenv().config.claimcare})
    -------Deleter-----------
    --[[game:GetService("Players").LocalPlayer.PlayerGui.Inventory.Frame.Main.Pets.Normal.ChildAdded:Connect(function(chipotle)
        if getgenv().config.dad then
            delpetid = ""
            if chipotle.ClassName == "TextButton" then
                for i,v in pairs(petmod.Save.Get().Pets) do
                    if v.uid == chipotle.Name then
                        if getgenv().config.igrshiny and v.uid == chipotle.Name and not v.sh or not getgenv().config.igrshiny and v.uid == chipotle.Name then
                            delpetid = v.id
                        end
                    end
                end
                function raritycheck()
                    return petmod.Directory.Pets[tostring(delpetid)].rarity
                end
                if getgenv().config.delchecker[raritycheck()] then
                    petNetwork.Invoke(delremname, {chipotle.Name})
                end
            end
        end
    end)]]
    
    spawn(function()
        table.insert(getgenv().confunc, petNetwork.Fired("Open Egg"):Connect(function(egg, openTable)
            if getgenv().config.dad then
                deletetable = {}
                for i,v in pairs(openTable) do
                    if getgenv().config.igrshiny and not v.sh or not getgenv().config.igrshiny then
                        if getgenv().config.delchecker[petmod.Directory.Pets[v.id].rarity] then
                            table.insert(deletetable, v.uid)
                        end
                    end
                end
                petNetwork.Invoke(delremname, deletetable)
            end
        end))
    end)
    
    ----Fuser----
    local function getallmypets(a,b)
        if b == "Normal" then
        elseif b == "Rainbow" then
            b = "r"
        elseif b == "Gold" then
            b = "g"
        elseif b == "DarkMatter" then
            b = "dm"
        end
        petiid = nil
        for i,v in pairs(petmod.Directory.Pets) do
            if v.name == a then
                petiid = i
            end
        end
        mypets = {}
        if petiid ~= nil then
            if b ~= "Normal" then
                for i,v in pairs(petmod.Save.Get().Pets) do
                    if not getgenv().config.hcforfuse and v.id == petiid and v[b] and not v.hc or getgenv().config.hcforfuse and v.id == petiid and v.hc and v[b] then
                        if getgenv().config.igrshiforfuse and not v.sh or not getgenv().config.igrshiforfuse then
                            table.insert(mypets, v.uid)
                        end
                    end
                end
            elseif b == "Normal" then
                for i,v in pairs(petmod.Save.Get().Pets) do
                    if not getgenv().config.hcforfuse and v.id == petiid and not v["r"] and not v["g"] and not v["dm"] and not v.hc or getgenv().config.hcforfuse and v.id == petiid and v.hc and not v["r"] and not v["g"] and not v["dm"] then
                        if getgenv().config.igrshiforfuse and not v.sh or not getgenv().config.igrshiforfuse then
                            table.insert(mypets, v.uid)
                        end
                    end
                end
            end
        end
        return mypets
    end
    task.spawn(function()
        while true do
            task.wait()
            if getgenv().config.fsf then
                pcall(function()
                    if #getallmypets(getgenv().config.pet1name, getgenv().config.pet1typ) >= getgenv().config.pet1amt and #getallmypets(getgenv().config.pet2name, getgenv().config.pet2typ) >= getgenv().config.pet2amt then
                        local multfusetab = {}
                        for i = 1, getgenv().config.pet1amt do
                            table.insert(multfusetab, getallmypets(getgenv().config.pet1name, getgenv().config.pet1typ)[i])
                        end
                        for i = 1, getgenv().config.pet2amt do
                            table.insert(multfusetab, getallmypets(getgenv().config.pet2name, getgenv().config.pet2typ)[i])
                        end
                        if #multfusetab > 12 then
                            petmod.Message.New("Total Pets Are more then 12 😭")
                            return
                        end
                        petNetwork.Invoke(furemname, multfusetab)
                    end
                end)
            end
        end
    end)
    ---------Darkmatter-----------
    local function darkmattergroup()
        petids = {}
        for i,v in pairs(petmod.Save.Get().Pets) do
            if petmod.Directory.Pets[v.id].rarity ~= "Exclusive" and petmod.Directory.Pets[v.id].rarity ~= "Event" then
                if not v.g and v.r and not v.dm and not petmod.PetCmds.Get(v.uid).l then
                    if getgenv().config.dhcpet and v.hc or not getgenv().config.dhcpet and not v.hc then
                        if getgenv().config.digrconvsh and not v.sh or not getgenv().config.digrconvsh then
                            if petids[v.id] == nil then
                                petids[v.id] = {}
                            end
                            if not table.find(petids[v.id], v.uid) then
                                table.insert(petids[v.id], v.uid)
                            end
                        end
                    end
                end
            end
        end
        local convertgolpets = {}
        for i,v in pairs(petids) do
            if #v >= getgenv().config.dpa then
                listpets = {}
                for i,v in pairs(v) do
                    table.insert(listpets, v)
                    if #listpets == getgenv().config.dpa then
                        table.insert(convertgolpets, listpets)
                        listpets = {}
                    end
                end
            end
        end
        return convertgolpets
    end
    task.spawn(function()
        while task.wait() do
            if getgenv().config.adc and type(getgenv().config.dpa) ~= "string" then
                dminques = {}
                for i,v in pairs(petmod.Save.Get().DarkMatterQueue) do
                    table.insert(dminques, i)
                end

                if not table.find(petmod.Save.Get().Gamepasses, 18674305) and #dminques < tonumber(petmod.Save.Get().DarkMatterSlots) and darkmattergroup()[1] ~= nil or table.find(petmod.Save.Get().Gamepasses, 18674305) and #dminques < tonumber(petmod.Save.Get().DarkMatterSlots) + 1 and darkmattergroup()[1] ~= nil then
                    petNetwork.Invoke(darremname, darkmattergroup()[1])
                end
            end
        end
    end)
        ---------------------
    -----------------------------
    -----Super Farm-----
    

    function GetMyPets()
        returntable = {}
        equippets = game.PlaceId == 10321372166 and petmod.Save.Get().HardcorePetsEquipped or game.PlaceId ~= 10321372166 and petmod.Save.Get().PetsEquipped
        for i,v in pairs(equippets) do
            table.insert(returntable, i)
        end
        return returntable
    end

    function GetCoinsss(area, area2)
        local returntable = {}
        local ListCoins = petNetwork.Invoke(coinremname)
        
        for i,v in pairs(ListCoins) do
            if v.a:match(area) and v.b ~= nil or v.a:match(area2) and v.b ~= nil then
                table.insert(returntable, i)
            end
        end
        for i,v in pairs(ListCoins) do
            if v.a:match(area) and v.b == nil or v.a:match(area2) and v.b == nil then
                table.insert(returntable, i)
            end
        end
        return returntable
    end
    task.spawn(function()
        if getgenv().config.sFarm then
            if getgenv().config.Area ~= "Areas" then
                TeleportToArea(getgenv().config.Area)
            end
        end
        local function FarmCoin1(CoinID, PetID)
            local damn = {[1] = PetID}
            pcall(function() 
                petNetwork.Invoke("Join Coin", CoinID ,damn)
            end)
            pcall(function() 
                petNetwork.Fire("Farm Coin", CoinID, PetID)
            end)
        end
        while true do
            task.wait()
            if getgenv().config.sFarm then
                local notcointab = GetCoinsss(getgenv().config.Area,getgenv().config.Area2)
                local notpettab = GetMyPets()
                for i = 1, #notcointab do
                    task.spawn(function()
                        pcall(function() FarmCoin1(notcointab[i], notpettab[i%#notpettab+1]) end)
                    end)
                    task.wait(getgenv().config.sfspeed)
                end
            end
        end
    end)
    task.spawn(function()
        while true and wait(1) do
            pcall(function()
                if getgenv().config.hidpart and game:GetService("Workspace")["__MAP"].Teleports[tostring(getgenv().config.Area)] then
                    actualpart.CFrame = game:GetService("Workspace")["__MAP"].Teleports[tostring(getgenv().config.Area)].CFrame+Vector3.new(0,-20,0)
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = actualpart.CFrame + Vector3.new(0,3.7,0)
                end
            end)
        end
    end)
        --------------Method farms----------



        function GetCoins(area, area2)
            local returntable = {}
            local ListCoins = petNetwork.Invoke(coinremname)
            
            for i,v in pairs(ListCoins) do
                if v.a:match(area) and v.b ~= nil or v.a:match(area2) and v.b ~= nil then
                    kaboom = v
                    kaboom["coinname"] = i
                    table.insert(returntable, kaboom)
                end
            end
            for i,v in pairs(ListCoins) do
                if v.a:match(area) and v.b == nil or v.a:match(area2) and v.b == nil then
                    kaboom = v
                    kaboom["coinname"] = i
                    table.insert(returntable, kaboom)
                end
            end
            return returntable
        end
        
    local function sortit(area, area2)
    local sike = GetCoins(area, area2)
    local coinindex = {}
        for index in pairs(GetCoins(area,area2)) do
            table.insert(coinindex, index)
        end
        local sort = table.sort(coinindex,function(a, b)
            return sike[a].h > sike[b].h
        end)
        local sortedlist = {}
        for i,v in pairs(coinindex) do
            table.insert(sortedlist, sike[v])
        end
        return sortedlist
    end
    local function gethigh(area,area2)
        target = nil
        power = 0
        for i,v in pairs(ListCoins) do
            if v.a:match(area) and v.h > power or v.a:match(area2) and v.h > power then
                power = v.h
                target = i
            end
        end
        return target
    end
    -------method farm----------
    function GetCoinTable(area, area2)
        local CoinTable = GetCoins(area, area2)
        function getKeysSortedByValue(tbl, sortFunction)
            local keys = {}
            for key in pairs(tbl) do
                table.insert(keys, key)
            end
            table.sort(
                keys,
                function(a, b)
                    return sortFunction(tbl[a].h, tbl[b].h)
                end
            )
            return keys
        end
        local sortedKeys = getKeysSortedByValue(CoinTable, function(a, b) return a > b end)
        local newCoinTable = {}

        for i,v in pairs(sortedKeys) do
            table.insert(newCoinTable, CoinTable[v])
        end
        
        return newCoinTable
    end
    function GetCoinTable1(area, area2)
        local CoinTable = GetCoins(area, area2)
        function getKeysSortedByValue(tbl, sortFunction)
            local keys = {}
            for key in pairs(tbl) do
                table.insert(keys, key)
            end
            table.sort(
                keys,
                function(a, b)
                    return sortFunction(tbl[a].h, tbl[b].h)
                end
            )
            return keys
        end
        local sortedKeys = getKeysSortedByValue(CoinTable, function(a, b) return a < b end)
        local newCoinTable = {}

        for i,v in pairs(sortedKeys) do
            table.insert(newCoinTable, CoinTable[v])
        end
        
        return newCoinTable
    end
    task.spawn(function()
        if getgenv().config.Farm then
            if getgenv().config.Area ~= "Areas" then
                TeleportToArea(getgenv().config.Area)
            end
        end
        while true do
            task.wait()
            pcall(function()
                local CurrentFarmingPets = {}
                if getgenv().config.Farm then
                    local notpettab = GetMyPets()
                    if getgenv().config.Method == 'Multi Target' then
                        local notcointab = GetCoinsss(getgenv().config.Area, getgenv().config.Area2)
                        local notpettab = GetMyPets()
                        for i = 1, #notcointab do
                            pcall(function() FarmCoin(notcointab[i], notpettab[i%#notpettab+1]) end)
                            if not getgenv().config.Farm then
                                break
                            end
                        end
                    elseif getgenv().config.Method == "Random" then
                        local notcointab = GetCoinTable1(getgenv().config.Area, getgenv().config.Area2)
                        if #notcointab > 0 and #notpettab > 0 then
                            petNetwork.Invoke("Join Coin",  notcointab[1].coinname, GetMyPets())
                            for i2,v2 in pairs(notpettab) do
                                petNetwork.Fire("Farm Coin", notcointab[1].coinname, v2)
                            end
                        end
                        
                        --[[for i = 1, #notcointab do
                            for l,v in pairs(notpettab) do
                                local damn = {[1] = v}
                                task.spawn(function()
                                    petNetwork.Invoke("Join Coin", notcointab[i].coinname ,damn)
                                end)
                            end
                            task.wait(.1)
                            task.spawn(function()
                                petNetwork.Fire("Farm Coin", notcointab[i].coinname ,notpettab[1])
                            end)
                        end]]
                    elseif getgenv().config.Method == 'Nearest' then
                        local nearcoin = nil
                        local distance = math.huge
                        for i,v in pairs(game:GetService("Workspace")["__THINGS"].Coins:GetChildren()) do
                            if (v.POS.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < distance then
                                nearcoin = v
                                distance = (v.POS.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                            end
                        end
                        if nearcoin ~= nil and #notpettab > 0 then
                            petNetwork.Invoke("Join Coin",  nearcoin.Name, GetMyPets())
                            for i,v in pairs(GetMyPets()) do
                                petNetwork.Fire("Farm Coin", nearcoin.Name, v)
                            end
                        end
                    elseif getgenv().config.Method == 'Highest to Lowest' then
                        local notcointab = GetCoinTable(getgenv().config.Area, getgenv().config.Area2)
                        for i = 1, #notcointab do
                            if i%#notpettab == #notpettab-1 then wait() end
                            if not CurrentFarmingPets[notpettab[i%#notpettab+1]] or CurrentFarmingPets[notpettab[i%#notpettab+1]] == nil then
                                CurrentFarmingPets[notpettab[i%#notpettab+1]] = 'Farming'
                                FarmCoin(notcointab[i].coinname, notpettab[i%#notpettab+1])
                                CurrentFarmingPets[notpettab[i%#notpettab+1]] = nil   
                            end
                            if not getgenv().config.Farm then
                                break
                            end
                        end
                        
                    elseif getgenv().config.Method == 'Lowest to Highest' then
                        local notcointab = GetCoinTable1(getgenv().config.Area, getgenv().config.Area2)
                        for i = 1, #notcointab do
                            if i%#notpettab == #notpettab-1 then wait() end
                            if not CurrentFarmingPets[notpettab[i%#notpettab+1]] or CurrentFarmingPets[notpettab[i%#notpettab+1]] == nil then
                                CurrentFarmingPets[notpettab[i%#notpettab+1]] = 'Farming'
                                FarmCoin(notcointab[i].coinname, notpettab[i%#notpettab+1])
                                CurrentFarmingPets[notpettab[i%#notpettab+1]] = nil 
                            end
                            if not getgenv().config.Farm then
                                break
                            end
                        end
                    elseif getgenv().config.Method == "Lowest" then
                        local notcointab = GetCoinTable1(getgenv().config.Area, getgenv().config.Area2)
                        if #notcointab > 0 and #notpettab > 0 then    
                            petNetwork.Invoke("Join Coin", notcointab[1].coinname, GetMyPets())
                            for i,v in pairs(GetMyPets()) do
                                petNetwork.Fire("Farm Coin", notcointab[1].coinname, v)
                            end 
                        end
                    elseif getgenv().config.Method == "Highest" then
                            local notcointab = GetCoinTable(getgenv().config.Area, getgenv().config.Area2)
                            if #notcointab > 0 and #notpettab > 0 then
                                petNetwork.Invoke("Join Coin", notcointab[1].coinname, GetMyPets())
                                for i,v in pairs(GetMyPets()) do
                                    petNetwork.Fire("Farm Coin", notcointab[1].coinname, v)
                                end  
                            end
                    end
                end
            end)
        end
    end)
    ----------Hacker Portal--------------
    task.spawn(function()
        while true do
            task.wait()
            if getgenv().config.hFarm then
                function farmchest(CoinID, PetID)
                    local damn = {[1] = PetID}
                    task.spawn(function()
                        petNetwork.Invoke("Join Coin", CoinID ,damn)
                    end)
                    task.spawn(function()
                        petNetwork.Fire("Farm Coin", CoinID, PetID)
                    end)
                end
                local ListhecChest = petNetwork.Invoke(coinremname)
                for i,v in pairs(GetMyPets()) do
                    for i2,v2 in pairs(ListhecChest)do
                        if v2.n:match("Giant Hacker Chest") then
                            
                            farmchest(i2, v)
                        end
                    end
                end
            end
        end
    end)
    -----------------------------------------------------------------
boothids = {
    7722306047,
    12610002282,
    11725212117
}
    ----Booth Sniper---
    task.spawn(function()
        while true and task.wait() do
            if not table.find(boothids, game.PlaceId) then
                return
            end
           pcall(function()
                if getgenv().config.booth.sniping then
                    local booths = petNetwork.Invoke("Get All Booths");
                    for i,v in pairs(booths) do
                        
                        if not getgenv().config.booth.sniping then
                            break;
                        end
                        if v.Owner ~= game.Players.LocalPlayer.userId then
                            for i2,v2 in pairs(v.Listings) do
                                if not getgenv().config.booth.sniperarity then
                                   
                                    for l,k in pairs(getgenv().config.booth.savedpets) do
                                        if not getgenv().config.booth.sniping then
                                            break;
                                        end
                                        local petcm = petmod.PetCmds.Get(i2)
                                        if petcm == nil then
                                            return
                                        end
                                        foundedbooth = nil
                                        for b,t in pairs(game:GetService("Workspace")["__MAP"].Interactive.Booths:GetChildren()) do
                                            for b2,t2 in pairs(t.Pets.SurfaceGui.PetScroll:GetChildren()) do
                                                if t2.ClassName == "Frame" and t2.Name == i2 then
                                                    foundedbooth = t2.Parent
                                                end
                                            end
                                        end
                                        
                                        if tonumber(v2.Price) <= tonumber(k.gems) then
                                            if tostring(petcm.id) == k.name then
                                                if k.hc == "Hardcore" and petcm.hc or k.hc ~= "Hardcore" and not petcm.hc then
                                                    if k.type == "Golden" and petcm.g or k.type == "Rainbow" and petcm.r or k.type == "Dark Matter" and petcm.dm or k.type == "Shiny" and petcm.sh or k.type == "Any" then
                                                        repeat task.wait()
                                                            if (foundedbooth.Parent.Parent.Parent.Booth.CFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 20 then
                                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = foundedbooth.Parent.Parent.Parent.Booth.CFrame
                                                                wait(1)
                                                            end
                                                            if petNetwork.Invoke("Purchase Trading Booth Pet", tonumber(i), i2, tonumber(v2.Price)) then
                                                                if  getgenv().config.booth.boothweb ~= "" then
                                                                    petdire = directory.Pets[petmod.PetCmds.Get(i2).id]
                                                                    local ssid = string.split(directory.Pets["513"].thumbnail, "//")
                                                                    Sendsnipe(getgenv().config.booth.boothweb, petdire.name, petdire.rarity, numsho(v2.Price), numsho(petmod.Save.Get().Diamonds), ssid[2], numsho(petmod.PetCmds.Get(i2).s))
                                                                end
                                                            end
                                                            wait(5)
                                                        until foundedbooth[i2] == nil or not getgenv().config.booth.sniping
                                                        break;
                                                    end 
                                                end
                                            end
                                        end
                                    end 
                                else
                                    foundedbooth = nil
                                        for b,t in pairs(game:GetService("Workspace")["__MAP"].Interactive.Booths:GetChildren()) do
                                            for b2,t2 in pairs(t.Pets.SurfaceGui.PetScroll:GetChildren()) do
                                                if t2.ClassName == "Frame" and t2.Name == i2 then
                                                    foundedbooth = t2.Parent
                                                end
                                            end
                                        end
                                    local petcm = petmod.PetCmds.Get(i2)
                                    if petcm == nil then
                                        return
                                    end
                                    if getgenv().config.booth.rarities["Huges"] and directory.Pets[petmod.PetCmds.Get(i2).id].name:match("Huge") or  getgenv().config.booth.rarities["Titanics"] and directory.Pets[petmod.PetCmds.Get(i2).id].name:match("Titanic") then
                                        if directory.Pets[petmod.PetCmds.Get(i2).id] ~= nil and directory.Pets[petmod.PetCmds.Get(i2).id].name:match("Huge") or directory.Pets[petmod.PetCmds.Get(i2).id] ~= nil and directory.Pets[petmod.PetCmds.Get(i2).id].name:match("Titanic") then
                                            if tonumer(v2.Price) <= tonumber(getgenv().config.booth.raregem) then
                                                repeat task.wait()
                                                    if (foundedbooth.Parent.Parent.Parent.Booth.CFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 20 then
                                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = foundedbooth.Parent.Parent.Parent.Booth.CFrame
                                                        wait(1)
                                                    end
                                                    if petNetwork.Invoke("Purchase Trading Booth Pet", tonumber(i), i2, tonumber(v2.Price)) then
                                                        if  getgenv().config.booth.boothweb ~= "" then
                                                            petdire = directory.Pets[petmod.PetCmds.Get(i2).id]
                                                            local ssid = string.split(directory.Pets["513"].thumbnail, "//")
                                                            Sendsnipe(getgenv().config.booth.boothweb, petdire.name, petdire.rarity, numsho(v2.Price), numsho(petmod.Save.Get().Diamonds), ssid[2], numsho(petmod.PetCmds.Get(i2).s))
                                                        end
                                                    end
                                                    wait(7)
                                                until foundedbooth[i2] == nil or not getgenv().config.booth.sniping
                                            end
                                        end
                                    elseif(getgenv().config.booth.rarities[directory.Pets[petmod.PetCmds.Get(i2).id].rarity]) then
                                        if tonumber(v2.Price) <= tonumber(getgenv().config.booth.raregem) then
                                            repeat task.wait()
                                                if (foundedbooth.Parent.Parent.Parent.Booth.CFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 20 then
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = foundedbooth.Parent.Parent.Parent.Booth.CFrame
                                                    wait(1)
                                                end
                                                if not foundedbooth[i2] then
                                                    break
                                                end

                                                if petNetwork.Invoke("Purchase Trading Booth Pet", tonumber(i), i2, tonumber(v2.Price)) then
                                                    if  getgenv().config.booth.boothweb ~= "" then
                                                        petdire = directory.Pets[petmod.PetCmds.Get(i2).id]
                                                        local ssid = string.split(directory.Pets["513"].thumbnail, "//")
                                                        Sendsnipe(getgenv().config.booth.boothweb, petdire.name, petdire.rarity, numsho(v2.Price), numsho(petmod.Save.Get().Diamonds), ssid[2], numsho(petmod.PetCmds.Get(i2).s))
                                                    end
                                                end
                                                wait(7)
                                            until not foundedbooth[i2] or not getgenv().config.booth.sniping
                                        end
                                    end
                                end
                            end
                        end
                    end
                    if getgenv().config.booth.server then
                        Teleport()
                    end
                end
            end)
        end
    end)
    -------------Diamond Snipe--------------


    function GetDiam()
        local returntable = {}
        local ListDiam = petNetwork.Invoke(coinremname)
        for i,v in pairs(ListDiam) do
            if v.n:match("Diamond") then
                table.insert(returntable, i)
            end
        end
        return returntable
    end   
    task.spawn(function()  
        while true do
            task.wait()
            if getgenv().config.dFarm then
                pcall(function()
                    local notcointab = GetDiam()
                    local notpettab = GetMyPets()
                    for i = 1, #notcointab do
                        task.spawn(function()
                        pcall(function() FarmCoin(notcointab[i], notpettab[i%#notpettab+1]) end)
                        end)
                        
                    end
                end)
            end
        end
    end)

    local function getlucky()
        local ltable = {}
        for i,v in pairs(petNetwork.Invoke(coinremname)) do
            if getgenv().config.Area ~= "Areas" and v.a:match(getgenv().config.Area) then
                if v.n:match("Heart") or v.n:match("Clover") or v.n:match("Easter") and v.a == area or v.n:match("Apple") or v.n:match("Banana") or v.n:match("Pear") or v.n:match("Orange") or v.n:match("Pineapple") or v.n:match("Rainbow Fruit") then
                    table.insert(ltable, i)
                end
            end
        end
        return ltable
    end
    task.spawn(function()  
        while true and task.wait() do
            if getgenv().config.luckyfarm then
                local notpettab = GetMyPets()
                local notcointab = getlucky()
                for i,v in pairs(notcointab) do
                    task.spawn(function()
                        petNetwork.Invoke("Join Coin", v, notpettab)
                    end)
                    task.wait(getgenv().config.lfspeed)
                    for i2,v2 in pairs(notpettab) do
                        task.spawn(function()
                            petNetwork.Fire("Farm Coin", v,v2)
                        end)
                    end
                  wait(0.3)
                end
            end
        end
    end)

    task.spawn(function()
        while true do   
            wait(1)
            if getgenv().config.cb then
                if petmod.Save.Get().Boosts["Triple Coins"] == nil then
                    petNetwork.Fire(bosremname, "Triple Coins")
                end
            end
        end
    end)
    task.spawn(function()
        while true do   
            wait(1)
            if getgenv().config.cd then
                if petmod.Save.Get().Boosts["Triple Damage"] == nil then
                    petNetwork.Fire(bosremname, "Triple Damage")
                end
            end
        end
    end)
    
    task.spawn(function()
        while true do   
            wait(1)
            if getgenv().config.scb then
                if petmod.ServerBoosts.GetActiveBoosts()["Triple Coins"] == nil then
                    petNetwork.Fire(boostremname, "Triple Coins")
                end
            end
        end
    end)

    task.spawn(function()
        while true do   
            wait(1)
            if getgenv().config.scd then
                if petmod.ServerBoosts.GetActiveBoosts()["Triple Damage"] == nil then
                    petNetwork.Fire(boostremname, "Triple Damage")
                end
            end
        end
    end)
    task.spawn(function()
        while true do   
            wait(1)
            if getgenv().config.sesl then
                if petmod.ServerBoosts.GetActiveBoosts()["Super Lucky"] == nil then
                    petNetwork.Fire(boostremname, "Super Lucky")
                end
            end
        end
    end)

    task.spawn(function()
        while true do
            task.wait()
            game:GetService("Players").LocalPlayer.PlayerScripts.Scripts.Game.Coins.Disabled = getgenv().config.nl
        end
    end)
    task.spawn(function()
        while true do
            task.wait(0.05)
            if getgenv().config.ic then
                pcall(function() 
                    local OrbsToCollect = {}
                    for orbId, orb in pairs(Library.Things:FindFirstChild("Orbs"):GetChildren()) do
                        if orbId and orb then
                            table.insert(OrbsToCollect, orb.Name)
                        end
                    end
                    
                    if OrbsToCollect and #OrbsToCollect > 0 then
                        petNetwork.Fire("Claim Orbs", OrbsToCollect)
                    end
                end)
            end
        end
    end)
    
    task.spawn(function()
        while true do
            task.wait()
            if getgenv().config.cg then
                for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.FreeGifts.Frame.Container.Gifts:GetChildren()) do
                    if v:FindFirstChild("Timer") and v.Timer.Text == "Redeem!" then
                        gi = string.split(v.Name, "t")
                        petNetwork.Invoke(gifremname, tonumber(gi[2]))
                    end
                end
            end         
        end
    end)
    task.spawn(function()
        while true do
            task.wait()
            if getgenv().config.indexcol.coani or getgenv().config.rea  then
                game:GetService("Players").LocalPlayer.PlayerScripts.Scripts.Game["Open Eggs"].Disabled = true
                game:GetService("Players").LocalPlayer.PlayerScripts.Scripts.Game["Exclusive Eggs"].Disabled = true
            else
                game:GetService("Players").LocalPlayer.PlayerScripts.Scripts.Game["Open Eggs"].Disabled = false
                game:GetService("Players").LocalPlayer.PlayerScripts.Scripts.Game["Exclusive Eggs"].Disabled = false
            end
        end
    end)
    task.spawn(function()
        while true do
            task.wait()
            if getgenv().config.oe and getgenv().config.ooeil == false or getgenv().config.oe and getgenv().config.ooeil == true and petmod.ServerBoosts:GetActiveBoosts()["Insane Luck"] ~= nil then
                petNetwork.Invoke(eggremname, getgenv().config.opegg, false, false)
            end
        end
    end)
    task.spawn(function()
        while true do
            task.wait()
            if getgenv().config.toe and getgenv().config.ooeil == false or getgenv().config.toe and getgenv().config.ooeil == true and petmod.ServerBoosts:GetActiveBoosts()["Insane Luck"] ~= nil then
                petNetwork.Invoke(eggremname, getgenv().config.opegg, true, false)
            end
        end
    end)

    task.spawn(function()
        while true do
            task.wait()
            if getgenv().config.ooe and getgenv().config.ooeil == false or getgenv().config.ooe and getgenv().config.ooeil == true and petmod.ServerBoosts:GetActiveBoosts()["Insane Luck"] ~= nil then
                petNetwork.Invoke(eggremname, getgenv().config.opegg, false, true)
            end
        end
    end)

    
    task.spawn(function()
        while true do
            wait(1)
            if getgenv().config.esl then
                if petmod.Save.Get().Boosts["Super Lucky"] == nil then
                    petNetwork.Fire(bosremname, "Super Lucky")
                end
            end
        end
    end)
    task.spawn(function()
        while true do
            wait(1)
            if getgenv().config.eul then
                if petmod.Save.Get().Boosts["Ultra Lucky"] == nil then
                    petNetwork.Fire(bosremname, "Ultra Lucky")
                end
            end
        end
    end)
    task.spawn(function()
        while true do
            task.wait()
            if getgenv().config.aoi then
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Bottom.Inventory.Notification.Count.Text == "999" then
                    game.Players.LocalPlayer.PlayerGui.Inventory.Enabled = true
                    wait(2)
                    game.Players.LocalPlayer.PlayerGui.Inventory.Enabled = false
                end
            end
        end
    end)
    task.spawn(function()
        while true do
            task.wait()
            if getgenv().config.acd then
                for i,v in pairs(petmod.Save.Get().DarkMatterQueue) do
                    if math.floor(v.readyTime - os.time()) < 0 then
                        petNetwork.Invoke(redaremname, i)
                    end
                end
            end
        end
    end)
    -----Rainbow/Golden------
    task.spawn(function()
        while task.wait() do
            if getgenv().config.ac then
                petids = {}
                allpets = {}
                totalconpets = {}
                allrbpets = {}
                allgpets = {}
                for i,v in pairs(petmod.Save.Get().Pets) do
                    if getgenv().config.sm == "Golden" and not v.g and not v.r and not v.dm then
                        if getgenv().config.hcconv and v.hc or not getgenv().config.hcconv and not v.hc then
                            if getgenv().config.igrconvsh and not v.sh or not getgenv().config.igrconvsh then
                                if getgenv().config.im and petmod.Directory.Pets[v.id].rarity ~= "Mythical" or not getgenv().config.im then
                                    if not table.find(petids, v.id) then
                                        table.insert(petids, v.id)
                                    end
                                    if not table.find(allpets, v) then
                                        table.insert(allpets, v)
                                    end
                                end
                            end
                        end
                    end
                    if getgenv().config.sm == "Rainbow" and v.g then
                        if getgenv().config.hcconv and v.hc or not getgenv().config.hcconv and not v.hc then
                            if getgenv().config.igrconvsh and not v.sh or not getgenv().config.igrconvsh then
                                if getgenv().config.im and petmod.Directory.Pets[v.id].rarity ~= "Mythical" or not getgenv().config.im then
                                    if not table.find(petids, v.id) then
                                        table.insert(petids, v.id)
                                    end
                                    if not table.find(allpets, v) then
                                        table.insert(allpets, v)
                                    end
                                end
                            end
                        end
                    end
                    if getgenv().config.sm == "Golden/Rainbow" then
                        if getgenv().config.hcconv and v.hc and v.g or not getgenv().config.hcconv and not v.hc and v.g then
                            if getgenv().config.igrconvsh and not v.sh or not getgenv().config.igrconvsh then
                                if not table.find(petids, v.id) then
                                    table.insert(petids, v.id)
                                end
                                if not table.find(allrbpets, v) then
                                    table.insert(allrbpets, v)
                                end
                            end
                        end
                        if getgenv().config.hcconv and v.hc and not v.g and not v.r and not v.dm or not getgenv().config.hcconv and not v.hc and not v.g and not v.r and not v.dm then
                            if getgenv().config.igrconvsh and not v.sh or not getgenv().config.igrconvsh then
                                if getgenv().config.im and petmod.Directory.Pets[v.id].rarity ~= "Mythical" or not getgenv().config.im then
                                    if not table.find(petids, v.id) then
                                        table.insert(petids, v.id)
                                    end
                                    if not table.find(allgpets, v) then
                                        table.insert(allgpets, v)
                                    end
                                end
                            end
                        end
                    end
                end
                if getgenv().config.sm ~= "Golden/Rainbow" then
                    samepets = {}
                    for i,v in pairs(petids) do
                        for i2,v2 in pairs(allpets) do
                            if v2.id == v then
                                table.insert(samepets, v2.uid)
                            end
                        end
                        if getgenv().config.ac == false then
                            break
                        end
                        if #samepets < getgenv().config.smamt then
                            samepets = {}
                        elseif #samepets >= getgenv().config.smamt then
                            if getgenv().config.sm == "Golden" then
                                totalsamepet = {}
                                for top = 1, getgenv().config.smamt do
                                    totalsamepet[top] = samepets[top]
                                end
                                petNetwork.Invoke(golremname, totalsamepet)
                
                            elseif getgenv().config.sm == "Rainbow" then
                                totalsamepet = {}
                                for top = 1, getgenv().config.smamt do
                                    table.insert(totalsamepet, samepets[top])
                                end
                                petNetwork.Invoke(rbremname, totalsamepet)
                            end
                        end
                        samepets = {}
                    end
                elseif getgenv().config.sm == "Golden/Rainbow" then
                    samepets = {}
                    for i,v in pairs(petids) do
                        for i2,v2 in pairs(allgpets) do
                            if v2.id == v then
                                table.insert(samepets, v2.uid)
                            end
                        end
                        if getgenv().config.ac == false then
                            break
                        end
                        if #samepets < getgenv().config.smamt then
                            samepets = {}
                        elseif #samepets >= getgenv().config.smamt then
                            totalsamepet = {}
                            for top = 1, getgenv().config.smamt do
                                totalsamepet[top] = samepets[top]
                            end
                            petNetwork.Invoke(golremname, totalsamepet)
                        end
                        samepets = {}
                    end
                    for i,v in pairs(petids) do
                        for i2,v2 in pairs(allrbpets) do
                            if v2.id == v then
                                table.insert(samepets, v2.uid)
                            end
                        end
                        if getgenv().config.ac == false then
                            break
                        end
                        if #samepets < getgenv().config.smamt then
                            samepets = {}
                        elseif #samepets >= getgenv().config.smamt then
                            totalsamepet = {}
                            for top = 1, getgenv().config.smamt do
                                table.insert(totalsamepet, samepets[top])
                            end
                            petNetwork.Invoke(rbremname, totalsamepet)
                        end
                        samepets = {}
                    end
                end
            end
        end
    end)
    
    local ScreenGui = Instance.new("ScreenGui")
    local TextButton = Instance.new("TextButton")
    local UICorner = Instance.new("UICorner")

    --Properties:

    ScreenGui.Parent = game.CoreGui
    ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    TextButton.Parent = ScreenGui
    TextButton.AnchorPoint = Vector2.new(0.0500000007, 0.0500000007)
    TextButton.BackgroundColor3 = Color3.fromRGB(76, 76, 76)
    TextButton.Position = UDim2.new(0.00205338816, 0, 0.152926981, 0)
    TextButton.Size = UDim2.new(0, 60, 0, 50)
    TextButton.Font = Enum.Font.SourceSans
    TextButton.Text = "WD"
    TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextButton.TextSize = 25.000
    TextButton.Active = true
    TextButton.Draggable = true

    UICorner.CornerRadius = UDim.new(0, 10)
    UICorner.Parent = TextButton
    TextButton.MouseButton1Down:Connect(function()
        local N=game:GetService("VirtualInputManager")
        N:SendKeyEvent(true,"LeftShift",false,game)
        task.wait(0.1)
        N:SendKeyEvent(false,"LeftShift",false,game)
    end)
else
    game.Players.LocalPlayer:kick("Use Original String")
end

