EASYACS = {} -- DON'T CHANGE

---# Bypass and Admins #---
EASYACS.Admin = "easyac.admin"
EASYACS.Bypass = "easyac.bypass"

---# Kick and Ban Message #---
EASYACS.Message = {
    Kick = "You Are Kicked From Server Protection By EASYACS® Don't Try For Cheat in this server",
    Ban  = "You Are Banned Form Server Please Make Ticket in EASYACS®",
}

---# Anti Resource Start/Stop/Restart #---
EASYACS.AntiResourceStoper     = false
EASYACS.AntiResourceStarter    = false
EASYACS.AntiResourceRestarter  = false
EASYACS.ResourcePunishment     = "BAN" -- BAN/KICK/WARN

---# Anti Explotions #---
EASYACS.AntiBlackListExplosion   = true
EASYACS.AntiExplosionSpam        = true
EASYACS.MaxExplosion             = 10
EASYACS.ExplosionSpamPunishment  = "BAN" -- BAN/KICK/WARN

---# Anti Spam Object #---
EASYACS.AntiSpamObject    = true
EASYACS.MaxObject         = 15
EASYACS.SpamPunishment    = "BAN" -- BAN/KICK/WARN

---# Anti Spam Vehicle #---
EASYACS.AntiSpamVehicle   = true
EASYACS.MaxVehicle        = 10

---# Anti Spam Ped #---
EASYACS.AntiSpamPed       = false
EASYACS.MaxPed            = 4

---# Blacklisted Explotions #---
Explosion = {
    [0] =  { NAME = "Grenade",              Log = true,  Punishment = "BAN"  },
    [1] =  { NAME = "GrenadeLauncher",      Log = true,  Punishment = "BAN"  },
    [2] =  { NAME = "Stick Bomb",           Log = true,  Punishment = false  },
    [3] =  { NAME = "Molotov",              Log = true,  Punishment = "BAN"  },
    [4] =  { NAME = "Rocket",               Log = true,  Punishment = "BAN"  },
    [5] =  { NAME = "TankShell",            Log = true,  Punishment = "BAN"  },
    [6] =  { NAME = "Hi_Octane",            Log = false, Punishment = false  },
    [7] =  { NAME = "Car",                  Log = false, Punishment = false  },
    [8] =  { NAME = "Plance",               Log = false, Punishment = false  },
    [9] =  { NAME = "PetrolPump",           Log = false, Punishment = false  },
    [10] = { NAME = "Bike",                 Log = false, Punishment = false  },
    [11] = { NAME = "Dir_Steam",            Log = false, Punishment = false  },
    [12] = { NAME = "Dir_Flame",            Log = false, Punishment = false  },
    [13] = { NAME = "Dir_Water_Hydrant",    Log = false, Punishment = false  },
    [14] = { NAME = "Dir_Gas_Canister",     Log = false, Punishment = false  },
    [15] = { NAME = "Boat",                 Log = false, Punishment = false  },
    [16] = { NAME = "Ship_Destroy",         Log = false, Punishment = false  },
    [17] = { NAME = "Truck",                Log = false, Punishment = false  },
    [18] = { NAME = "Bullet",               Log = true,  Punishment = "BAN"  },
    [19] = { NAME = "SmokeGrenadeLauncher", Log = true,  Punishment = "BAN"  },
    [20] = { NAME = "SmokeGrenade",         Log = false, Punishment = false  },
    [21] = { NAME = "BZGAS",                Log = false, Punishment = false  },
    [22] = { NAME = "Flare",                Log = false, Punishment = false  },
    [23] = { NAME = "Gas_Canister",         Log = false, Punishment = false  },
    [24] = { NAME = "Extinguisher",         Log = false, Punishment = false  },
    [25] = { NAME = "Programmablear",       Log = false, Punishment = false  },
    [26] = { NAME = "Train",                Log = false, Punishment = false  },
    [27] = { NAME = "Barrel",               Log = false, Punishment = false  },
    [28] = { NAME = "PROPANE",              Log = false, Punishment = false  },
    [29] = { NAME = "Blimp",                Log = false, Punishment = false  },
    [30] = { NAME = "Dir_Flame_Explode",    Log = false, Punishment = false  },
    [31] = { NAME = "Tanker",               Log = false, Punishment = false  },
    [32] = { NAME = "PlaneRocket",          Log = true,  Punishment = "BAN"  },
    [33] = { NAME = "VehicleBullet",        Log = false, Punishment = false  },
    [34] = { NAME = "Gas_Tank",             Log = true,  Punishment = "WARN" },
    [35] = { NAME = "FireWork",             Log = false, Punishment = false  },
    [36] = { NAME = "SnowBall",             Log = false, Punishment = false  },
    [37] = { NAME = "Valkyrie_Cannon",      Log = true,  Punishment = "BAN"  }
}

---# Blacklisted Names #---
Names = {
    "administrator",
    "admin",
    "adm1n",
    "adm!n",
    "admln",
    "moderator",
    "owner",
    "nigger",
    "n1gger",
}

---# Anti Objects #---
EASYACS.AntiBlackListObject   = true
EASYACS.AntiBlackListPed      = true
EASYACS.AntiBlackListBuilding = true
EASYACS.AntiBlackListVehicle  = true
EASYACS.EntityPunishment      = "BAN" -- BAN/KICK/WARN

---# Blacklisted Objects #---
Objects = {
    'prop_cs_dildo_01',
    'prop_speaker_05',
    'prop_speaker_01',
    'prop_speaker_03',
    'surano',
    'ar_prop_ar_bblock_huge_01',
    'dt1_05_build1_damage',
    'prop_juicestand',
    'prop_knife',
    'p_bloodsplat_s',
    'p_spinning_anus_s',
    'dt1_lod_slod3',
    'prop_xmas_tree_int',
    'prop_cs_cardbox_01',
    'prop_alien_egg_01',
    'prop_tv_03',
    'prop_beach_fire',
    'prop_windmill_01_l1',
    'stt_prop_stunt_track_start',
    'stt_prop_stunt_track_start_02',
    'apa_prop_flag_mexico_yt',
    'apa_prop_flag_us_yt',
    'apa_prop_flag_uk_yt',
    'prop_jetski_ramp_01',
    'prop_const_fence03b_cr',
    'prop_fnclink_03gate5',
    'ind_prop_firework_03',
    'prop_weed_01',
    'prop_weed_01',
    'xs_prop_hamburgher_wl',
    'prop_container_01a',
    'prop_contnr_pile_01a',
    'ce_xr_ctr2',
    'stt_prop_ramp_jump_xxl',
    'hei_prop_carrier_jet',
    'prop_parking_hut_2',
    'csx_seabed_rock3_',
    'db_apart_03_',
    'db_apart_09_',
    'stt_prop_stunt_tube_l',
    'stt_prop_stunt_track_dwuturn',
    'sr_prop_spec_tube_xxs_01a',
	'prop_air_bigradar',
	'p_tram_crash_s',
    'prop_fnclink_03a',
    'prop_fnclink_05crnr1',
    'xs_prop_plastic_bottle_wl',
    'prop_windmill_01',
	'prop_gold_cont_01',
	'p_cablecar_s',
	'stt_prop_stunt_tube_l',
	'stt_prop_stunt_track_dwuturn',
	'prop_ld_ferris_wheel',
	'prop_ferris_car_01',
	'p_ferris_car_01',
	'stt_prop_ramp_spiral_l',
	'stt_prop_ramp_spiral_l_l',
	'stt_prop_ramp_multi_loop_rb',
	'stt_prop_ramp_spiral_l_xxl',
	'stt_prop_ramp_spiral_xxl',
	'stt_prop_stunt_bblock_huge_01',
	'stt_prop_stunt_bblock_huge_02',
	'stt_prop_stunt_bblock_huge_03',
	'stt_prop_stunt_bblock_huge_04',
	'stt_prop_stunt_bblock_huge_05',
	'stt_prop_stunt_bblock_hump_01',
	'stt_prop_stunt_bblock_qp',
	'stt_prop_stunt_bblock_qp2',
	'stt_prop_stunt_jump_loop',
	'stt_prop_stunt_landing_zone_01',
	'stt_prop_stunt_track_dwslope45',
	'stt_prop_stunt_track_dwturn',
	'stt_prop_stunt_track_dwslope30',
	'stt_prop_stunt_track_dwsh15',
	'stt_prop_stunt_track_dwshort',
	'stt_prop_stunt_track_dwslope15',
	'stt_prop_stunt_track_dwuturn',
	'stt_prop_stunt_track_exshort',
	'stt_prop_stunt_track_fork',
	'stt_prop_stunt_track_funlng',
	'stt_prop_stunt_track_funnel',
	'stt_prop_stunt_track_hill',
	'stt_prop_stunt_track_slope15',
	'stt_prop_stunt_track_slope30',
	'stt_prop_stunt_track_slope45',
    'prop_gas_pump_1a',
    'prop_gas_pump_1b',
    'prop_gas_pump_1c',
    'prop_gas_pump_1d',
    'prop_rock_1_a',
    'prop_vintage_pump',
    'prop_gas_pump_old2',
    'prop_gas_pump_old3',
    'apa_mp_h_acc_box_trinket_01',
    'prop_roundbailer02',
    'prop_roundbailer01',
    'prop_container_05a',
    'stt_prop_stunt_bowling_ball',
    'apa_mp_h_acc_rugwoolm_03',
    'prop_container_ld2',
    'p_ld_stinger_s',
    'hei_prop_carrier_cargo_02a',
    'p_cablecar_s',
    'p_ferris_car_01',
	'prop_rock_4_big2',
	'prop_steps_big_01',
	'v_ilev_lest_bigscreen',
	'prop_carcreeper',
	'apa_mp_h_bed_double_09',
	'apa_mp_h_bed_wide_05',
	'prop_cattlecrush',
	'prop_cs_documents_01',
    'prop_construcionlamp_01',
	'prop_fncconstruc_01d',
	'prop_fncconstruc_02a',
	'p_dock_crane_cabl_s',
	'prop_dock_crane_01',
	'prop_dock_crane_02_cab',
	'prop_dock_float_1',
	'prop_dock_crane_lift',
	'apa_mp_h_bed_wide_05',
	'apa_mp_h_bed_double_08',
	'apa_mp_h_bed_double_09',
	'csx_seabed_bldr4_',
	'imp_prop_impexp_sofabed_01a',
	'apa_mp_h_yacht_bed_01',
    'cs4_lod_04_slod2',
    'dt1_05_build1_damage',
    'po1_lod_slod4',
    'id2_lod_slod4',
    'ap1_lod_slod4',
    'sm_lod_slod2_22',
    'prop_ld_ferris_wheel',
    'prop_container_05a',
    'prop_gas_tank_01a',
    'p_crahsed_heli_s',
    'prop_gas_pump_1d',
    'prop_gas_pump_1a',
    'prop_gas_pump_1b',
    'prop_gas_pump_1c',
    'prop_vintage_pump',
    'prop_gas_pump_old2',
    'prop_gas_pump_old3',
    'prop_gascyl_01a',
    'prop_ld_toilet_01',
    'prop_ld_bomb_anim',
    'prop_ld_farm_couch01',
    'prop_beachflag_le',
    'stt_prop_stunt_track_uturn',
    'stt_prop_stunt_track_turnice',
}

---# Blacklisted Peds #---
Peds =  {
    'a_c_deer',
    'a_c_cat_01',
    's_m_y_swat_01',
    'a_m_o_acult_01',
    'a_c_mtlion',
    'MountainLion',
    'Surfer01AMY',
    'mp_f_cocaine_01',
    'a_m_y_surfer_01',
    's_m_m_autoshop_01',
    'a_m_o_acult_01',
    'a_c_boar',
    'a_c_killerwhale',
    'a_c_sharktiger',
    'csb_stripper_01',
    's_m_y_baywatch_01',
    'a_m_m_acult_01',
    'ig_barry',
    'g_m_y_ballaeast_01',
    'u_m_y_babyd',
    'a_m_y_acult_01',
    'a_m_m_afriamer_01',
    'u_m_y_corpse_01',
    's_m_m_armoured_02',
    'g_m_m_armboss_01',
    'g_m_y_armgoon_02',
    's_m_y_blackops_03',
    's_m_y_blackops_01',
    's_m_y_prismuscl_01',
    'g_m_m_chemwork_01',
    'a_m_y_musclbeac_01',
    'csb_cop',
    's_m_y_clown_01',
    'u_m_y_zombie_01',
    'cs_debra',
    'a_f_m_beach_01',
    'a_f_m_bodybuild_01',
    'a_f_m_business_02',
    'a_f_y_business_04',
    'mp_f_cocaine_01',
    'u_f_y_corpse_01',
    'mp_f_meth_01',
    'g_f_importexport_01',
    'a_f_y_vinewood_04',
    'a_m_m_tranvest_01',
    'a_m_m_tranvest_02',
    'ig_tracydisanto',
    'csb_stripper_02',
    's_f_y_stripper_01',
    'a_f_m_soucentmc_01',
    'a_f_m_soucent_02',
    'u_f_y_poppymich',
    'ig_patricia',
    's_f_y_cop_01',
    'a_c_husky',
    'a_c_cat_01',
    'a_c_boar',
    'a_c_sharkhammer',
    'a_c_chimp',
    'a_c_chop',
    'a_c_cow',
    'a_c_dolphin',
    'a_c_fish',
    'a_c_hen',
    'a_c_humpback',
    'a_c_killerwhale',
    'a_c_mtlion',
    'a_c_pig',
    'a_c_pug',
    'a_c_retriever',
    'a_c_rhesus',
    'a_c_rottweiler',
    'a_c_sharktiger',
    'a_c_shepherd',
    'a_c_westy'
}

WhiteListPeds = {
    "player_zero",
    "player_one",
    "player_two",
    "mp_f_freemode_01",
    "mp_m_freemode_01",
    "a_m_y_skater_01",
    "a_m_y_skater_02"
}

---# Anti Play Sound #---
EASYACS.AntiPlaySound    = true
EASYACS.SoundPunishment  = "BAN" -- BAN/KICK/WARN

---# Anti Change Permissions #---
EASYACS.AntiChangePerm    = true
EASYACS.PermPunishment    = "BAN" -- BAN/KICK/WARN

---# Anti Track Player #---
EASYACS.AntiTrackPlayer = true
EASYACS.MaxTrack        = 10
EASYACS.TrackPunishment = "BAN" -- BAN/KICK/WARN

---# Blacklisted Vehicle #---
Vehicle = {
    'RHINO',
    'dune4'
}

---# Anti Blacklisted Words #---
EASYACS.AntiBlackListWord   = true
EASYACS.WordPunishment      = "BAN" -- BAN/KICK/WARN

---# Blacklisted Words on screen #---
Words = {
    "Fallout Menu",
    "Fallout",
    "Cheat",
    "Eulen",
    "Weapon Menu",
    "Self Menu"
}

---# Emojis (Don't Edit) #---
Emoji = {
    Tick       = "✅",
    Fire       = "",
    ScreenShot = "🧑🏼‍💻",
    Warn       = "📢",
    Kick       = "⚡️",
    Ban        = "⛔️",
    Connect    = "🟩",
    Disconnect = "🟥",
    TFJ        = "⚠️",
    Exoplosion = "🚒",
    BLN        = "🤬",
    Beard      = "🐦",
    Speed      = "💨",
    GodMode    = "🔱",
    Ghost      = "👻",
    Kill       = "⚰️",
    RGB        = "🌈️",
    Heal       = "✨",
    Armor      = "🛡️",
    Weapon     = "🔫",
    No         = "❌",
    Coords     = "🎯",
    Camera     = "📷",
    Glasses    = "👓",
    Bot        = "🤖",
    Car        = "🚙",
    Buling     = "🏢",
    Peds       = "🧍",
    Abnamat    = "📍",
    Fix        = "🔧",
    Engine     = "👩‍🦼",
    Monkey     = "🐒",
    Mouse      = "🐀",
    Dog        = "🐶",
    Cat        = "🐱",
    Boy        = "👨",
    Girl       = "👧",
    Night      = "🌒",
    Player     = "⛹️",
    Cloth      = "🦺",
    info       = "ℹ️",
    Vision     = "🔭",
    Vehicle    = "🚗"
}