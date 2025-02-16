local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Rayfield Example Window",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "Rayfield Interface Suite",
   LoadingSubtitle = "by Sirius",
   Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Big Hub"
   },

   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local MainTab = Window:CreateTab("Main", 4483362458) -- Title, Image
local MacroTab = Window:CreateTab("Macro", 4483362458) -- Title, Image

local Start = false
local SkipWaves = false
local AutoRetry = false
local AutoLeave= false



local Toggle = MainTab:CreateToggle({
    Name = "Auto Start",
    CurrentGame = false,
    Flag = "StartMacth", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Game)
     Start = Game
     while Start do
        local args = {
            "SkipIntermission"
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Game"):FireServer(unpack(args))
         wait(0.5)
        end
     end
 })

local Toggle = MainTab:CreateToggle({
   Name = "Auto Retry",
   CurrentRetry = false,
   Flag = "Auto Retry", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Retry)
    AutoRetry = Retry
    while AutoRetry do
        local args = {
	    "Retry"
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Game"):FireServer(unpack(args))
        wait(0.5)
       end
    end
})

local Toggle = MainTab:CreateToggle({
   Name = "Auto Skip Waves",
   CurrentSkip = false,
   Flag = "Skip Waves", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Skip)
    SkipWaves = Skip
    while SkipWaves do
    game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("GameService"):WaitForChild("RF"):WaitForChild("VoteSkipWave"):InvokeServer()
        wait(0.5)
       end
    end
})

local Toggle = MainTab:CreateToggle({
    Name = "Auto Leave",
    CurrentAutoLeaves = false,
    Flag = "Auto Leave", -- Un identificator pentru fișierul de configurare
    Callback = function(AutoLeaves)
        AutoLeave = AutoLeaves
        while AutoLeave do
            -- Verificăm dacă primul eveniment există și este disponibil
            local success, result = pcall(function()
                local args = {
                    "Retry"
                    }
                    game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Game"):FireServer(unpack(args))
            end)

            -- Dacă primul eveniment nu se aplică sau dă eroare, sărim peste și mergem direct la ReturnToLobby
            if not success then
                warn("Primul eveniment nu s-a putut aplica: ", result)
            end

            -- Încercăm să apelăm ReturnToLobby
            local lobbySuccess, lobbyResult = pcall(function()
                return game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("GameService"):WaitForChild("RF"):WaitForChild("ReturnToLobby"):InvokeServer()
            end)

            -- Dacă ReturnToLobby dă eroare, oprim loop-ul
            if not lobbySuccess then
                warn("ReturnToLobby a eșuat: ", lobbyResult)
                AutoLeave = false -- Oprim loop-ul
                break
            end

            -- Așteptăm 0.5 secunde înainte de a verifica din nou
            wait(0.5)
        end
    end
})

local Button = MainTab:CreateButton({
   Name = "Leave",
   Callback = function()
     game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("GameService"):WaitForChild("RF"):WaitForChild("ReturnToLobby"):InvokeServer()
   end,
})


local Toggle = MacroTab:CreateToggle({
    Name = "Best Farm Chrismas Event",
    CurrentFarm = false,
    Flag = "Best Farm", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Farm)
    BestFarm = Farm
     while BestFarm do
        local args = {
            "PlaceUnit",
            113,
            CFrame.new(447.83013916015625, -267.8860168457031, 124.05332946777344, -0.000025755289243534207, -0.007963877171278, -0.9999683499336243, 0.0037659017834812403, 0.9999611973762512, -0.007963917218148708, 0.9999930262565613, -0.0037659869994968176, 0.000004231929779052734),
            "114#ff84bd09-89ec-49d5-a968-cf4288632f6c"
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Game"):FireServer(unpack(args))
        
        wait(0.5)
        local args = {
            "PlaceUnit",
            110,
            CFrame.new(445.076416015625, -267.8860168457031, 125.2939224243164, 0.0003503159387037158, -0.017934370785951614, -0.999839186668396, -0.017533544450998306, 0.9996853470802307, -0.017937755212187767, 0.999846339225769, 0.017537007108330727, 0.000035762786865234375),
            "114#ff84bd09-89ec-49d5-a968-cf4288632f6c"
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Game"):FireServer(unpack(args))
        wait(0.5)
        local args = {
            "PlaceUnit",
            111,
            CFrame.new(451.9302062988281, -267.8860168457031, 123.7011489868164, 0.0005569459754042327, -0.03265763819217682, -0.9994665384292603, -0.020668335258960724, 0.9992527365684509, -0.032662175595760345, 0.999786376953125, 0.020675502717494965, -0.00011843442916870117),
            "114#ff84bd09-89ec-49d5-a968-cf4288632f6c"
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Game"):FireServer(unpack(args))
        
        wait(0.5)
        local args = {
            "PlaceUnit",
            108,
            CFrame.new(455.1775817871094, -267.8860168457031, 124.49465942382812, -0.00034980152850039303, -0.012843410484492779, -0.9999176263809204, 0.022632576525211334, 0.9996612668037415, -0.012848034501075745, 0.9997439384460449, -0.02263520285487175, -0.00005900859832763672),
            "114#ff84bd09-89ec-49d5-a968-cf4288632f6c"
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Game"):FireServer(unpack(args))
        wait(0.5)
        local args = {
            "PlaceUnit",
            107,
            CFrame.new(452.0571594238281, -267.8860168457031, 120.6351547241211, -0.00007795038254698738, -0.013717989437282085, -0.999906063079834, 0.00537277664989233, 0.999891459941864, -0.01371821016073227, 0.9999856948852539, -0.005373338703066111, -0.000004231929779052734),
            "114#ff84bd09-89ec-49d5-a968-cf4288632f6c"
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Game"):FireServer(unpack(args))
        wait(0.5)
        local args = {
            "PlaceUnit",
            106,
            CFrame.new(455.4496765136719, -267.8860168457031, 121.17432403564453, -0.0003313545021228492, 0.008469169028103352, -0.99996417760849, -0.03804897144436836, 0.9992399215698242, 0.008475640788674355, 0.9992758631706238, 0.03805041313171387, -0.000008881092071533203),
            "114#ff84bd09-89ec-49d5-a968-cf4288632f6c"
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Game"):FireServer(unpack(args))
        wait(0.5)
        local args = {
            "PlaceUnit",
            104,
            CFrame.new(449.3916015625, -267.91082763671875, 120.6574478149414, 0.03246288001537323, -0.005934157408773899, -0.9994553923606873, 0.005151364021003246, 0.9999700784683228, -0.005769894924014807, 0.9994596838951111, -0.004961250815540552, 0.03249245882034302),
            "114#ff84bd09-89ec-49d5-a968-cf4288632f6c"
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Game"):FireServer(unpack(args))
        wait(0.5)
        local args = {
            "PlaceUnit",
            103,
            CFrame.new(458.6081237792969, -267.88604736328125, 122.63999938964844, -0.00015733182954136282, 0.014038250781595707, -0.9999015927314758, -0.013397307135164738, 0.9998116493225098, 0.014039096422493458, 0.9999104142189026, 0.013398193754255772, 0.00003075599670410156),
            "114#ff84bd09-89ec-49d5-a968-cf4288632f6c"
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Game"):FireServer(unpack(args))
        
        wait(0.5)
        local args = {
            "PlaceUnit",
            101,
            CFrame.new(446.4065856933594, -267.8860168457031, 122.3533706665039, 0.000005920353942201473, 0.010016593150794506, -0.9999498724937439, -0.00037204381078481674, 0.9999497532844543, 0.010016590356826782, 0.9999999403953552, 0.00037196557968854904, 0.000009655952453613281),
            "114#ff84bd09-89ec-49d5-a968-cf4288632f6c"
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Game"):FireServer(unpack(args))
        wait(0.5)
        local args = {
            "PlaceUnit",
            97,
            CFrame.new(449.9124755859375, -267.8860168457031, 124.8709945678711, -0.00035223655868321657, -0.027085505425930023, -0.9996331930160522, 0.014086027629673481, 0.9995337724685669, -0.027087777853012085, 0.9999008178710938, -0.014090397395193577, 0.00002944469451904297),
            "114#ff84bd09-89ec-49d5-a968-cf4288632f6c"
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Game"):FireServer(unpack(args))
        
        wait(0.5)
        local args = {
            "PlaceUnit",
            95,
            CFrame.new(452.7178039550781, -267.8860168457031, 118.99169158935547, 0.00005355836037779227, -0.002795509062707424, -0.9999961256980896, -0.019971255213022232, 0.9997966885566711, -0.0027960222214460373, 0.9998006224632263, 0.019971325993537903, -0.0000022649765014648438),
            "114#ff84bd09-89ec-49d5-a968-cf4288632f6c"
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Game"):FireServer(unpack(args))
        wait(0.5)
        local args = {
            "PlaceUnit",
            94,
            CFrame.new(457.25299072265625, -267.88604736328125, 125.6836929321289, -0.0005160693544894457, 0.01238237228244543, -0.9999231696128845, -0.040579356253147125, 0.9990994930267334, 0.01239311508834362, 0.9991762042045593, 0.04058263450860977, -0.000013113021850585938),
            "114#ff84bd09-89ec-49d5-a968-cf4288632f6c"
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Game"):FireServer(unpack(args))
        wait(0.5)
        local args = {
            "PlaceUnit",
            93,
            CFrame.new(449.9324645996094, -267.8859558105469, 122.43058013916016, -0.00021057554113212973, 0.019661666825413704, -0.9998067021369934, -0.0056074210442602634, 0.9997909665107727, 0.019662536680698395, 0.9999843239784241, 0.005610474850982428, -0.00010025501251220703),
            "114#ff84bd09-89ec-49d5-a968-cf4288632f6c"
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Game"):FireServer(unpack(args))
        wait(0.5)
        local args = {
            "PlaceUnit",
            92,
            CFrame.new(460.3833312988281, -267.88604736328125, 127.52274322509766, 0.000018120137610821985, 0.006940593011677265, -0.9999759197235107, 0.002768883714452386, 0.9999721050262451, 0.0069406162947416306, 0.9999961853027344, -0.002768942853435874, -0.0000010728836059570312),
            "114#ff84bd09-89ec-49d5-a968-cf4288632f6c"
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Game"):FireServer(unpack(args))
        
        wait(0.5)
        local args = {
            "PlaceUnit",
            91,
            CFrame.new(447.0986022949219, -267.8860168457031, 126.30472564697266, -0.00004428064858075231, -0.00796523131430149, -0.9999683499336243, 0.006066963076591492, 0.9999498724937439, -0.007965353317558765, 0.999981701374054, -0.006067122798413038, 0.0000040531158447265625),
            "114#ff84bd09-89ec-49d5-a968-cf4288632f6c"
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Game"):FireServer(unpack(args))
        
        wait(0.5)
        local args = {
            "PlaceUnit",
            90,
            CFrame.new(444.0237731933594, -267.8865051269531, 123.23590850830078, 0.000673206988722086, -0.0007367499638348818, -0.9999995827674866, 0.0014726733788847923, 0.9999986886978149, -0.0007357577560469508, 0.9999987483024597, -0.0014721773331984878, 0.0006743073463439941),
            "114#ff84bd09-89ec-49d5-a968-cf4288632f6c"
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Game"):FireServer(unpack(args))
        
        wait(0.5)
        local args = {
            "PlaceUnit",
            118,
            CFrame.new(443.7179870605469, -267.8860168457031, 127.36772918701172, 0.0009392916690558195, 0.039442501962184906, -0.9992214441299438, 0.024054033681750298, 0.9989318251609802, 0.03945368900895119, 0.9997103214263916, -0.024072367697954178, -0.00001049041748046875),
            "114#ff84bd09-89ec-49d5-a968-cf4288632f6c"
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Game"):FireServer(unpack(args))
        wait(0.5)
        local args = {
            "PlaceUnit",
            119,
            CFrame.new(442.2741394042969, -267.896484375, 125.03337097167969, 0.013887159526348114, 0.008987092413008213, -0.99986332654953, 0.0163306575268507, 0.9998242259025574, 0.009213561192154884, 0.9997703433036804, -0.016456373035907745, 0.013737976551055908),
            "114#ff84bd09-89ec-49d5-a968-cf4288632f6c"
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Game"):FireServer(unpack(args))
        wait(0.5)
        local args = {
            "PlaceUnit",
            120,
            CFrame.new(462.5142517089844, -267.8860168457031, 129.4737548828125, -0.0008675603312440217, -0.019239120185375214, -0.999814510345459, 0.0365467369556427, 0.9991464018821716, -0.019257977604866028, 0.9993315935134888, -0.0365566648542881, -0.00016367435455322266),
            "114#ff84bd09-89ec-49d5-a968-cf4288632f6c"
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Game"):FireServer(unpack(args))
        wait(0.5)
        local args = {
            "PlaceUnit",
            121,
            CFrame.new(440.7858581542969, -267.8860168457031, 129.32362365722656, 0.00020209120702929795, 0.00319632887840271, -0.9999949336051941, 0.022478990256786346, 0.9997422099113464, 0.003200066275894642, 0.9997473359107971, -0.022479522973299026, 0.00013017654418945312),
            "114#ff84bd09-89ec-49d5-a968-cf4288632f6c"
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Game"):FireServer(unpack(args))
        wait(0.5)
        local args = {
            "PlaceUnit",
            122,
            CFrame.new(439.9260559082031, -267.88787841796875, 126.5376205444336, 0.002192774321883917, 0.011540855281054974, -0.9999310374259949, -0.011949564330279827, 0.9998623132705688, 0.01151385810226202, 0.9999262690544128, 0.011923492886126041, 0.0023303627967834473),
            "114#ff84bd09-89ec-49d5-a968-cf4288632f6c"
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Game"):FireServer(unpack(args))
        wait(0.5)
        local args = {
            "PlaceUnit",
            123,
            CFrame.new(440.0323181152344, -267.9242248535156, 116.28935241699219, 0.050041086971759796, -0.0033006479497998953, -0.9987418055534363, -0.0018094175029546022, 0.9999926090240479, -0.0033954414539039135, 0.9987456202507019, 0.001977052539587021, 0.05003476142883301),
            "114#ff84bd09-89ec-49d5-a968-cf4288632f6c"
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Game"):FireServer(unpack(args))
        wait(0.5)
        local args = {
            "PlaceUnit",
            124,
            CFrame.new(442.6768798828125, -267.8865051269531, 115.0195541381836, 0.0004263782757334411, 0.019105104729533195, -0.9998174905776978, -0.01150190457701683, 0.9997513890266418, 0.01909893937408924, 0.9999338388442993, 0.01149166002869606, 0.0006459951400756836),
            "114#ff84bd09-89ec-49d5-a968-cf4288632f6c"
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Game"):FireServer(unpack(args))
        wait(0.5)
        local args = {
            "PlaceUnit",
            125,
            CFrame.new(445.282958984375, -267.88720703125, 113.460693359375, 0.0022060151677578688, -0.03456813097000122, -0.9993999004364014, -0.01808962970972061, 0.9992374181747437, -0.034602440893650055, 0.9998339414596558, 0.018155109137296677, 0.001578986644744873),
            "114#ff84bd09-89ec-49d5-a968-cf4288632f6c"
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Game"):FireServer(unpack(args))
        wait(0.5)
        local args = {
            "PlaceUnit",
            128,
            CFrame.new(447.50836181640625, -267.8861999511719, 112.08290100097656, 0.0009253761381842196, -0.03752673417329788, -0.9992952346801758, -0.017788901925086975, 0.9991368651390076, -0.037537261843681335, 0.9998413324356079, 0.01781109720468521, 0.0002570152282714844),
            "114#ff84bd09-89ec-49d5-a968-cf4288632f6c"
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Game"):FireServer(unpack(args))
        wait(0.5)
        local args = {
            "PlaceUnit",
            129,
            CFrame.new(450.406494140625, -267.8860168457031, 111.05667877197266, 0.00000588233478993061, -0.0007423348142765462, -0.9999997615814209, 0.0001461249776184559, 0.9999997615814209, -0.0007423339411616325, 1, -0.00014612055383622646, 0.000006020069122314453),
            "114#ff84bd09-89ec-49d5-a968-cf4288632f6c"
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Game"):FireServer(unpack(args))
        wait(0.5)
        local args = {
            "PlaceUnit",
            132,
            CFrame.new(453.3601379394531, -267.91082763671875, 110.52445983886719, 0.032591477036476135, -0.007200395688414574, -0.9994429349899292, -0.0061187054961919785, 0.9999538660049438, -0.007403607480227947, 0.9994500875473022, 0.006356591358780861, 0.03254592418670654),
            "114#ff84bd09-89ec-49d5-a968-cf4288632f6c"
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Game"):FireServer(unpack(args))
        wait(0.5)
        local args = {
            "PlaceUnit",
            133,
            CFrame.new(456.2620544433594, -267.8860168457031, 111.03018951416016, -0.000551585981156677, 0.011557464487850666, -0.9999331831932068, -0.038785822689533234, 0.9991805553436279, 0.011570160277187824, 0.9992474913597107, 0.03878960758447647, -0.00010287761688232422),
            "114#ff84bd09-89ec-49d5-a968-cf4288632f6c"
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Game"):FireServer(unpack(args))
        
        wait(0.5)
        local args = {
            "PlaceUnit",
            134,
            CFrame.new(458.28594970703125, -267.8861389160156, 111.97760772705078, 0.00007627572631463408, 0.012575868517160416, -0.9999209642410278, -0.013607686385512352, 0.9998283982276917, 0.012573665007948875, 0.9999074935913086, 0.013605650514364243, 0.0002474188804626465),
            "114#ff84bd09-89ec-49d5-a968-cf4288632f6c"
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Game"):FireServer(unpack(args))
        wait(0.5)
        local args = {
            "PlaceUnit",
            135,
            CFrame.new(460.3687438964844, -267.8863220214844, 113.65679931640625, 0.004079482052475214, 0.08579107373952866, -0.9963049292564392, 0.041857846081256866, 0.9954252243041992, 0.08588673174381256, 0.9991154074668884, -0.042053550481796265, 0.0004698038101196289),
            "114#ff84bd09-89ec-49d5-a968-cf4288632f6c"
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Game"):FireServer(unpack(args))
        wait(0.5)
        local args = {
            "PlaceUnit",
            136,
            CFrame.new(462.7184143066406, -267.88677978515625, 114.75822448730469, -0.005175736267119646, 0.09489572048187256, -0.9954738020896912, -0.06438113749027252, 0.9933902025222778, 0.09503183513879776, 0.9979119896888733, 0.06458159536123276, 0.0009679794311523438),
            "114#ff84bd09-89ec-49d5-a968-cf4288632f6c"
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Game"):FireServer(unpack(args))
        
        
        wait(0.5)
        local args = {
            "PlaceUnit",
            137,
            CFrame.new(438.226806640625, -267.89044189453125, 118.13897705078125, 0.005443068686872721, -0.02087746560573578, -0.9997673034667969, 0.010290052741765976, 0.9997302889823914, -0.02082066982984543, 0.9999322891235352, -0.010174326598644257, 0.005656421184539795),
            "114#ff84bd09-89ec-49d5-a968-cf4288632f6c"
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Game"):FireServer(unpack(args))
        wait(0.5)
        local args = {
            "PlaceUnit",
            138,
            CFrame.new(436.6920166015625, -267.88677978515625, 119.75065612792969, 0.0011676672147586942, -0.016327902674674988, -0.9998660683631897, -0.007035565562546253, 0.9998418092727661, -0.01633572392165661, 0.9999746680259705, 0.007053697947412729, 0.0010526180267333984),
            "114#ff84bd09-89ec-49d5-a968-cf4288632f6c"
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Game"):FireServer(unpack(args))
        
        wait(0.5)
        local args = {
            "PlaceUnit",
            139,
            CFrame.new(434.50482177734375, -267.88787841796875, 121.45259094238281, 0.0024748537689447403, -0.0014773791190236807, -0.9999959468841553, -0.003962657414376736, 0.9999910593032837, -0.0014871794264763594, 0.9999891519546509, 0.003966322168707848, 0.002469003200531006),
            "114#ff84bd09-89ec-49d5-a968-cf4288632f6c"
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Game"):FireServer(unpack(args))
        wait(0.5)
        local args = {
            "PlaceUnit",
            77,
            CFrame.new(436.3651428222656, -267.8936767578125, 117.4336166381836, 0.002023587003350258, -0.08395105600357056, -0.9964678287506104, 0.07679013907909393, 0.9935405850410461, -0.08354850113391876, 0.9970452785491943, -0.07634983956813812, 0.00845712423324585),
            "114#ff84bd09-89ec-49d5-a968-cf4288632f6c"
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Game"):FireServer(unpack(args))
        wait(0.5)
        local args = {
            "PlaceUnit",
            76,
            CFrame.new(438.7676696777344, -268.02642822265625, 114.28314971923828, 0.18173034489154816, 0.024015985429286957, -0.9830551147460938, 0.013195402920246124, 0.9995521306991577, 0.026858346536755562, 0.983259916305542, -0.01785278506577015, 0.1813320517539978),
            "114#ff84bd09-89ec-49d5-a968-cf4288632f6c"
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Game"):FireServer(unpack(args))
        wait(0.5)
        local args = {
            "PlaceUnit",
            67,
            CFrame.new(441.365478515625, -267.89727783203125, 112.54134368896484, 0.013732160441577435, 0.0042727114632725716, -0.9998966455459595, -0.003028788371011615, 0.9999864101409912, 0.004231499508023262, 0.9999011754989624, 0.002970367204397917, 0.013744890689849854),
            "114#ff84bd09-89ec-49d5-a968-cf4288632f6c"
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Game"):FireServer(unpack(args))
        
        wait(0.5)
        local args = {
            "PlaceUnit",
            65,
            CFrame.new(444.2449951171875, -267.8875732421875, 111.28703308105469, 0.001699486281722784, 0.012605274096131325, -0.9999191761016846, 0.0031628403812646866, 0.9999154806137085, 0.01261060405522585, 0.9999936819076538, -0.003184017725288868, 0.0016594529151916504),
            "114#ff84bd09-89ec-49d5-a968-cf4288632f6c"
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Game"):FireServer(unpack(args))
        
        wait(0.5)
        local args = {
            "PlaceUnit",
            64,
            CFrame.new(447.5139465332031, -267.88677978515625, 109.67574310302734, -0.000233407539781183, -0.051450587809085846, -0.998675525188446, 0.008553287014365196, 0.998638927936554, -0.0514507032930851, 0.9999634623527527, -0.008553963154554367, 0.00020700693130493164),
            "114#ff84bd09-89ec-49d5-a968-cf4288632f6c"
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Game"):FireServer(unpack(args))
        wait(0.5)
        local args = {
            "PlaceUnit",
            71,
            CFrame.new(451.1626281738281, -267.9021301269531, 108.09970092773438, 0.021580327302217484, -0.019617417827248573, -0.9995747208595276, -0.021539362147450447, 0.9995663166046143, -0.020082278177142143, 0.9995351433753967, 0.021963583305478096, 0.0211484432220459),
            "114#ff84bd09-89ec-49d5-a968-cf4288632f6c"
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Game"):FireServer(unpack(args))
        wait(0.5)
        local args = {
            "PlaceUnit",
            79,
            CFrame.new(454.5597229003906, -267.9021301269531, 108.02554321289062, 0.020999066531658173, 0.0054581137374043465, -0.999764621257782, -0.02806108072400093, 0.9995943903923035, 0.004867790266871452, 0.9993856549263, 0.027952255681157112, 0.021143734455108643),
            "114#ff84bd09-89ec-49d5-a968-cf4288632f6c"
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Game"):FireServer(unpack(args))
        wait(0.5)
        local args = {
            "PlaceUnit",
            87,
            CFrame.new(456.9649353027344, -267.88677978515625, 108.78734588623047, 0.0018286078702658415, 0.0354221872985363, -0.999370813369751, 0.019613850861787796, 0.999178946018219, 0.03545127809047699, 0.9998060464859009, -0.019666336476802826, 0.001132369041442871),
            "114#ff84bd09-89ec-49d5-a968-cf4288632f6c"
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Game"):FireServer(unpack(args))
        wait(0.5)
        local args = {
            "PlaceUnit",
            88,
            CFrame.new(459.32965087890625, -267.8860168457031, 109.98431396484375, 0.0012190702836960554, -0.0068801455199718475, -0.9999755620956421, -0.10192073881626129, 0.9947681427001953, -0.006968565285205841, 0.9947917461395264, 0.10192674398422241, 0.000511467456817627),
            "114#ff84bd09-89ec-49d5-a968-cf4288632f6c"
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Game"):FireServer(unpack(args))
        wait(0.5)
        local args = {
            "PlaceUnit",
            53,
            CFrame.new(442.08489990234375, -267.89715576171875, 109.3086166381836, 0.01217280887067318, -0.05124717205762863, -0.9986119270324707, 0.028876574710011482, 0.9982873201370239, -0.05087851360440254, 0.9995089769363403, -0.028217148035764694, 0.013631820678710938),
            "114#ff84bd09-89ec-49d5-a968-cf4288632f6c"
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Game"):FireServer(unpack(args))
        
        wait(0.5)
        local args = {
            "PlaceUnit",
            117,
            CFrame.new(444.9956970214844, -268.0254211425781, 107.84376525878906, 0.1816810965538025, 0.0263473279774189, -0.9830045700073242, 0.01062200590968132, 0.9995300769805908, 0.02875344641506672, 0.9833002090454102, -0.015665439888834953, 0.1813158392906189),
            "114#ff84bd09-89ec-49d5-a968-cf4288632f6c"
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Game"):FireServer(unpack(args))
        
        wait(0.5)
        local args = {
            "PlaceUnit",
            114,
            CFrame.new(461.5077819824219, -267.9242248535156, 111.4814682006836, 0.05054469406604767, 0.0018658898770809174, -0.9987201690673828, 0.09273450076580048, 0.9956693053245544, 0.006553445011377335, 0.9944072961807251, -0.09294703602790833, 0.05015277862548828),
            "114#ff84bd09-89ec-49d5-a968-cf4288632f6c"
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Game"):FireServer(unpack(args))
         wait(0.5)
        end
     end
 })

