-- I included the config for MOLO's V2 of MRPD as well. Your welcome if you find this :)

Config.Locations = {
    LSPD = {
        blip = {
            enabled = true,
            coords = vec3(464.57, -992.0, 30.69),
            sprite = 60,
            color = 29,
            scale = 1.0,
            string = 'LAPD'
        },

        clockInAndOut = {
            enabled = true,                        -- Enable clocking in and out at a set location? (If using ESX you must have a off duty job for each e.x. offpolice for police offsheriff for sheriff AND have grades for each pd grade - QBCORE REQUIRES NOTHING)
            jobLock = 'police',                    -- This must be set to which job will be utilizing (ESX MUST HAVE OFF DUTY JOB / GRADES FOR THIS - ex. offpolice or offsheriff)
            coords = vec3(442.68,-982.09,31.77), -- Location of where to go on and off duty(If not using target)
            label = '[E] - Go On/Off Duty',        -- Text to display(If not using target)
            distance = 1.0,                        -- Distance to display text UI(If not using target)
            target = {
                enabled = false,                   -- If enabled, the location and distance above will be obsolete
                label = 'Go On/Off Duty',
                coords = vec3(442.68,-982.09,31.77),
                heading = 91.06,
                distance = 2.5,
                width = 2.0,
                length = 1.0,
                minZ = 31.69 - 0.9,
                maxZ = 31.79 + 0.9
            }
        },

        bossMenu = {
            enabled = true,                        -- Enable boss menu?
            jobLock = 'police',                    -- Lock to specific police job? Set to false if not desired
            coords = vec3(468.4,-975.68,35.89), -- Location of boss menu (If not using target)
            label = '[E] - Access Boss Menu',      -- Text UI label string (If not using target)
            distance = 3.0,                        -- Distance to allow access/prompt with text UI (If not using target)
            target = {
                enabled = false,                   -- If enabled, the location and distance above will be obsolete
                label = 'Access Boss Menu',
                coords = vec3(468.4,-975.68,35.89),
                heading = 269.85,
                distance = 2.0,
                width = 2.0,
                length = 1.0,
                minZ = 30.73 - 0.9,
                maxZ = 30.73 + 0.9
            }
        },

        armoury = {
            enabled = true,                                                                              -- Set to false if you don't want to use
            coords = vec3(463.24,-997.2,30.72),                                                 -- Coords of armoury
            heading = 0.0,                                                                             -- Heading of armoury NPC
            ped = 's_f_y_cop_01',                                                                        -- Ped model or false for no ped
            label = '[E] - Access Armoury',                                                              -- String of text ui
            jobLock = 'police',                                                                          -- Allow only one of Config.policeJob listings / Set to false if allow all Config.policeJobs
            weapons = {
                [0] = {     -- Officer I                                                                             -- Grade number will be the name of each table(this would be grade 0)
                    { name = 'WEAPON_PDG19',     label = 'LAPD Glock 19',      multiple = false, price = false },
                    { name = 'WEAPON_YTASER',     label = 'Yellow Taser',      multiple = false, price = false }, -- Set price to false if undesired
                    { name = 'WEAPON_PDBATON', label = 'Baton', multiple = false, price = false },
                    { name = 'ammo-9' , label = '9mm Ammo', multiple = true, price = false },
                    { name = 'ammo-45' , label = '45mm Ammo', multiple = true, price = false }, -- Set multiple to true if you want ability to purchase more than one at a time
                    { name = 'armour', label = 'Bulletproof Vest', multiple = false, price = false },
                    { name = 'handcuffs', label = 'LAPD Handcuffs', multiple = false, price = false },
                    { name = 'bodycam', label = 'LAPD Bodycam', multiple = false, price = false },
                    { name = 'dashcam', label = 'LAPD Dashcam', multiple = false, price = false },
                    { name = 'radio', label = 'LAPD Radio', multiple = false, price = false },
                    { name = 'repairkit', label = 'Repair Kit', multiple = false, price = 500 },

                },
                [1] = { -- Officer II
                    { name = 'WEAPON_PDG19',     label = 'LAPD Glock 19',      multiple = false, price = false },
                    { name = 'WEAPON_YTASER',     label = 'Yellow Taser',      multiple = false, price = false }, -- Set price to false if undesired
                    { name = 'WEAPON_PDBATON', label = 'Baton', multiple = false, price = false },
                    { name = 'ammo-9' , label = '9mm Ammo', multiple = true, price = false },
                    { name = 'ammo-45' , label = '45mm Ammo', multiple = true, price = false }, -- Set multiple to true if you want ability to purchase more than one at a time
                    { name = 'armour', label = 'Bulletproof Vest', multiple = false, price = false },
                    { name = 'handcuffs', label = 'LAPD Handcuffs', multiple = false, price = false },
                    { name = 'bodycam', label = 'LAPD Bodycam', multiple = false, price = false },
                    { name = 'dashcam', label = 'LAPD Dashcam', multiple = false, price = false },
                    { name = 'radio', label = 'LAPD Radio', multiple = false, price = false },
                    { name = 'repairkit', label = 'Repair Kit', multiple = false, price = 500 },
                },
                [2] = { -- Officer III
                    { name = 'WEAPON_PDG19',     label = 'LAPD Glock 19',      multiple = false, price = false },
                    { name = 'WEAPON_YTASER',     label = 'Yellow Taser',      multiple = false, price = false },
                    { name = 'WEAPON_PD870',     label = 'LAPD Remmington 870',      multiple = false, price = false }, -- Set price to false if undesired
                    { name = 'WEAPON_PDBATON', label = 'Baton', multiple = false, price = false },
                    { name = 'ammo-9' , label = '9mm Ammo', multiple = true, price = false },
                    { name = 'ammo-45' , label = '45mm Ammo', multiple = true, price = false },
                    { name = 'ammo-shotgun' , label = '45mm Ammo', multiple = true, price = false }, -- Set multiple to true if you want ability to purchase more than one at a time
                    { name = 'armour', label = 'Bulletproof Vest', multiple = false, price = false },
                    { name = 'handcuffs', label = 'LAPD Handcuffs', multiple = false, price = false },
                    { name = 'bodycam', label = 'LAPD Bodycam', multiple = false, price = false },
                    { name = 'dashcam', label = 'LAPD Dashcam', multiple = false, price = false },
                    { name = 'radio', label = 'LAPD Radio', multiple = false, price = false },
                    { name = 'repairkit', label = 'Repair Kit', multiple = false, price = 500 },
                },
                [3] = { -- Corporal
                    { name = 'WEAPON_PDG19',     label = 'LAPD Glock 19',      multiple = false, price = false },
                    { name = 'WEAPON_YTASER',     label = 'Yellow Taser',      multiple = false, price = false },
                    { name = 'WEAPON_PD870',     label = 'LAPD Remmington 870',      multiple = false, price = false },
                    { name = 'WEAPON_PDC7',     label = 'LAPD C7',      multiple = false, price = false }, -- Set price to false if undesired
                    { name = 'WEAPON_PDBATON', label = 'Baton', multiple = false, price = false },
                    { name = 'ammo-9' , label = '9mm Ammo', multiple = true, price = false },
                    { name = 'ammo-45' , label = '45mm Ammo', multiple = true, price = false },
                    { name = 'ammo-shotgun' , label = '45mm Ammo', multiple = true, price = false }, -- Set multiple to true if you want ability to purchase more than one at a time
                    { name = 'armour', label = 'Bulletproof Vest', multiple = false, price = false },
                    { name = 'handcuffs', label = 'LAPD Handcuffs', multiple = false, price = false },
                    { name = 'bodycam', label = 'LAPD Bodycam', multiple = false, price = false },
                    { name = 'dashcam', label = 'LAPD Dashcam', multiple = false, price = false },
                    { name = 'radio', label = 'LAPD Radio', multiple = false, price = false },
                    { name = 'repairkit', label = 'Repair Kit', multiple = false, price = 500 },
                },
                [4] = { --  Serg 1
                    { name = 'WEAPON_PDG19',     label = 'LAPD Glock 19',      multiple = false, price = false },
                    { name = 'WEAPON_YTASER',     label = 'Yellow Taser',      multiple = false, price = false },
                    { name = 'WEAPON_PDHKUSP',     label = 'LAPD USP',      multiple = false, price = false },
                    { name = 'WEAPON_PD870',     label = 'LAPD Remmington 870',      multiple = false, price = false },
                    { name = 'WEAPON_PDC7',     label = 'LAPD C7',      multiple = false, price = false }, -- Set price to false if undesired
                    { name = 'WEAPON_PDBATON', label = 'Baton', multiple = false, price = false },
                    { name = 'ammo-9' , label = '9mm Ammo', multiple = true, price = false },
                    { name = 'ammo-45' , label = '45mm Ammo', multiple = true, price = false },
                    { name = 'ammo-shotgun' , label = '45mm Ammo', multiple = true, price = false }, -- Set multiple to true if you want ability to purchase more than one at a time
                    { name = 'armour', label = 'Bulletproof Vest', multiple = false, price = false },
                    { name = 'medicalbag', label = 'Medical Bag', multiple = false, price = false },
                    { name = 'handcuffs', label = 'LAPD Handcuffs', multiple = false, price = false },
                    { name = 'bodycam', label = 'LAPD Bodycam', multiple = false, price = false },
                    { name = 'dashcam', label = 'LAPD Dashcam', multiple = false, price = false },
                    { name = 'radio', label = 'LAPD Radio', multiple = false, price = false },
                    { name = 'repairkit', label = 'Repair Kit', multiple = false, price = 500 },
                },
                [5] = { --  Serg 2
                    { name = 'WEAPON_PDG19',     label = 'LAPD Glock 19',      multiple = false, price = false },
                    { name = 'WEAPON_YTASER',     label = 'Yellow Taser',      multiple = false, price = false },
                    { name = 'WEAPON_PDHKUSP',     label = 'LAPD USP',      multiple = false, price = false },
                    { name = 'WEAPON_PD870',     label = 'LAPD Remmington 870',      multiple = false, price = false },
                    { name = 'WEAPON_PDC7',     label = 'LAPD C7',      multiple = false, price = false }, -- Set price to false if undesired
                    { name = 'WEAPON_PDBATON', label = 'Baton', multiple = false, price = false },
                    { name = 'ammo-9' , label = '9mm Ammo', multiple = true, price = false },
                    { name = 'ammo-45' , label = '45mm Ammo', multiple = true, price = false },
                    { name = 'ammo-shotgun' , label = '45mm Ammo', multiple = true, price = false }, -- Set multiple to true if you want ability to purchase more than one at a time
                    { name = 'armour', label = 'Bulletproof Vest', multiple = false, price = false },
                    { name = 'medicalbag', label = 'Medical Bag', multiple = false, price = false },
                    { name = 'handcuffs', label = 'LAPD Handcuffs', multiple = false, price = false },
                    { name = 'bodycam', label = 'LAPD Bodycam', multiple = false, price = false },
                    { name = 'dashcam', label = 'LAPD Dashcam', multiple = false, price = false },
                    { name = 'radio', label = 'LAPD Radio', multiple = false, price = false },
                    { name = 'repairkit', label = 'Repair Kit', multiple = false, price = 500 },
                },
                [6] = { -- Detective I
                    { name = 'WEAPON_PDG19',     label = 'LAPD Glock 19',      multiple = false, price = false },
                    { name = 'WEAPON_YTASER',     label = 'Yellow Taser',      multiple = false, price = false },
                    { name = 'WEAPON_PDHKUSP',     label = 'LAPD USP',      multiple = false, price = false },
                    { name = 'WEAPON_PD870',     label = 'LAPD Remmington 870',      multiple = false, price = false },
                    { name = 'WEAPON_PDC7',     label = 'LAPD C7',      multiple = false, price = false }, -- Set price to false if undesired
                    { name = 'WEAPON_PDBATON', label = 'Baton', multiple = false, price = false },
                    { name = 'ammo-9' , label = '9mm Ammo', multiple = true, price = false },
                    { name = 'ammo-45' , label = '45mm Ammo', multiple = true, price = false },
                    { name = 'ammo-shotgun' , label = '45mm Ammo', multiple = true, price = false }, -- Set multiple to true if you want ability to purchase more than one at a time
                    { name = 'armour', label = 'Bulletproof Vest', multiple = false, price = false },
                    { name = 'medicalbag', label = 'Medical Bag', multiple = false, price = false },
                    { name = 'handcuffs', label = 'LAPD Handcuffs', multiple = false, price = false },
                    { name = 'bodycam', label = 'LAPD Bodycam', multiple = false, price = false },
                    { name = 'dashcam', label = 'LAPD Dashcam', multiple = false, price = false },
                    { name = 'radio', label = 'LAPD Radio', multiple = false, price = false },
                    { name = 'repairkit', label = 'Repair Kit', multiple = false, price = 500 },
                },
                [7] = { -- Detective II
                    { name = 'WEAPON_PDG19',     label = 'LAPD Glock 19',      multiple = false, price = false },
                    { name = 'WEAPON_YTASER',     label = 'Yellow Taser',      multiple = false, price = false },
                    { name = 'WEAPON_PDHKUSP',     label = 'LAPD USP',      multiple = false, price = false },
                    { name = 'WEAPON_PD870',     label = 'LAPD Remmington 870',      multiple = false, price = false },
                    { name = 'WEAPON_PDC7',     label = 'LAPD C7',      multiple = false, price = false }, -- Set price to false if undesired
                    { name = 'WEAPON_PDBATON', label = 'Baton', multiple = false, price = false },
                    { name = 'ammo-9' , label = '9mm Ammo', multiple = true, price = false },
                    { name = 'ammo-45' , label = '45mm Ammo', multiple = true, price = false },
                    { name = 'ammo-shotgun' , label = '45mm Ammo', multiple = true, price = false }, -- Set multiple to true if you want ability to purchase more than one at a time
                    { name = 'armour', label = 'Bulletproof Vest', multiple = false, price = false },
                    { name = 'medicalbag', label = 'Medical Bag', multiple = false, price = false },
                    { name = 'handcuffs', label = 'LAPD Handcuffs', multiple = false, price = false },
                    { name = 'bodycam', label = 'LAPD Bodycam', multiple = false, price = false },
                    { name = 'dashcam', label = 'LAPD Dashcam', multiple = false, price = false },
                    { name = 'radio', label = 'LAPD Radio', multiple = false, price = false },
                    { name = 'repairkit', label = 'Repair Kit', multiple = false, price = 500 },
                },
                [8] = { -- Detective III
                    { name = 'WEAPON_PDG19',     label = 'LAPD Glock 19',      multiple = false, price = false },
                    { name = 'WEAPON_YTASER',     label = 'Yellow Taser',      multiple = false, price = false },
                    { name = 'WEAPON_PDHKUSP',     label = 'LAPD USP',      multiple = false, price = false },
                    { name = 'WEAPON_PD870',     label = 'LAPD Remmington 870',      multiple = false, price = false },
                    { name = 'WEAPON_PDC7',     label = 'LAPD C7',      multiple = false, price = false }, -- Set price to false if undesired
                    { name = 'WEAPON_PDBATON', label = 'Baton', multiple = false, price = false },
                    { name = 'ammo-9' , label = '9mm Ammo', multiple = true, price = false },
                    { name = 'ammo-45' , label = '45mm Ammo', multiple = true, price = false },
                    { name = 'ammo-shotgun' , label = '45mm Ammo', multiple = true, price = false }, -- Set multiple to true if you want ability to purchase more than one at a time
                    { name = 'armour', label = 'Bulletproof Vest', multiple = false, price = false },
                    { name = 'medicalbag', label = 'Medical Bag', multiple = false, price = false },
                    { name = 'handcuffs', label = 'LAPD Handcuffs', multiple = false, price = false },
                    { name = 'bodycam', label = 'LAPD Bodycam', multiple = false, price = false },
                    { name = 'dashcam', label = 'LAPD Dashcam', multiple = false, price = false },
                    { name = 'radio', label = 'LAPD Radio', multiple = false, price = false },
                    { name = 'repairkit', label = 'Repair Kit', multiple = false, price = 500 },
                },
                [9] = { -- Lieutenant
                    { name = 'WEAPON_PDG19',     label = 'LAPD Glock 19',      multiple = false, price = false },
                    { name = 'WEAPON_YTASER',     label = 'Yellow Taser',      multiple = false, price = false },
                    { name = 'WEAPON_PDHKUSP',     label = 'LAPD USP',      multiple = false, price = false },
                    { name = 'WEAPON_PD870',     label = 'LAPD Remmington 870',      multiple = false, price = false },
                    { name = 'WEAPON_PDC7',     label = 'LAPD C7',      multiple = false, price = false }, -- Set price to false if undesired
                    { name = 'WEAPON_PDBATON', label = 'Baton', multiple = false, price = false },
                    { name = 'ammo-9' , label = '9mm Ammo', multiple = true, price = false },
                    { name = 'ammo-45' , label = '45mm Ammo', multiple = true, price = false },
                    { name = 'ammo-shotgun' , label = '45mm Ammo', multiple = true, price = false }, -- Set multiple to true if you want ability to purchase more than one at a time
                    { name = 'armour', label = 'Bulletproof Vest', multiple = false, price = false },
                    { name = 'medicalbag', label = 'Medical Bag', multiple = false, price = false },
                    { name = 'handcuffs', label = 'LAPD Handcuffs', multiple = false, price = false },
                    { name = 'bodycam', label = 'LAPD Bodycam', multiple = false, price = false },
                    { name = 'dashcam', label = 'LAPD Dashcam', multiple = false, price = false },
                    { name = 'radio', label = 'LAPD Radio', multiple = false, price = false },
                    { name = 'repairkit', label = 'Repair Kit', multiple = false, price = 500 },
                },
                [10] = { -- FTO
                    { name = 'WEAPON_PDG19',     label = 'LAPD Glock 19',      multiple = false, price = false },
                    { name = 'WEAPON_YTASER',     label = 'Yellow Taser',      multiple = false, price = false },
                    { name = 'WEAPON_PDHKUSP',     label = 'LAPD USP',      multiple = false, price = false },
                    { name = 'WEAPON_PD870',     label = 'LAPD Remmington 870',      multiple = false, price = false },
                    { name = 'WEAPON_PDC7',     label = 'LAPD C7',      multiple = false, price = false },
                    { name = 'WEAPON_PDHK33',     label = 'LAPD HK 433',      multiple = false, price = false }, -- Set price to false if undesired
                    { name = 'WEAPON_PDBATON', label = 'Baton', multiple = false, price = false },
                    { name = 'ammo-9' , label = '9mm Ammo', multiple = true, price = false },
                    { name = 'ammo-45' , label = '45mm Ammo', multiple = true, price = false },
                    { name = 'ammo-shotgun' , label = '45mm Ammo', multiple = true, price = false }, -- Set multiple to true if you want ability to purchase more than one at a time
                    { name = 'armour', label = 'Bulletproof Vest', multiple = false, price = false },
                    { name = 'medicalbag', label = 'Medical Bag', multiple = false, price = false },
                    { name = 'handcuffs', label = 'LAPD Handcuffs', multiple = false, price = false },
                    { name = 'bodycam', label = 'LAPD Bodycam', multiple = false, price = false },
                    { name = 'dashcam', label = 'LAPD Dashcam', multiple = false, price = false },
                    { name = 'radio', label = 'LAPD Radio', multiple = false, price = false },
                    { name = 'repairkit', label = 'Repair Kit', multiple = false, price = 500 },
                },
                [11] = { -- Captain
                    { name = 'WEAPON_PDG19',     label = 'LAPD Glock 19',      multiple = false, price = false },
                    { name = 'WEAPON_YTASER',     label = 'Yellow Taser',      multiple = false, price = false },
                    { name = 'WEAPON_PDHKUSP',     label = 'LAPD USP',      multiple = false, price = false },
                    { name = 'WEAPON_PD870',     label = 'LAPD Remmington 870',      multiple = false, price = false },
                    { name = 'WEAPON_PDC7',     label = 'LAPD C7',      multiple = false, price = false },
                    { name = 'WEAPON_PDHK33',     label = 'LAPD HK 433',      multiple = false, price = false }, -- Set price to false if undesired
                    { name = 'WEAPON_PDBATON', label = 'Baton', multiple = false, price = false },
                    { name = 'ammo-9' , label = '9mm Ammo', multiple = true, price = false },
                    { name = 'ammo-45' , label = '45mm Ammo', multiple = true, price = false },
                    { name = 'ammo-shotgun' , label = '45mm Ammo', multiple = true, price = false }, -- Set multiple to true if you want ability to purchase more than one at a time
                    { name = 'armour', label = 'Bulletproof Vest', multiple = false, price = false },
                    { name = 'medicalbag', label = 'Medical Bag', multiple = false, price = false },
                    { name = 'handcuffs', label = 'LAPD Handcuffs', multiple = false, price = false },
                    { name = 'bodycam', label = 'LAPD Bodycam', multiple = false, price = false },
                    { name = 'dashcam', label = 'LAPD Dashcam', multiple = false, price = false },
                    { name = 'radio', label = 'LAPD Radio', multiple = false, price = false },
                    { name = 'repairkit', label = 'Repair Kit', multiple = false, price = 500 },
                },
                [12] = { -- Commander
                    { name = 'WEAPON_PDG19',     label = 'LAPD Glock 19',      multiple = false, price = false },
                    { name = 'WEAPON_YTASER',     label = 'Yellow Taser',      multiple = false, price = false },
                    { name = 'WEAPON_PDHKUSP',     label = 'LAPD USP',      multiple = false, price = false },
                    { name = 'WEAPON_PD870',     label = 'LAPD Remmington 870',      multiple = false, price = false },
                    { name = 'WEAPON_PDC7',     label = 'LAPD C7',      multiple = false, price = false },
                    { name = 'WEAPON_PDHK33',     label = 'LAPD HK 433',      multiple = false, price = false }, -- Set price to false if undesired
                    { name = 'WEAPON_PDBATON', label = 'Baton', multiple = false, price = false },
                    { name = 'ammo-9' , label = '9mm Ammo', multiple = true, price = false },
                    { name = 'ammo-45' , label = '45mm Ammo', multiple = true, price = false },
                    { name = 'ammo-shotgun' , label = '45mm Ammo', multiple = true, price = false }, -- Set multiple to true if you want ability to purchase more than one at a time
                    { name = 'armour', label = 'Bulletproof Vest', multiple = false, price = false },
                    { name = 'medicalbag', label = 'Medical Bag', multiple = false, price = false },
                    { name = 'handcuffs', label = 'LAPD Handcuffs', multiple = false, price = false },
                    { name = 'bodycam', label = 'LAPD Bodycam', multiple = false, price = false },
                    { name = 'dashcam', label = 'LAPD Dashcam', multiple = false, price = false },
                    { name = 'radio', label = 'LAPD Radio', multiple = false, price = false },
                    { name = 'repairkit', label = 'Repair Kit', multiple = false, price = 500 },
                },
                [13] = { -- Deputy Chief
                    { name = 'WEAPON_PDG19',     label = 'LAPD Glock 19',      multiple = false, price = false },
                    { name = 'WEAPON_YTASER',     label = 'Yellow Taser',      multiple = false, price = false },
                    { name = 'WEAPON_PDHKUSP',     label = 'LAPD USP',      multiple = false, price = false },
                    { name = 'WEAPON_PD870',     label = 'LAPD Remmington 870',      multiple = false, price = false },
                    { name = 'WEAPON_PDC7',     label = 'LAPD C7',      multiple = false, price = false },
                    { name = 'WEAPON_PDHK33',     label = 'LAPD HK 433',      multiple = false, price = false },
                    { name = 'WEAPON_PDP88',     label = 'LAPD P88',      multiple = false, price = false },
                    { name = 'WEAPON_PDBM3',     label = 'LAPD Banelli',      multiple = false, price = false }, -- Set price to false if undesired
                    { name = 'WEAPON_PDBATON', label = 'Baton', multiple = false, price = false },
                    { name = 'ammo-9' , label = '9mm Ammo', multiple = true, price = false },
                    { name = 'ammo-45' , label = '45mm Ammo', multiple = true, price = false },
                    { name = 'ammo-shotgun' , label = '45mm Ammo', multiple = true, price = false }, -- Set multiple to true if you want ability to purchase more than one at a time
                    { name = 'armour', label = 'Bulletproof Vest', multiple = false, price = false },
                    { name = 'medicalbag', label = 'Medical Bag', multiple = false, price = false },
                    { name = 'handcuffs', label = 'LAPD Handcuffs', multiple = true, price = false },
                    { name = 'bodycam', label = 'LAPD Bodycam', multiple = false, price = false },
                    { name = 'dashcam', label = 'LAPD Dashcam', multiple = false, price = false },
                    { name = 'radio', label = 'LAPD Radio', multiple = false, price = false },
                    { name = 'repairkit', label = 'Repair Kit', multiple = true, price = 500 },
                },
            }
        },

        cloakroom = {
            enabled = true,                        -- WILL NOT SHOW IN QBCORE INSTEAD USE QB-CLOTHING CONFIG! Set to false if you don't want to use (Compatible with esx_skin & wasabi fivem-appearance fork)
            jobLock = 'police',                    -- Allow only one of Config.policeJob listings / Set to false if allow all Config.policeJobs
            coords = vec3(453.57,-996.51,31.71), -- Coords of cloakroom
            label = '[E] - Change Clothes',        -- String of text ui of cloakroom
            range = 2.0,                           -- Range away from coords you can use.
            uniforms = {                           -- Uniform choices
                [1] = {                            -- Order it will display
                    label = 'Patrol',              -- Name of outfit that will display in menu
                    minGrade = 0,                  -- Min grade level that can access? Set to 0 or false for everyone to use
                    male = {                       -- Male variation
                        clothing = {
                            -- Components / 0: Face 1: Mask 2: Hair 3: Torso 4: Leg 5: Parachute / bag 6: Shoes 7: Accessory 8: Undershirt 9: Kevlar 10: Badge 11: Torso 2
                            -- https://docs.fivem.net/natives/?_0xD4F7B05C
                            { component = 11, drawable = 5,  texture = 2 }, -- Torso
                            { component = 8,  drawable = 15, texture = 0 }, -- Shirt
                            { component = 4,  drawable = 6,  texture = 1 }, -- Pants
                            { component = 6,  drawable = 16, texture = 7 }, -- Shoes
                            { component = 3,  drawable = 5,  texture = 0 }, -- Arms
                        },
                        props = {
                            -- Components / 0: Hats 1: Glasses 2: Ears 6: Watches 7: Bracelets
                            -- https://docs.fivem.net/natives/?_0x93376B65A266EB5F

                            --    { component = 0, drawable = 0, texture = 0 }, -- Hats
                        }
                    },
                    female = {
                        clothing = {
                            -- Components / 0: Face 1: Mask 2: Hair 3: Torso 4: Leg 5: Parachute / bag 6: Shoes 7: Accessory 8: Undershirt 9: Kevlar 10: Badge 11: Torso 2
                            -- https://docs.fivem.net/natives/?_0xD4F7B05C
                            { component = 11, drawable = 4,  texture = 0 }, -- Torso
                            { component = 8,  drawable = 15, texture = 0 }, -- Shirt
                            { component = 4,  drawable = 25, texture = 0 }, -- Pants
                            { component = 6,  drawable = 16, texture = 4 }, -- Shoes
                            { component = 3,  drawable = 4,  texture = 0 }, -- Arms
                        },
                        props = {
                            -- Components / 0: Hats 1: Glasses 2: Ears 6: Watches 7: Bracelets
                            -- https://docs.fivem.net/natives/?_0x93376B65A266EB5F

                            --    { component = 0, drawable = 0, texture = 0 }, -- Hats
                        }
                    }
                },
                [2] = {              -- Order it will display
                    label = 'Chief', -- Name of outfit that will display in menu
                    minGrade = 0,    -- Min grade level that can access? Set to 0 or false for everyone to use
                    male = {         -- Male variation
                        clothing = {
                            -- Components / 0: Face 1: Mask 2: Hair 3: Torso 4: Leg 5: Parachute / bag 6: Shoes 7: Accessory 8: Undershirt 9: Kevlar 10: Badge 11: Torso 2
                            -- https://docs.fivem.net/natives/?_0xD4F7B05C
                            { component = 11, drawable = 15, texture = 0 }, -- Torso
                            { component = 8,  drawable = 58, texture = 0 }, -- Shirt
                            { component = 4,  drawable = 35, texture = 0 }, -- Pants
                            { component = 6,  drawable = 24, texture = 0 }, -- Shoes
                            { component = 3,  drawable = 15, texture = 0 }, -- Arms
                        },
                        props = {
                            -- Components / 0: Hats 1: Glasses 2: Ears 6: Watches 7: Bracelets
                            -- https://docs.fivem.net/natives/?_0x93376B65A266EB5F

                            --    { component = 0, drawable = 0, texture = 0 }, -- Hats
                        }
                    },
                    female = {
                        clothing = {
                            -- Components / 0: Face 1: Mask 2: Hair 3: Torso 4: Leg 5: Parachute / bag 6: Shoes 7: Accessory 8: Undershirt 9: Kevlar 10: Badge 11: Torso 2
                            -- https://docs.fivem.net/natives/?_0xD4F7B05C
                            { component = 11, drawable = 4,  texture = 0 }, -- Torso
                            { component = 8,  drawable = 15, texture = 0 }, -- Shirt
                            { component = 4,  drawable = 25, texture = 0 }, -- Pants
                            { component = 6,  drawable = 16, texture = 4 }, -- Shoes
                            { component = 3,  drawable = 4,  texture = 0 }, -- Arms
                        },
                        props = {
                            -- Components / 0: Hats 1: Glasses 2: Ears 6: Watches 7: Bracelets
                            -- https://docs.fivem.net/natives/?_0x93376B65A266EB5F

                            --    { component = 0, drawable = 0, texture = 0 }, -- Hats
                        }
                    }
                },
                [3] = {              -- Order it will display
                    label = 'Chief', -- Name of outfit that will display in menu
                    minGrade = 0,    -- Min grade level that can access? Set to 0 or false for everyone to use
                    male = {         -- Male variation
                        clothing = {
                            -- Components / 0: Face 1: Mask 2: Hair 3: Torso 4: Leg 5: Parachute / bag 6: Shoes 7: Accessory 8: Undershirt 9: Kevlar 10: Badge 11: Torso 2
                            -- https://docs.fivem.net/natives/?_0xD4F7B05C
                            { component = 11, drawable = 15, texture = 0 }, -- Torso
                            { component = 8,  drawable = 58, texture = 0 }, -- Shirt
                            { component = 4,  drawable = 35, texture = 0 }, -- Pants
                            { component = 6,  drawable = 24, texture = 0 }, -- Shoes
                            { component = 3,  drawable = 15, texture = 0 }, -- Arms
                        },
                        props = {
                            -- Components / 0: Hats 1: Glasses 2: Ears 6: Watches 7: Bracelets
                            -- https://docs.fivem.net/natives/?_0x93376B65A266EB5F

                            --    { component = 0, drawable = 0, texture = 0 }, -- Hats
                        }
                    },
                    female = {
                        clothing = {
                            -- Components / 0: Face 1: Mask 2: Hair 3: Torso 4: Leg 5: Parachute / bag 6: Shoes 7: Accessory 8: Undershirt 9: Kevlar 10: Badge 11: Torso 2
                            -- https://docs.fivem.net/natives/?_0xD4F7B05C
                            { component = 11, drawable = 4,  texture = 0 }, -- Torso
                            { component = 8,  drawable = 15, texture = 0 }, -- Shirt
                            { component = 4,  drawable = 25, texture = 0 }, -- Pants
                            { component = 6,  drawable = 16, texture = 4 }, -- Shoes
                            { component = 3,  drawable = 4,  texture = 0 }, -- Arms
                        },
                        props = {
                            -- Components / 0: Hats 1: Glasses 2: Ears 6: Watches 7: Bracelets
                            -- https://docs.fivem.net/natives/?_0x93376B65A266EB5F

                            --    { component = 0, drawable = 0, texture = 0 }, -- Hats
                        }
                    }
                },
            }
        },

        -- Personal Locker. Supports inventories: ox_inventory, qb-inventory, and qs-inventory
        --        Custom inventories can easily be added in wasabi_bridge/inventories/
        personalLocker = {
            enabled = true,                       -- Enable personal locker for this station?
            jobLock = 'police',                    -- Job lock?
            coords = vec3(472.1,-978.76,23.92), -- Area to prompt personal locker
            range = 1.0,                           -- Range it will prompt from coords above
            label = '[E] - Access Personal Locker',
            target = {
                enabled = false, -- If enabled, the location above will be obsolete
                label = 'Access Personal Locker',
                coords = vec3(472.1,-978.76,23.92),
                heading = 354.94,
                distance = 2.5,
                width = 2.0,
                length = 1.0,
                minZ = 30.69 - 0.9,
                maxZ = 30.69 + 0.9
            }
        },

        evidenceLocker = {
            enabled = true,                      -- Enable evidence locker for this station?
            jobLock = 'police',                   -- Job lock?
            coords = vec3(463.73,-993.6,27.61), -- Area to prompt personal locker
            range = 2.0,                          -- Range it will prompt from coords above
            label = '[E] - Access Evidence Locker',
            target = {
                enabled = false, -- If enabled, the location above will be obsolete
                label = 'Access Evidence Locker',
                coords = vec3(463.73,-993.6,27.61),
                heading = 266.23,
                distance = 2.5,
                width = 2.0,
                length = 1.0,
                minZ = 27.27 - 0.9,
                maxZ = 27.67 + 0.9
            }
        },


        vehicles = {                                   -- Vehicle Garage
            enabled = true,                            -- Enable? False if you have you're own way for medics to obtain vehicles.
            jobLock = 'police',                        -- Job lock? or access to all police jobs by using false
            zone = {
                coords = vec3(443.27,-989.25,23.94), -- Area to prompt vehicle garage
                range = 5.5,                           -- Range it will prompt from coords above
                label = '[E] - Access Garage',
                return_label = '[E] - Return Vehicle'
            },
            spawn = {
                land = {
                    coords = vec3(441.22,-971.1,23.94), -- Coords of where land vehicle spawn/return
                    heading = 3.68
                },
                air = {
                    coords = vec3(449.29, -981.76, 43.69), -- Coords of where air vehicles spawn/return
                    heading = 0.01
                }
            },
            options = {

                [0] = {                    -- Job grade as table name
                    ['polcharger18'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Police Cruiser',
                        category = 'land', -- Options are 'land' and 'air'
                    },
                },

                [1] = {                    -- Job grade as table name
                    ['polcharger18'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Buffalo',
                        category = 'land', -- Options are 'land' and 'air'
                    },
                    ['poldurango'] = {        -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Durungo',
                        category = 'land', -- Options are 'land' and 'air'
                    },
                },

                [2] = {                    -- Job grade as table name
                    ['polcharger18'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Buffalo',
                        category = 'land', -- Options are 'land' and 'air'
                    },
                    ['poldurango'] = {        -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Durungo',
                        category = 'land', -- Options are 'land' and 'air'
                    },
                    ['polsilverado19'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Police Truck',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['polcross'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Police Motocross',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                },

                [3] = {                    -- Job grade as table name
                    ['polcharger18'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Buffalo',
                        category = 'land', -- Options are 'land' and 'air'
                    },
                    ['poldurango'] = {        -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Durungo',
                        category = 'land', -- Options are 'land' and 'air'
                    },
                    ['polsilverado19'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Police Truck',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['polmustang'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'HEAT 1 SHELLY',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['polcross'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Police Motocross',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                },
                [4] = {                    -- Job grade as table name
                    ['polcharger18'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Buffalo',
                        category = 'land', -- Options are 'land' and 'air'
                    },
                    ['poldurango'] = {        -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Durungo',
                        category = 'land', -- Options are 'land' and 'air'
                    },
                    ['polsilverado19'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Police Truck',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['polmustang'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'HEAT 1 SHELLY',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['sw_sprinter'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'LAPD Van',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['polcross'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Police Motocross',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                },
                [5] = {                    -- Job grade as table name
                    ['polcharger18'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Buffalo',
                        category = 'land', -- Options are 'land' and 'air'
                    },
                    ['poldurango'] = {        -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Durungo',
                        category = 'land', -- Options are 'land' and 'air'
                    },
                    ['polsilverado19'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Police Truck',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['polmustang'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'HEAT 1 SHELLY',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['sw_sprinter'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'LAPD Van',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['sw_subrb'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'LAPD Subababin',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['polcross'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Police Motocross',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                },
                [6] = {                    -- Job grade as table name
                    ['polcharger18'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Buffalo',
                        category = 'land', -- Options are 'land' and 'air'
                    },
                    ['poldurango'] = {        -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Durungo',
                        category = 'land', -- Options are 'land' and 'air'
                    },
                    ['polsilverado19'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Police Truck',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['polmustang'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'HEAT 1 SHELLY',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['sw_sprinter'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'LAPD Van',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['sw_subrb'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'LAPD Subababin',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['unmarkedjl'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Unmarked Buffalo',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['polcross'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Police Motocross',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                },
                [7] = {                    -- Job grade as table name
                    ['polcharger18'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Buffalo',
                        category = 'land', -- Options are 'land' and 'air'
                    },
                    ['poldurango'] = {        -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Durungo',
                        category = 'land', -- Options are 'land' and 'air'
                    },
                    ['polsilverado19'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Police Truck',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['polmustang'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'HEAT 1 SHELLY',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['sw_sprinter'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'LAPD Van',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['sw_subrb'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'LAPD Subababin',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['unmarkedjl'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Unmarked Buffalo',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['pd_escalader'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Unmarked Escalader',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['polcross'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Police Motocross',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                },
                [8] = {                    -- Job grade as table name
                    ['polcharger18'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Buffalo',
                        category = 'land', -- Options are 'land' and 'air'
                    },
                    ['poldurango'] = {        -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Durungo',
                        category = 'land', -- Options are 'land' and 'air'
                    },
                    ['polsilverado19'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Police Truck',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['polmustang'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'HEAT 1 SHELLY',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['sw_sprinter'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'LAPD Van',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['sw_subrb'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'LAPD Subababin',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['unmarkedjl'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Unmarked Buffalo',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['pd_escalader'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Unmarked Escalader',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['zm_s500'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Unmarked 500',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['trhawk'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Unmarked Hawk',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['polcross'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Police Motocross',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                },
                [9] = {                    -- Job grade as table name
                    ['polcharger18'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Buffalo',
                        category = 'land', -- Options are 'land' and 'air'
                    },
                    ['poldurango'] = {        -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Durungo',
                        category = 'land', -- Options are 'land' and 'air'
                    },
                    ['polsilverado19'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Police Truck',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['polmustang'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'HEAT 1 SHELLY',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['sw_sprinter'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'LAPD Van',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['sw_subrb'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'LAPD Subababin',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['unmarkedjl'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Unmarked Buffalo',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['pd_escalader'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Unmarked Escalader',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['zm_s500'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Unmarked 500',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['trhawk'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Unmarked Hawk',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['sw_bearcat'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Bearcat',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['polcross'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Police Motocross',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                },
                [10] = {                    -- Job grade as table name
                    ['polcharger18'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Buffalo',
                        category = 'land', -- Options are 'land' and 'air'
                    },
                    ['poldurango'] = {        -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Durungo',
                        category = 'land', -- Options are 'land' and 'air'
                    },
                    ['polsilverado19'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Police Truck',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['polmustang'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'HEAT 1 SHELLY',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['sw_sprinter'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'LAPD Van',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['sw_subrb'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'LAPD Subababin',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['unmarkedjl'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Unmarked Buffalo',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['pd_escalader'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Unmarked Escalader',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['zm_s500'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Unmarked 500',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['trhawk'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Unmarked Hawk',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['sw_bearcat'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Bearcat',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['polbmwm7'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'BW M 7',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['polcoach'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Bus',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['polcross'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Police Motocross',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                },
                [11] = {                    -- Job grade as table name
                    ['polcharger18'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Buffalo',
                        category = 'land', -- Options are 'land' and 'air'
                    },
                    ['poldurango'] = {        -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Durungo',
                        category = 'land', -- Options are 'land' and 'air'
                    },
                    ['polsilverado19'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Police Truck',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['polmustang'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'HEAT 1 SHELLY',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['sw_sprinter'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'LAPD Van',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['sw_subrb'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'LAPD Subababin',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['unmarkedjl'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Unmarked Buffalo',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['pd_escalader'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Unmarked Escalader',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['zm_s500'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Unmarked 500',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['trhawk'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Unmarked Hawk',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['sw_bearcat'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Bearcat',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['polbmwm7'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'BW M 7',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['polcoach'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Bus',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['rrhycadeevoxpd'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'EVO XD',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['polcross'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Police Motocross',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                },
                [12] = {                    -- Job grade as table name
                    ['polcharger18'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Buffalo',
                        category = 'land', -- Options are 'land' and 'air'
                    },
                    ['poldurango'] = {        -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Durungo',
                        category = 'land', -- Options are 'land' and 'air'
                    },
                    ['polsilverado19'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Police Truck',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['polmustang'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'HEAT 1 SHELLY',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['sw_sprinter'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'LAPD Van',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['sw_subrb'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'LAPD Subababin',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['unmarkedjl'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Unmarked Buffalo',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['pd_escalader'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Unmarked Escalader',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['zm_s500'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Unmarked 500',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['trhawk'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Unmarked Hawk',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['sw_bearcat'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Bearcat',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['polbmwm7'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'BW M 7',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['polcoach'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Bus',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['rrhycadeevoxpd'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'EVO XD',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['polcross'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Police Motocross',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                },
                [13] = {                    -- Job grade as table name
                    ['polcharger18'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Buffalo',
                        category = 'land', -- Options are 'land' and 'air'
                    },
                    ['poldurango'] = {        -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Durungo',
                        category = 'land', -- Options are 'land' and 'air'
                    },
                    ['polsilverado19'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Police Truck',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['polmustang'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'HEAT 1 SHELLY',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['sw_sprinter'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'LAPD Van',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['sw_subrb'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'LAPD Subababin',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['unmarkedjl'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Unmarked Buffalo',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['pd_escalader'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Unmarked Escalader',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['zm_s500'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Unmarked 500',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['trhawk'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Unmarked Hawk',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['sw_bearcat'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Bearcat',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['polbmwm7'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'BW M 7',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['polcoach'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Bus',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['rrhycadeevoxpd'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'EVO XD',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['polcross'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Police Motocross',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                },
            }
        }
    },
    FILMORE = {
        blip = {
            enabled = true,
            coords = vec3(-436.76,6022.33,31.49),
            sprite = 60,
            color = 29,
            scale = 1.0,
            string = 'FILMORE PD'
        },

        clockInAndOut = {
            enabled = true,                        -- Enable clocking in and out at a set location? (If using ESX you must have a off duty job for each e.x. offpolice for police offsheriff for sheriff AND have grades for each pd grade - QBCORE REQUIRES NOTHING)
            jobLock = 'police',                    -- This must be set to which job will be utilizing (ESX MUST HAVE OFF DUTY JOB / GRADES FOR THIS - ex. offpolice or offsheriff)
            coords = vec3(-443.5,6014.77,32.46), -- Location of where to go on and off duty(If not using target)
            label = '[E] - Go On/Off Duty',        -- Text to display(If not using target)
            distance = 1.0,                        -- Distance to display text UI(If not using target)
            target = {
                enabled = false,                   -- If enabled, the location and distance above will be obsolete
                label = 'Go On/Off Duty',
                coords = vec3(-443.5,6014.77,32.46),
                heading = 91.06,
                distance = 2.5,
                width = 2.0,
                length = 1.0,
                minZ = 32.39 - 0.9,
                maxZ = 32.69 + 0.9
            }
        },

        bossMenu = {
            enabled = true,                        -- Enable boss menu?
            jobLock = 'police',                    -- Lock to specific police job? Set to false if not desired
            coords = vec3(-441.73,6001.78,32.46), -- Location of boss menu (If not using target)
            label = '[E] - Access Boss Menu',      -- Text UI label string (If not using target)
            distance = 3.0,                        -- Distance to allow access/prompt with text UI (If not using target)
            target = {
                enabled = false,                   -- If enabled, the location and distance above will be obsolete
                label = 'Access Boss Menu',
                coords = vec3(-441.73,6001.78,32.46),
                heading = 269.85,
                distance = 2.0,
                width = 2.0,
                length = 1.0,
                minZ = 31.73 - 0.9,
                maxZ = 32.73 + 0.9
            }
        },

        armoury = {
            enabled = true,                                                                              -- Set to false if you don't want to use
            coords = vec3(-442.31,5996.49,31.46),                                                 -- Coords of armoury
            heading = 0.0,                                                                             -- Heading of armoury NPC
            ped = 's_f_y_cop_01',                                                                        -- Ped model or false for no ped
            label = '[E] - Access Armoury',                                                              -- String of text ui
            jobLock = 'police',                                                                          -- Allow only one of Config.policeJob listings / Set to false if allow all Config.policeJobs
            weapons = {
                [0] = {     -- Officer I                                                                             -- Grade number will be the name of each table(this would be grade 0)
                { name = 'WEAPON_PDG19',     label = 'LAPD Glock 19',      multiple = false, price = false },
                { name = 'WEAPON_YTASER',     label = 'Yellow Taser',      multiple = false, price = false }, -- Set price to false if undesired
                { name = 'WEAPON_PDBATON', label = 'Baton', multiple = false, price = false },
                { name = 'ammo-9' , label = '9mm Ammo', multiple = true, price = false },
                { name = 'ammo-45' , label = '45mm Ammo', multiple = true, price = false }, -- Set multiple to true if you want ability to purchase more than one at a time
                { name = 'armour', label = 'Bulletproof Vest', multiple = false, price = false },
                { name = 'handcuffs', label = 'LAPD Handcuffs', multiple = false, price = false },
                { name = 'bodycam', label = 'LAPD Bodycam', multiple = false, price = false },
                { name = 'dashcam', label = 'LAPD Dashcam', multiple = false, price = false },
                { name = 'radio', label = 'LAPD Radio', multiple = false, price = false },
                { name = 'repairkit', label = 'Repair Kit', multiple = false, price = 500 },

                },
                [1] = { -- Officer II
                { name = 'WEAPON_PDG19',     label = 'LAPD Glock 19',      multiple = false, price = false },
                { name = 'WEAPON_YTASER',     label = 'Yellow Taser',      multiple = false, price = false }, -- Set price to false if undesired
                { name = 'WEAPON_PDBATON', label = 'Baton', multiple = false, price = false },
                { name = 'ammo-9' , label = '9mm Ammo', multiple = true, price = false },
                { name = 'ammo-45' , label = '45mm Ammo', multiple = true, price = false }, -- Set multiple to true if you want ability to purchase more than one at a time
                { name = 'armour', label = 'Bulletproof Vest', multiple = false, price = false },
                { name = 'handcuffs', label = 'LAPD Handcuffs', multiple = false, price = false },
                { name = 'bodycam', label = 'LAPD Bodycam', multiple = false, price = false },
                { name = 'dashcam', label = 'LAPD Dashcam', multiple = false, price = false },
                { name = 'radio', label = 'LAPD Radio', multiple = false, price = false },
                { name = 'repairkit', label = 'Repair Kit', multiple = false, price = 500 },
                },
                [2] = { -- Officer III
                { name = 'WEAPON_PDG19',     label = 'LAPD Glock 19',      multiple = false, price = false },
                { name = 'WEAPON_YTASER',     label = 'Yellow Taser',      multiple = false, price = false },
                { name = 'WEAPON_PD870',     label = 'LAPD Remmington 870',      multiple = false, price = false }, -- Set price to false if undesired
                { name = 'WEAPON_PDBATON', label = 'Baton', multiple = false, price = false },
                { name = 'ammo-9' , label = '9mm Ammo', multiple = true, price = false },
                { name = 'ammo-45' , label = '45mm Ammo', multiple = true, price = false },
                { name = 'ammo-shotgun' , label = '45mm Ammo', multiple = true, price = false }, -- Set multiple to true if you want ability to purchase more than one at a time
                { name = 'armour', label = 'Bulletproof Vest', multiple = false, price = false },
                { name = 'handcuffs', label = 'LAPD Handcuffs', multiple = false, price = false },
                { name = 'bodycam', label = 'LAPD Bodycam', multiple = false, price = false },
                { name = 'dashcam', label = 'LAPD Dashcam', multiple = false, price = false },
                { name = 'radio', label = 'LAPD Radio', multiple = false, price = false },
                { name = 'repairkit', label = 'Repair Kit', multiple = false, price = 500 },
                },
                [3] = { -- Corporal
                { name = 'WEAPON_PDG19',     label = 'LAPD Glock 19',      multiple = false, price = false },
                { name = 'WEAPON_YTASER',     label = 'Yellow Taser',      multiple = false, price = false },
                { name = 'WEAPON_PD870',     label = 'LAPD Remmington 870',      multiple = false, price = false },
                { name = 'WEAPON_PDC7',     label = 'LAPD C7',      multiple = false, price = false }, -- Set price to false if undesired
                { name = 'WEAPON_PDBATON', label = 'Baton', multiple = false, price = false },
                { name = 'ammo-9' , label = '9mm Ammo', multiple = true, price = false },
                { name = 'ammo-45' , label = '45mm Ammo', multiple = true, price = false },
                { name = 'ammo-shotgun' , label = '45mm Ammo', multiple = true, price = false }, -- Set multiple to true if you want ability to purchase more than one at a time
                { name = 'armour', label = 'Bulletproof Vest', multiple = false, price = false },
                { name = 'handcuffs', label = 'LAPD Handcuffs', multiple = false, price = false },
                { name = 'bodycam', label = 'LAPD Bodycam', multiple = false, price = false },
                { name = 'dashcam', label = 'LAPD Dashcam', multiple = false, price = false },
                { name = 'radio', label = 'LAPD Radio', multiple = false, price = false },
                { name = 'repairkit', label = 'Repair Kit', multiple = false, price = 500 },
                },
                [4] = { --  Serg 1
                { name = 'WEAPON_PDG19',     label = 'LAPD Glock 19',      multiple = false, price = false },
                { name = 'WEAPON_YTASER',     label = 'Yellow Taser',      multiple = false, price = false },
                { name = 'WEAPON_PDHKUSP',     label = 'LAPD USP',      multiple = false, price = false },
                { name = 'WEAPON_PD870',     label = 'LAPD Remmington 870',      multiple = false, price = false },
                { name = 'WEAPON_PDC7',     label = 'LAPD C7',      multiple = false, price = false }, -- Set price to false if undesired
                { name = 'WEAPON_PDBATON', label = 'Baton', multiple = false, price = false },
                { name = 'ammo-9' , label = '9mm Ammo', multiple = true, price = false },
                { name = 'ammo-45' , label = '45mm Ammo', multiple = true, price = false },
                { name = 'ammo-shotgun' , label = '45mm Ammo', multiple = true, price = false }, -- Set multiple to true if you want ability to purchase more than one at a time
                { name = 'armour', label = 'Bulletproof Vest', multiple = false, price = false },
                { name = 'medicalbag', label = 'Medical Bag', multiple = false, price = false },
                { name = 'handcuffs', label = 'LAPD Handcuffs', multiple = false, price = false },
                { name = 'bodycam', label = 'LAPD Bodycam', multiple = false, price = false },
                { name = 'dashcam', label = 'LAPD Dashcam', multiple = false, price = false },
                { name = 'radio', label = 'LAPD Radio', multiple = false, price = false },
                { name = 'repairkit', label = 'Repair Kit', multiple = false, price = 500 },
                },
                [5] = { --  Serg 2
                { name = 'WEAPON_PDG19',     label = 'LAPD Glock 19',      multiple = false, price = false },
                { name = 'WEAPON_YTASER',     label = 'Yellow Taser',      multiple = false, price = false },
                { name = 'WEAPON_PDHKUSP',     label = 'LAPD USP',      multiple = false, price = false },
                { name = 'WEAPON_PD870',     label = 'LAPD Remmington 870',      multiple = false, price = false },
                { name = 'WEAPON_PDC7',     label = 'LAPD C7',      multiple = false, price = false }, -- Set price to false if undesired
                { name = 'WEAPON_PDBATON', label = 'Baton', multiple = false, price = false },
                { name = 'ammo-9' , label = '9mm Ammo', multiple = true, price = false },
                { name = 'ammo-45' , label = '45mm Ammo', multiple = true, price = false },
                { name = 'ammo-shotgun' , label = '45mm Ammo', multiple = true, price = false }, -- Set multiple to true if you want ability to purchase more than one at a time
                { name = 'armour', label = 'Bulletproof Vest', multiple = false, price = false },
                { name = 'medicalbag', label = 'Medical Bag', multiple = false, price = false },
                { name = 'handcuffs', label = 'LAPD Handcuffs', multiple = false, price = false },
                { name = 'bodycam', label = 'LAPD Bodycam', multiple = false, price = false },
                { name = 'dashcam', label = 'LAPD Dashcam', multiple = false, price = false },
                { name = 'radio', label = 'LAPD Radio', multiple = false, price = false },
                { name = 'repairkit', label = 'Repair Kit', multiple = false, price = 500 },
                },
                [6] = { -- Detective I
                { name = 'WEAPON_PDG19',     label = 'LAPD Glock 19',      multiple = false, price = false },
                { name = 'WEAPON_YTASER',     label = 'Yellow Taser',      multiple = false, price = false },
                { name = 'WEAPON_PDHKUSP',     label = 'LAPD USP',      multiple = false, price = false },
                { name = 'WEAPON_PD870',     label = 'LAPD Remmington 870',      multiple = false, price = false },
                { name = 'WEAPON_PDC7',     label = 'LAPD C7',      multiple = false, price = false }, -- Set price to false if undesired
                { name = 'WEAPON_PDBATON', label = 'Baton', multiple = false, price = false },
                { name = 'ammo-9' , label = '9mm Ammo', multiple = true, price = false },
                { name = 'ammo-45' , label = '45mm Ammo', multiple = true, price = false },
                { name = 'ammo-shotgun' , label = '45mm Ammo', multiple = true, price = false }, -- Set multiple to true if you want ability to purchase more than one at a time
                { name = 'armour', label = 'Bulletproof Vest', multiple = false, price = false },
                { name = 'medicalbag', label = 'Medical Bag', multiple = false, price = false },
                { name = 'handcuffs', label = 'LAPD Handcuffs', multiple = false, price = false },
                { name = 'bodycam', label = 'LAPD Bodycam', multiple = false, price = false },
                { name = 'dashcam', label = 'LAPD Dashcam', multiple = false, price = false },
                { name = 'radio', label = 'LAPD Radio', multiple = false, price = false },
                { name = 'repairkit', label = 'Repair Kit', multiple = false, price = 500 },
                },
                [7] = { -- Detective II
                    { name = 'WEAPON_PDG19',     label = 'LAPD Glock 19',      multiple = false, price = false },
                    { name = 'WEAPON_YTASER',     label = 'Yellow Taser',      multiple = false, price = false },
                    { name = 'WEAPON_PDHKUSP',     label = 'LAPD USP',      multiple = false, price = false },
                    { name = 'WEAPON_PD870',     label = 'LAPD Remmington 870',      multiple = false, price = false },
                    { name = 'WEAPON_PDC7',     label = 'LAPD C7',      multiple = false, price = false }, -- Set price to false if undesired
                    { name = 'WEAPON_PDBATON', label = 'Baton', multiple = false, price = false },
                    { name = 'ammo-9' , label = '9mm Ammo', multiple = true, price = false },
                    { name = 'ammo-45' , label = '45mm Ammo', multiple = true, price = false },
                    { name = 'ammo-shotgun' , label = '45mm Ammo', multiple = true, price = false }, -- Set multiple to true if you want ability to purchase more than one at a time
                    { name = 'armour', label = 'Bulletproof Vest', multiple = false, price = false },
                    { name = 'medicalbag', label = 'Medical Bag', multiple = false, price = false },
                    { name = 'handcuffs', label = 'LAPD Handcuffs', multiple = false, price = false },
                    { name = 'bodycam', label = 'LAPD Bodycam', multiple = false, price = false },
                    { name = 'dashcam', label = 'LAPD Dashcam', multiple = false, price = false },
                    { name = 'radio', label = 'LAPD Radio', multiple = false, price = false },
                    { name = 'repairkit', label = 'Repair Kit', multiple = false, price = 500 },
                },
                [8] = { -- Detective III
                    { name = 'WEAPON_PDG19',     label = 'LAPD Glock 19',      multiple = false, price = false },
                    { name = 'WEAPON_YTASER',     label = 'Yellow Taser',      multiple = false, price = false },
                    { name = 'WEAPON_PDHKUSP',     label = 'LAPD USP',      multiple = false, price = false },
                    { name = 'WEAPON_PD870',     label = 'LAPD Remmington 870',      multiple = false, price = false },
                    { name = 'WEAPON_PDC7',     label = 'LAPD C7',      multiple = false, price = false }, -- Set price to false if undesired
                    { name = 'WEAPON_PDBATON', label = 'Baton', multiple = false, price = false },
                    { name = 'ammo-9' , label = '9mm Ammo', multiple = true, price = false },
                    { name = 'ammo-45' , label = '45mm Ammo', multiple = true, price = false },
                    { name = 'ammo-shotgun' , label = '45mm Ammo', multiple = true, price = false }, -- Set multiple to true if you want ability to purchase more than one at a time
                    { name = 'armour', label = 'Bulletproof Vest', multiple = false, price = false },
                    { name = 'medicalbag', label = 'Medical Bag', multiple = false, price = false },
                    { name = 'handcuffs', label = 'LAPD Handcuffs', multiple = false, price = false },
                    { name = 'bodycam', label = 'LAPD Bodycam', multiple = false, price = false },
                    { name = 'dashcam', label = 'LAPD Dashcam', multiple = false, price = false },
                    { name = 'radio', label = 'LAPD Radio', multiple = false, price = false },
                    { name = 'repairkit', label = 'Repair Kit', multiple = false, price = 500 },
                },
                [9] = { -- Lieutenant
                    { name = 'WEAPON_PDG19',     label = 'LAPD Glock 19',      multiple = false, price = false },
                    { name = 'WEAPON_YTASER',     label = 'Yellow Taser',      multiple = false, price = false },
                    { name = 'WEAPON_PDHKUSP',     label = 'LAPD USP',      multiple = false, price = false },
                    { name = 'WEAPON_PD870',     label = 'LAPD Remmington 870',      multiple = false, price = false },
                    { name = 'WEAPON_PDC7',     label = 'LAPD C7',      multiple = false, price = false }, -- Set price to false if undesired
                    { name = 'WEAPON_PDBATON', label = 'Baton', multiple = false, price = false },
                    { name = 'ammo-9' , label = '9mm Ammo', multiple = true, price = false },
                    { name = 'ammo-45' , label = '45mm Ammo', multiple = true, price = false },
                    { name = 'ammo-shotgun' , label = '45mm Ammo', multiple = true, price = false }, -- Set multiple to true if you want ability to purchase more than one at a time
                    { name = 'armour', label = 'Bulletproof Vest', multiple = false, price = false },
                    { name = 'medicalbag', label = 'Medical Bag', multiple = false, price = false },
                    { name = 'handcuffs', label = 'LAPD Handcuffs', multiple = false, price = false },
                    { name = 'bodycam', label = 'LAPD Bodycam', multiple = false, price = false },
                    { name = 'dashcam', label = 'LAPD Dashcam', multiple = false, price = false },
                    { name = 'radio', label = 'LAPD Radio', multiple = false, price = false },
                    { name = 'repairkit', label = 'Repair Kit', multiple = false, price = 500 },
                },
                [10] = { -- FTO
                    { name = 'WEAPON_PDG19',     label = 'LAPD Glock 19',      multiple = false, price = false },
                    { name = 'WEAPON_YTASER',     label = 'Yellow Taser',      multiple = false, price = false },
                    { name = 'WEAPON_PDHKUSP',     label = 'LAPD USP',      multiple = false, price = false },
                    { name = 'WEAPON_PD870',     label = 'LAPD Remmington 870',      multiple = false, price = false },
                    { name = 'WEAPON_PDC7',     label = 'LAPD C7',      multiple = false, price = false },
                    { name = 'WEAPON_PDHK33',     label = 'LAPD HK 433',      multiple = false, price = false }, -- Set price to false if undesired
                    { name = 'WEAPON_PDBATON', label = 'Baton', multiple = false, price = false },
                    { name = 'ammo-9' , label = '9mm Ammo', multiple = true, price = false },
                    { name = 'ammo-45' , label = '45mm Ammo', multiple = true, price = false },
                    { name = 'ammo-shotgun' , label = '45mm Ammo', multiple = true, price = false }, -- Set multiple to true if you want ability to purchase more than one at a time
                    { name = 'armour', label = 'Bulletproof Vest', multiple = false, price = false },
                    { name = 'medicalbag', label = 'Medical Bag', multiple = false, price = false },
                    { name = 'handcuffs', label = 'LAPD Handcuffs', multiple = false, price = false },
                    { name = 'bodycam', label = 'LAPD Bodycam', multiple = false, price = false },
                    { name = 'dashcam', label = 'LAPD Dashcam', multiple = false, price = false },
                    { name = 'radio', label = 'LAPD Radio', multiple = false, price = false },
                    { name = 'repairkit', label = 'Repair Kit', multiple = false, price = 500 },
                },
                [11] = { -- Captain
                    { name = 'WEAPON_PDG19',     label = 'LAPD Glock 19',      multiple = false, price = false },
                    { name = 'WEAPON_YTASER',     label = 'Yellow Taser',      multiple = false, price = false },
                    { name = 'WEAPON_PDHKUSP',     label = 'LAPD USP',      multiple = false, price = false },
                    { name = 'WEAPON_PD870',     label = 'LAPD Remmington 870',      multiple = false, price = false },
                    { name = 'WEAPON_PDC7',     label = 'LAPD C7',      multiple = false, price = false },
                    { name = 'WEAPON_PDHK33',     label = 'LAPD HK 433',      multiple = false, price = false }, -- Set price to false if undesired
                    { name = 'WEAPON_PDBATON', label = 'Baton', multiple = false, price = false },
                    { name = 'ammo-9' , label = '9mm Ammo', multiple = true, price = false },
                    { name = 'ammo-45' , label = '45mm Ammo', multiple = true, price = false },
                    { name = 'ammo-shotgun' , label = '45mm Ammo', multiple = true, price = false }, -- Set multiple to true if you want ability to purchase more than one at a time
                    { name = 'armour', label = 'Bulletproof Vest', multiple = false, price = false },
                    { name = 'medicalbag', label = 'Medical Bag', multiple = false, price = false },
                    { name = 'handcuffs', label = 'LAPD Handcuffs', multiple = false, price = false },
                    { name = 'bodycam', label = 'LAPD Bodycam', multiple = false, price = false },
                    { name = 'dashcam', label = 'LAPD Dashcam', multiple = false, price = false },
                    { name = 'radio', label = 'LAPD Radio', multiple = false, price = false },
                    { name = 'repairkit', label = 'Repair Kit', multiple = false, price = 500 },
                },
                [12] = { -- Commander
                    { name = 'WEAPON_PDG19',     label = 'LAPD Glock 19',      multiple = false, price = false },
                    { name = 'WEAPON_YTASER',     label = 'Yellow Taser',      multiple = false, price = false },
                    { name = 'WEAPON_PDHKUSP',     label = 'LAPD USP',      multiple = false, price = false },
                    { name = 'WEAPON_PD870',     label = 'LAPD Remmington 870',      multiple = false, price = false },
                    { name = 'WEAPON_PDC7',     label = 'LAPD C7',      multiple = false, price = false },
                    { name = 'WEAPON_PDHK33',     label = 'LAPD HK 433',      multiple = false, price = false }, -- Set price to false if undesired
                    { name = 'WEAPON_PDBATON', label = 'Baton', multiple = false, price = false },
                    { name = 'ammo-9' , label = '9mm Ammo', multiple = true, price = false },
                    { name = 'ammo-45' , label = '45mm Ammo', multiple = true, price = false },
                    { name = 'ammo-shotgun' , label = '45mm Ammo', multiple = true, price = false }, -- Set multiple to true if you want ability to purchase more than one at a time
                    { name = 'armour', label = 'Bulletproof Vest', multiple = false, price = false },
                    { name = 'medicalbag', label = 'Medical Bag', multiple = false, price = false },
                    { name = 'handcuffs', label = 'LAPD Handcuffs', multiple = false, price = false },
                    { name = 'bodycam', label = 'LAPD Bodycam', multiple = false, price = false },
                    { name = 'dashcam', label = 'LAPD Dashcam', multiple = false, price = false },
                    { name = 'radio', label = 'LAPD Radio', multiple = false, price = false },
                    { name = 'repairkit', label = 'Repair Kit', multiple = false, price = 500 },
                },
                [13] = { -- Deputy Chief
                    { name = 'WEAPON_PDG19',     label = 'LAPD Glock 19',      multiple = false, price = false },
                    { name = 'WEAPON_YTASER',     label = 'Yellow Taser',      multiple = false, price = false },
                    { name = 'WEAPON_PDHKUSP',     label = 'LAPD USP',      multiple = false, price = false },
                    { name = 'WEAPON_PD870',     label = 'LAPD Remmington 870',      multiple = false, price = false },
                    { name = 'WEAPON_PDC7',     label = 'LAPD C7',      multiple = false, price = false },
                    { name = 'WEAPON_PDHK33',     label = 'LAPD HK 433',      multiple = false, price = false },
                    { name = 'WEAPON_PDP88',     label = 'LAPD P88',      multiple = false, price = false },
                    { name = 'WEAPON_PDBM3',     label = 'LAPD Banelli',      multiple = false, price = false }, -- Set price to false if undesired
                    { name = 'WEAPON_PDBATON', label = 'Baton', multiple = false, price = false },
                    { name = 'ammo-9' , label = '9mm Ammo', multiple = true, price = false },
                    { name = 'ammo-45' , label = '45mm Ammo', multiple = true, price = false },
                    { name = 'ammo-shotgun' , label = '45mm Ammo', multiple = true, price = false }, -- Set multiple to true if you want ability to purchase more than one at a time
                    { name = 'armour', label = 'Bulletproof Vest', multiple = false, price = false },
                    { name = 'medicalbag', label = 'Medical Bag', multiple = false, price = false },
                    { name = 'handcuffs', label = 'LAPD Handcuffs', multiple = true, price = false },
                    { name = 'bodycam', label = 'LAPD Bodycam', multiple = false, price = false },
                    { name = 'dashcam', label = 'LAPD Dashcam', multiple = false, price = false },
                    { name = 'radio', label = 'LAPD Radio', multiple = false, price = false },
                    { name = 'repairkit', label = 'Repair Kit', multiple = true, price = 500 },
                },
            }
        },

        cloakroom = {
            enabled = true,                        -- WILL NOT SHOW IN QBCORE INSTEAD USE QB-CLOTHING CONFIG! Set to false if you don't want to use (Compatible with esx_skin & wasabi fivem-appearance fork)
            jobLock = 'police',                    -- Allow only one of Config.policeJob listings / Set to false if allow all Config.policeJobs
            coords = vec3(-446.11,5995.99,32.46), -- Coords of cloakroom
            label = '[E] - Change Clothes',        -- String of text ui of cloakroom
            range = 2.0,                           -- Range away from coords you can use.
            uniforms = {                           -- Uniform choices
                [1] = {                            -- Order it will display
                    label = 'Patrol',              -- Name of outfit that will display in menu
                    minGrade = 0,                  -- Min grade level that can access? Set to 0 or false for everyone to use
                    male = {                       -- Male variation
                        clothing = {
                            -- Components / 0: Face 1: Mask 2: Hair 3: Torso 4: Leg 5: Parachute / bag 6: Shoes 7: Accessory 8: Undershirt 9: Kevlar 10: Badge 11: Torso 2
                            -- https://docs.fivem.net/natives/?_0xD4F7B05C
                            { component = 11, drawable = 5,  texture = 2 }, -- Torso
                            { component = 8,  drawable = 15, texture = 0 }, -- Shirt
                            { component = 4,  drawable = 6,  texture = 1 }, -- Pants
                            { component = 6,  drawable = 16, texture = 7 }, -- Shoes
                            { component = 3,  drawable = 5,  texture = 0 }, -- Arms
                        },
                        props = {
                            -- Components / 0: Hats 1: Glasses 2: Ears 6: Watches 7: Bracelets
                            -- https://docs.fivem.net/natives/?_0x93376B65A266EB5F

                            --    { component = 0, drawable = 0, texture = 0 }, -- Hats
                        }
                    },
                    female = {
                        clothing = {
                            -- Components / 0: Face 1: Mask 2: Hair 3: Torso 4: Leg 5: Parachute / bag 6: Shoes 7: Accessory 8: Undershirt 9: Kevlar 10: Badge 11: Torso 2
                            -- https://docs.fivem.net/natives/?_0xD4F7B05C
                            { component = 11, drawable = 4,  texture = 0 }, -- Torso
                            { component = 8,  drawable = 15, texture = 0 }, -- Shirt
                            { component = 4,  drawable = 25, texture = 0 }, -- Pants
                            { component = 6,  drawable = 16, texture = 4 }, -- Shoes
                            { component = 3,  drawable = 4,  texture = 0 }, -- Arms
                        },
                        props = {
                            -- Components / 0: Hats 1: Glasses 2: Ears 6: Watches 7: Bracelets
                            -- https://docs.fivem.net/natives/?_0x93376B65A266EB5F

                            --    { component = 0, drawable = 0, texture = 0 }, -- Hats
                        }
                    }
                },
                [2] = {              -- Order it will display
                    label = 'Chief', -- Name of outfit that will display in menu
                    minGrade = 0,    -- Min grade level that can access? Set to 0 or false for everyone to use
                    male = {         -- Male variation
                        clothing = {
                            -- Components / 0: Face 1: Mask 2: Hair 3: Torso 4: Leg 5: Parachute / bag 6: Shoes 7: Accessory 8: Undershirt 9: Kevlar 10: Badge 11: Torso 2
                            -- https://docs.fivem.net/natives/?_0xD4F7B05C
                            { component = 11, drawable = 15, texture = 0 }, -- Torso
                            { component = 8,  drawable = 58, texture = 0 }, -- Shirt
                            { component = 4,  drawable = 35, texture = 0 }, -- Pants
                            { component = 6,  drawable = 24, texture = 0 }, -- Shoes
                            { component = 3,  drawable = 15, texture = 0 }, -- Arms
                        },
                        props = {
                            -- Components / 0: Hats 1: Glasses 2: Ears 6: Watches 7: Bracelets
                            -- https://docs.fivem.net/natives/?_0x93376B65A266EB5F

                            --    { component = 0, drawable = 0, texture = 0 }, -- Hats
                        }
                    },
                    female = {
                        clothing = {
                            -- Components / 0: Face 1: Mask 2: Hair 3: Torso 4: Leg 5: Parachute / bag 6: Shoes 7: Accessory 8: Undershirt 9: Kevlar 10: Badge 11: Torso 2
                            -- https://docs.fivem.net/natives/?_0xD4F7B05C
                            { component = 11, drawable = 4,  texture = 0 }, -- Torso
                            { component = 8,  drawable = 15, texture = 0 }, -- Shirt
                            { component = 4,  drawable = 25, texture = 0 }, -- Pants
                            { component = 6,  drawable = 16, texture = 4 }, -- Shoes
                            { component = 3,  drawable = 4,  texture = 0 }, -- Arms
                        },
                        props = {
                            -- Components / 0: Hats 1: Glasses 2: Ears 6: Watches 7: Bracelets
                            -- https://docs.fivem.net/natives/?_0x93376B65A266EB5F

                            --    { component = 0, drawable = 0, texture = 0 }, -- Hats
                        }
                    }
                },
                [3] = {              -- Order it will display
                    label = 'Chief', -- Name of outfit that will display in menu
                    minGrade = 0,    -- Min grade level that can access? Set to 0 or false for everyone to use
                    male = {         -- Male variation
                        clothing = {
                            -- Components / 0: Face 1: Mask 2: Hair 3: Torso 4: Leg 5: Parachute / bag 6: Shoes 7: Accessory 8: Undershirt 9: Kevlar 10: Badge 11: Torso 2
                            -- https://docs.fivem.net/natives/?_0xD4F7B05C
                            { component = 11, drawable = 15, texture = 0 }, -- Torso
                            { component = 8,  drawable = 58, texture = 0 }, -- Shirt
                            { component = 4,  drawable = 35, texture = 0 }, -- Pants
                            { component = 6,  drawable = 24, texture = 0 }, -- Shoes
                            { component = 3,  drawable = 15, texture = 0 }, -- Arms
                        },
                        props = {
                            -- Components / 0: Hats 1: Glasses 2: Ears 6: Watches 7: Bracelets
                            -- https://docs.fivem.net/natives/?_0x93376B65A266EB5F

                            --    { component = 0, drawable = 0, texture = 0 }, -- Hats
                        }
                    },
                    female = {
                        clothing = {
                            -- Components / 0: Face 1: Mask 2: Hair 3: Torso 4: Leg 5: Parachute / bag 6: Shoes 7: Accessory 8: Undershirt 9: Kevlar 10: Badge 11: Torso 2
                            -- https://docs.fivem.net/natives/?_0xD4F7B05C
                            { component = 11, drawable = 4,  texture = 0 }, -- Torso
                            { component = 8,  drawable = 15, texture = 0 }, -- Shirt
                            { component = 4,  drawable = 25, texture = 0 }, -- Pants
                            { component = 6,  drawable = 16, texture = 4 }, -- Shoes
                            { component = 3,  drawable = 4,  texture = 0 }, -- Arms
                        },
                        props = {
                            -- Components / 0: Hats 1: Glasses 2: Ears 6: Watches 7: Bracelets
                            -- https://docs.fivem.net/natives/?_0x93376B65A266EB5F

                            --    { component = 0, drawable = 0, texture = 0 }, -- Hats
                        }
                    }
                },
            }
        },

        -- Personal Locker. Supports inventories: ox_inventory, qb-inventory, and qs-inventory
        --        Custom inventories can easily be added in wasabi_bridge/inventories/
        personalLocker = {
            enabled = true,                       -- Enable personal locker for this station?
            jobLock = 'police',                    -- Job lock?
            coords = vector3(-444.94,6001.49,32.46), -- Area to prompt personal locker
            range = 1.0,                           -- Range it will prompt from coords above
            label = '[E] - Access Personal Locker',
            target = {
                enabled = false, -- If enabled, the location above will be obsolete
                label = 'Access Personal Locker',
                coords = vector3(-444.94,6001.49,32.46),
                heading = 354.94,
                distance = 2.5,
                width = 2.0,
                length = 1.0,
                minZ = 32.29 - 0.9,
                maxZ = 32.69 + 0.9
            }
        },

        evidenceLocker = {
            enabled = true,                      -- Enable evidence locker for this station?
            jobLock = 'police',                   -- Job lock?
            coords = vec3(-447.85,6011.02,36.63), -- Area to prompt personal locker
            range = 2.0,                          -- Range it will prompt from coords above
            label = '[E] - Access Evidence Locker',
            target = {
                enabled = false, -- If enabled, the location above will be obsolete
                label = 'Access Evidence Locker',
                coords = vec3(-447.85,6011.02,36.63),
                heading = 266.23,
                distance = 2.5,
                width = 2.0,
                length = 1.0,
                minZ = 36.27 - 0.9,
                maxZ = 36.67 + 0.9
            }
        },


        vehicles = {                                   -- Vehicle Garage
            enabled = true,                            -- Enable? False if you have you're own way for medics to obtain vehicles.
            jobLock = 'police',                        -- Job lock? or access to all police jobs by using false
            zone = {
                coords = vec3(-478.91,6014.83,31.34), -- Area to prompt vehicle garage
                range = 5.5,                           -- Range it will prompt from coords above
                label = '[E] - Access Garage',
                return_label = '[E] - Return Vehicle'
            },
            spawn = {
                land = {
                    coords = vec3(-479.18,6027.64,31.34), -- Coords of where land vehicle spawn/return
                    heading = 3.68
                },
                air = {
                    coords = vec3(-475.33,5988.45,31.34), -- Coords of where air vehicles spawn/return
                    heading = 0.01
                }
            },
            options = {

                [0] = {                    -- Job grade as table name
                    ['polcharger18'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Police Cruiser',
                        category = 'land', -- Options are 'land' and 'air'
                    },
                },

                [1] = {                    -- Job grade as table name
                    ['polcharger18'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Buffalo',
                        category = 'land', -- Options are 'land' and 'air'
                    },
                    ['poldurango'] = {        -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Durungo',
                        category = 'land', -- Options are 'land' and 'air'
                    },
                },

                [2] = {                    -- Job grade as table name
                    ['polcharger18'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Buffalo',
                        category = 'land', -- Options are 'land' and 'air'
                    },
                    ['poldurango'] = {        -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Durungo',
                        category = 'land', -- Options are 'land' and 'air'
                    },
                    ['polsilverado19'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Police Truck',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['polcross'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Police Motocross',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                },

                [3] = {                    -- Job grade as table name
                    ['polcharger18'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Buffalo',
                        category = 'land', -- Options are 'land' and 'air'
                    },
                    ['poldurango'] = {        -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Durungo',
                        category = 'land', -- Options are 'land' and 'air'
                    },
                    ['polsilverado19'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Police Truck',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['polmustang'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'HEAT 1 SHELLY',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                },
                [4] = {                    -- Job grade as table name
                    ['polcharger18'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Buffalo',
                        category = 'land', -- Options are 'land' and 'air'
                    },
                    ['poldurango'] = {        -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Durungo',
                        category = 'land', -- Options are 'land' and 'air'
                    },
                    ['polsilverado19'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Police Truck',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['polmustang'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'HEAT 1 SHELLY',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['sw_sprinter'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'LAPD Van',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                },
                [5] = {                    -- Job grade as table name
                    ['polcharger18'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Buffalo',
                        category = 'land', -- Options are 'land' and 'air'
                    },
                    ['poldurango'] = {        -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Durungo',
                        category = 'land', -- Options are 'land' and 'air'
                    },
                    ['polsilverado19'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Police Truck',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['polmustang'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'HEAT 1 SHELLY',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['sw_sprinter'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'LAPD Van',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['sw_subrb'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'LAPD Subababin',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['polheli'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'LAPD Heli',
                        category = 'air',  -- Options are 'land' and 'air'
                    },
                },
                [6] = {                    -- Job grade as table name
                    ['polcharger18'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Buffalo',
                        category = 'land', -- Options are 'land' and 'air'
                    },
                    ['poldurango'] = {        -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Durungo',
                        category = 'land', -- Options are 'land' and 'air'
                    },
                    ['polsilverado19'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Police Truck',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['polmustang'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'HEAT 1 SHELLY',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['sw_sprinter'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'LAPD Van',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['sw_subrb'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'LAPD Subababin',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['unmarkedjl'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Unmarked Buffalo',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['polheli'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'LAPD Heli',
                        category = 'air',  -- Options are 'land' and 'air'
                    },
                },
                [7] = {                    -- Job grade as table name
                    ['polcharger18'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Buffalo',
                        category = 'land', -- Options are 'land' and 'air'
                    },
                    ['poldurango'] = {        -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Durungo',
                        category = 'land', -- Options are 'land' and 'air'
                    },
                    ['polsilverado19'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Police Truck',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['polmustang'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'HEAT 1 SHELLY',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['sw_sprinter'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'LAPD Van',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['sw_subrb'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'LAPD Subababin',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['unmarkedjl'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Unmarked Buffalo',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['pd_escalader'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Unmarked Escalader',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['polheli'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'LAPD Heli',
                        category = 'air',  -- Options are 'land' and 'air'
                    },
                },
                [8] = {                    -- Job grade as table name
                    ['polcharger18'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Buffalo',
                        category = 'land', -- Options are 'land' and 'air'
                    },
                    ['poldurango'] = {        -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Durungo',
                        category = 'land', -- Options are 'land' and 'air'
                    },
                    ['polsilverado19'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Police Truck',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['polmustang'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'HEAT 1 SHELLY',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['sw_sprinter'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'LAPD Van',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['sw_subrb'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'LAPD Subababin',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['unmarkedjl'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Unmarked Buffalo',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['pd_escalader'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Unmarked Escalader',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['zm_s500'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Unmarked 500',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['trhawk'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Unmarked Hawk',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['polheli'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'LAPD Heli',
                        category = 'air',  -- Options are 'land' and 'air'
                    },
                },
                [9] = {                    -- Job grade as table name
                    ['polcharger18'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Buffalo',
                        category = 'land', -- Options are 'land' and 'air'
                    },
                    ['poldurango'] = {        -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Durungo',
                        category = 'land', -- Options are 'land' and 'air'
                    },
                    ['polsilverado19'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Police Truck',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['polmustang'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'HEAT 1 SHELLY',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['sw_sprinter'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'LAPD Van',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['sw_subrb'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'LAPD Subababin',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['unmarkedjl'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Unmarked Buffalo',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['pd_escalader'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Unmarked Escalader',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['zm_s500'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Unmarked 500',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['trhawk'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Unmarked Hawk',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['sw_bearcat'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Bearcat',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['polheli'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'LAPD Heli',
                        category = 'air',  -- Options are 'land' and 'air'
                    },
                },
                [10] = {                    -- Job grade as table name
                    ['polcharger18'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Buffalo',
                        category = 'land', -- Options are 'land' and 'air'
                    },
                    ['poldurango'] = {        -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Durungo',
                        category = 'land', -- Options are 'land' and 'air'
                    },
                    ['polsilverado19'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Police Truck',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['polmustang'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'HEAT 1 SHELLY',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['sw_sprinter'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'LAPD Van',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['sw_subrb'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'LAPD Subababin',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['unmarkedjl'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Unmarked Buffalo',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['pd_escalader'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Unmarked Escalader',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['zm_s500'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Unmarked 500',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['trhawk'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Unmarked Hawk',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['sw_bearcat'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Bearcat',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['polbmwm7'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'BW M 7',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['polcoach'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Bus',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['polheli'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'LAPD Heli',
                        category = 'air',  -- Options are 'land' and 'air'
                    },
                },
                [11] = {                    -- Job grade as table name
                    ['polcharger18'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Buffalo',
                        category = 'land', -- Options are 'land' and 'air'
                    },
                    ['poldurango'] = {        -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Durungo',
                        category = 'land', -- Options are 'land' and 'air'
                    },
                    ['polsilverado19'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Police Truck',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['polmustang'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'HEAT 1 SHELLY',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['sw_sprinter'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'LAPD Van',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['sw_subrb'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'LAPD Subababin',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['unmarkedjl'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Unmarked Buffalo',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['pd_escalader'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Unmarked Escalader',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['zm_s500'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Unmarked 500',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['trhawk'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Unmarked Hawk',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['sw_bearcat'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Bearcat',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['polbmwm7'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'BW M 7',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['polcoach'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Bus',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['rrhycadeevoxpd'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'EVO XD',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['polheli'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'LAPD Heli',
                        category = 'air',  -- Options are 'land' and 'air'
                    },
                },
                [12] = {                    -- Job grade as table name
                    ['polcharger18'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Buffalo',
                        category = 'land', -- Options are 'land' and 'air'
                    },
                    ['poldurango'] = {        -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Durungo',
                        category = 'land', -- Options are 'land' and 'air'
                    },
                    ['polsilverado19'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Police Truck',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['polmustang'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'HEAT 1 SHELLY',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['sw_sprinter'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'LAPD Van',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['sw_subrb'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'LAPD Subababin',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['unmarkedjl'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Unmarked Buffalo',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['pd_escalader'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Unmarked Escalader',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['zm_s500'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Unmarked 500',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['trhawk'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Unmarked Hawk',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['sw_bearcat'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Bearcat',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['polbmwm7'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'BW M 7',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['polcoach'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Bus',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['rrhycadeevoxpd'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'EVO XD',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['polheli'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'LAPD Heli',
                        category = 'air',  -- Options are 'land' and 'air'
                    },
                },
                [13] = {                    -- Job grade as table name
                    ['polcharger18'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Buffalo',
                        category = 'land', -- Options are 'land' and 'air'
                    },
                    ['poldurango'] = {        -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Durungo',
                        category = 'land', -- Options are 'land' and 'air'
                    },
                    ['polsilverado19'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Police Truck',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['polmustang'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'HEAT 1 SHELLY',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['sw_sprinter'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'LAPD Van',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['sw_subrb'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'LAPD Subababin',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['unmarkedjl'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Unmarked Buffalo',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['pd_escalader'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Unmarked Escalader',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['zm_s500'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Unmarked 500',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['trhawk'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Unmarked Hawk',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['sw_bearcat'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Bearcat',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['polbmwm7'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'BW M 7',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['polcoach'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Bus',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['rrhycadeevoxpd'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'EVO XD',
                        category = 'land',  -- Options are 'land' and 'air'
                    },
                    ['polheli'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'LAPD Heli',
                        category = 'air',  -- Options are 'land' and 'air'
                    },
                },
            }
        }
    },
}
