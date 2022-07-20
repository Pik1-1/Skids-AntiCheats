EASYAC = {} -- DON'T CHANGE

EASYAC.Version   = 3.0
EASYAC.Port      = "30120"
EASYAC.Server	 = "Easylife"

---# Anti Health Hack #---
EASYAC.AntiHealthHack   = true
EASYAC.MaxHealth        = 200
EASYAC.HealthPunishment = "BAN" -- BAN/KICK/WARN

---# Anti Armor Hack #---
EASYAC.AntiArmorHack   = true
EASYAC.MaxArmor        = 100
EASYAC.ArmorPunishment = "BAN" -- BAN/KICK/WARN

---# Anti Tasks #---
EASYAC.AntiBlacklistTasks = true
EASYAC.TasksPunishment    = "BAN" -- BAN/KICK/WARN

---# Anti Spawn Vehicles #---
EASYAC.AntiSpawnVeh = true
EASYAC.GaragePunishment   = "BAN" -- BAN/KICK/WARN
EASYAC.GarageList = {
	{x = 345.69, y = 270.45, z = 22.49},
}

---# Anti play Anims #---
EASYAC.AntiBlacklistAnims = true
EASYAC.AnimsPunishment    = "BAN" -- BAN/KICK/WARN

---# Anti play Anims #---
Anims = {
    {"rcmpaparazzo_2", "shag_loop_poppy"},
}

---# Safe Players #---
EASYAC.SafePlayers      = true
EASYAC.AntiInfinityAmmo = true

---# Anti Noclip #---
EASYAC.AntiNoClip      = true
EASYAC.NoClipPunishment = "BAN"

---# Anti Spectate #---
EASYAC.AntiSpactate       = true
EASYAC.SpactatePunishment = "BAN" -- BAN/KICK/WARN

---# Anti Godmode #---
EASYAC.AntiGodMode    = true
EASYAC.GodPunishment  = "BAN" -- BAN/KICK/WARN

---# Anti Invisable #---
EASYAC.AntiInvisble         = true
EASYAC.InvisiblePunishment  = "BAN" -- BAN/KICK/WARN

---# Anti Change Speed #---
EASYAC.AntiChangeSpeed = false
EASYAC.SpeedPunishment = "BAN" -- BAN/KICK/WARN

---# Anti Free Cam #---
EASYAC.AntiFreeCam   = false
EASYAC.CamPunishment = "BAN" -- BAN/KICK/WARN

---# Anti Rainbow Vehicle #---
EASYAC.AntiRainbowVehicle  = true
EASYAC.RainbowPunishment   = "BAN" -- BAN/KICK/WARN

---# Anti AimBot #---
EASYAC.AntiAimBot       = false
EASYAC.AimBotPunishment = "BAN" -- BAN/KICK/WARN

---# Anti Plate #---
EASYAC.AntiPlateChanger   = true
EASYAC.AntiBlackListPlate = true
EASYAC.PlatePunishment    = "BAN" -- BAN/KICK/WARN

---# Blacklisted Plates #---
Plate = {
    'Desudo',
    'LynxMenu',
    'AKTeam',
    'Ancient',
    'BRUTAN',
    'Brutan#7799',
}

---# Anti Visions #---
EASYAC.AntiNightVision   = true
EASYAC.AntiThermalVision = true
EASYAC.VisionPunishment  = "BAN" -- BAN/KICK/WARN

---# Anti Super Jump #---
EASYAC.AntiSuperJump  = true
EASYAC.JumpPunishment = "BAN" -- BAN/KICK/WARN

---# Anti Teleport #---
EASYAC.AntiTeleport        = false
EASYAC.MaxFootDistence     = 200
EASYAC.MaxVehicleDistence  = 600
EASYAC.TeleportPunishment  = "BAN" -- BAN/KICK/WARN

---# Anti Ped Changer #---
EASYAC.AntiPedChanger       = true
EASYAC.PedChangePunishment  = "BAN" -- BAN/KICK/WARN

---# Anti Infinite Stamina #---
EASYAC.AntiInfiniteStamina    = true
EASYAC.InfinitePunishment     = "BAN" -- BAN/KICK/WARN

---# Anti Ragdoll #---
EASYAC.AntiRagdoll           =  true
EASYAC.RagdollPunishment     = "BAN" -- BAN/KICK/WARN

---# Anti Menyoo #---
EASYAC.AntiMenyoo           =  false
EASYAC.MenyooPunishment     = "BAN" -- BAN/KICK/WARN

---# Anti Aim Assist #---
EASYAC.AntiAimAssist        =  false
EASYAC.AimAssistPunishment  = "BAN" -- BAN/KICK/WARN

---# Anti Tiny Ped #---
EASYAC.AntiTinyPed        = true
EASYAC.PedFlagPunishment  = "BAN" -- BAN/KICK/WARN

---# Anti Suicide #---
EASYAC.AntiSuicide   = false
EASYAC.SuiPunishment = "BAN" -- BAN/KICK/WARN

---# Anti Collected Pickup #---
EASYAC.AntiCollectedPickup = true
EASYAC.PickupePunishment   = "BAN" -- BAN/KICK/WARN

---# Anti Chat Spam #---
EASYAC.AntiSpamChat          = true
EASYAC.MaxMessage            = 10
EASYAC.CoolDownSec           = 3
EASYAC.ChatPunishment        = "BAN" -- BAN/KICK/WARN

---# Anti Blacklisted Commands #---
EASYAC.AntiBlackListCommands = true
EASYAC.CMDPunishment         = "BAN" -- BAN/KICK/WARN

---# Blacklisted Commands #---
Commands = {
    "chocolate",
    "haha",
    "lol",
    "panickey",
    "killmenu",
    "panik",
    "ssssss",
    "brutan",
    "panic",
    "brutanpremium",
    "hammafia",
}

---# Anti Clear Ped Tasks #---
EASYAC.AntiClearPedTasks   = true
EASYAC.MaxClearPedTasks    = 5
EASYAC.CPTPunishment       = "BAN" -- BAN/KICK/WARN

---# Anti Tasks Config #---
Tasks = {
    100, --CTaskWanderingScenario
	101, --CTaskWanderingInRadiusScenario
	151, -- CTaskCarDriveWander
	221, -- CTaskWander
	222, -- CTaskWanderInArea
}

---# Anti Tazer Players #---
EASYAC.AntiTazePlayers = true
EASYAC.MaxTazeSpam     = 3
EASYAC.TazePunishment  = "BAN" -- BAN/KICK/WARN

---# Anti Inject #---
EASYAC.AntiInject        = true
EASYAC.InjectPunishment  = "BAN" -- BAN/KICK/WARN

---# Anti Spawn NPC #---
EASYAC.AntiSpawnNPC      = false