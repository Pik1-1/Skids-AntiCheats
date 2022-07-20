EASYACE = {} -- DON'T CHANGE
                               

---# Anti Bring All #---
EASYACE.AntiBringAll       = true
EASYACE.BringAllPunishment = "BAN" -- BAN/KICK/WARN

---# Anti Triggers #---
EASYACE.AntiBlackListTrigger = true
EASYACE.AntiSpamTrigger      = true
EASYACE.TriggerPunishment    = "BAN" -- BAN/KICK/WARN

---# Blacklisted Events #---
Events = {
    'esx_truckerjob:pay',
    'esx_godirtyjob:pay',
    'esx_ranger:pay',
    'PayForRepairNow',
    'vrp_slotmachine:server:2',
    'esx_pizza:pay',
    'esx_jobs:caution',
    'bank:transfer',
    'lscustoms:payGarag',
    'esx_vangelico_robbery:gioielli1',
    'burglary:money',
    'lenzh_chopshop:sell',
    'esx_deliveries:AddCashMoney',
    'loffe_prisonwork',
    'esx_tankerjob:pay',
    'esx_loffe_fangelse:Pay',
    'esx_mugging:giveMoney',
    'esx_robnpc:giveMoney',
    'esx_vehicletrunk:giveDirty',
    'esx_gopostaljob:pay',
    'AdminMenu:giveDirtyMoney',
    'AdminMenu:giveBank',
    'AdminMenu:giveCash',
    'esx_slotmachine:sv:2',
    'esx_moneywash:deposit',
    'esx_moneywash:withdraw',
    'esx_moneywash:deposit',
    'truckerJob:success',
    'esx_fishing:receiveFish',
}

---# Spam Events Config #---
SpamCheck = {
    { EVENT = "esx_policejob:handcuff",           MAX_TIME = 4  },
    { EVENT = "esx-qalle-hunting:reward",         MAX_TIME = 3  },
    { EVENT = "esx:giveInventoryItem",            MAX_TIME = 4  },
    { EVENT = "esx_billing:sendBill" ,            MAX_TIME = 3  },
    { EVENT = "esx_billing:sendBill" ,            MAX_TIME = 3  },
    { EVENT = "chatE3vent" ,                      MAX_TIME = 2  },
    { EVENT = "_chat:messageEntered3" ,           MAX_TIME = 2  },
    { EVENT = "playerDi3ed" ,                     MAX_TIME = 2  },
    { EVENT = "gcPhone:_internalAddMessage",      MAX_TIME = 4  },
    { EVENT = "gcPhone:tchat_channel",            MAX_TIME = 4  },
    { EVENT = "ServerValidEmote",                 MAX_TIME = 4  },
    { EVENT = "lester:vendita",                   MAX_TIME = 20 },
    { EVENT = "esx:confiscatePlayerItem",         MAX_TIME = 4  },
    { EVENT = "esx_vehicleshop:setVehicleOwned",  MAX_TIME = 4  },
    { EVENT = "LegacyFuel:PayFuel",               MAX_TIME = 4  },
    { EVENT = "CarryPeople:sync",                 MAX_TIME = 3  },
    { EVENT = "EasyAdmin:CaptureScreenshot",      MAX_TIME = 3  },
}