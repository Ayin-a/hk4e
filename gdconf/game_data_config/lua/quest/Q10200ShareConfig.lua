-- 任务配置

-- 父任务id

main_id = 10200

sub_ids =
{
    1020001,
    1020002,
    1020003,
    1020004,
    1020005,
    1020006,
    1020007,
    1020008,
    1020009,
    1020010,
    1020011,
    1020012,
    1020013,
    1020014,
    1020015,
}

rewind_data = {}

rewind_data["1020003"] = 
{
    npcs = {
        {
            id = 160301,
            alias = "Npc160301",
            script = "Actor/Npc/TempNPC",
            pos = "Q10200BruceSpawn",
            scene_id  = 1009,
            room_id = 1,
			data_index = 1,
        },
        {
            id = 141401,
            alias = "Npc141401",
            script = "Actor/Npc/TempNPC",
            pos = "Q10200JackSpawn",
            scene_id  = 1009,
            room_id = 1,
			data_index = 2,
        },
        {
            id = 152301,
            alias = "Npc152301",
            script = "Actor/Npc/TempNPC",
            pos = "Q10200JoseSpawn",
            scene_id  = 1009,
            room_id = 1,
			data_index = 3,
        }
    }
}

rewind_data["1020016"] = 
{
    npcs = {
        {
            id = 160301,
            alias = "Npc160301",
            script = "Actor/Npc/TempNPC",
            pos = "Q10200BruceSpawn",
            scene_id  = 1009,
            room_id = 1,
			data_index = 1,
        },
        {
            id = 141401,
            alias = "Npc141401",
            script = "Actor/Npc/TempNPC",
            pos = "Q10200JackSpawn",
            scene_id  = 1009,
            room_id = 1,
			data_index = 2,
        },
        {
            id = 152301,
            alias = "Npc152301",
            script = "Actor/Npc/TempNPC",
            pos = "Q10200JoseSpawn",
            scene_id  = 1009,
            room_id = 1,
			data_index = 3,
        }
    }
}

rewind_data["1020007"] = 
{
    npcs = {
        {
            id = 1006,
            alias = "Qin",
            script = "Actor/Quest/Q411/Qin",
            pos = "Q10200Qin",
            scene_id  = 1004,
            room_id = 100402,
			data_index = 1,
        }
    }
}

rewind_data["1020008"] = 
{
    npcs = {
        {
            id = 1006,
            alias = "Qin",
            script = "Actor/Quest/Q411/Qin",
            pos = "Q10200Qin",
            scene_id  = 1004,
            room_id = 100402,
			data_index = 1,
        }
    },
    avatar = {
        scene_id = 1004,
        room_id = 100402,
        pos = "Q10200AvatarBorn"
    }

}

-- rewind_data["1020009"] = 
-- {
--     npcs = {
--         {
--             id = 10090,
--             alias = "Npc10090",
--             script = "Actor/Npc/TempNPC",
--             pos = "Q10200KleeSpawn",
--             scene_id  = 1004,
--             room_id = 1,
-- 			data_index = 1,
--         }
--     }
-- }

rewind_data["1020010"] = 
{
    npcs = {
        {
            id = 10090,
            alias = "Npc10090",
            script = "Actor/Npc/TempNPC",
            pos = "Q10200KleeSpawn",
            scene_id  = 1004,
            room_id = 1,
			data_index = 1,
        }
    }
}

quest_data = {}

quest_data["1020015"] = 
{
    npcs = {
        {
            id = 160301,
            alias = "Npc160301",
            script = "Actor/Npc/TempNPC",
            pos = "Q10200BruceSpawn",
            scene_id  = 1009,
            room_id = 1,
			data_index = 1,
        },
        {
            id = 141401,
            alias = "Npc141401",
            script = "Actor/Npc/TempNPC",
            pos = "Q10200JackSpawn",
            scene_id  = 1009,
            room_id = 1,
			data_index = 2,
        },
        {
            id = 152301,
            alias = "Npc152301",
            script = "Actor/Npc/TempNPC",
            pos = "Q10200JoseSpawn",
            scene_id  = 1009,
            room_id = 1,
			data_index = 3,
        },
        {
            id = 1006,
            alias = "Qin",
            script = "Actor/Quest/Q411/Qin",
            pos = "Q10200Qin",
            scene_id  = 1004,
            room_id = 100402,
			data_index = 4,
        },
        {
            id = 10090,
            alias = "Npc10090",
            script = "Actor/Npc/TempNPC",
            pos = "Q10200KleeSpawn",
            scene_id  = 1004,
            room_id = 1,
			data_index = 5,
        }
    }
}

quest_data["1020003"] = 
{
    npcs = {
        {
            id = 160301,
            alias = "Npc160301",
            script = "Actor/Npc/TempNPC",
            pos = "Q10200BruceSpawn",
            scene_id  = 1009,
            room_id = 1,
			data_index = 1,
        },
        {
            id = 141401,
            alias = "Npc141401",
            script = "Actor/Npc/TempNPC",
            pos = "Q10200JackSpawn",
            scene_id  = 1009,
            room_id = 1,
			data_index = 2,
        },
        {
            id = 152301,
            alias = "Npc152301",
            script = "Actor/Npc/TempNPC",
            pos = "Q10200JoseSpawn",
            scene_id  = 1009,
            room_id = 1,
			data_index = 3,
        },
        {
            id = 1006,
            alias = "Qin",
            script = "Actor/Quest/Q411/Qin",
            pos = "Q10200Qin",
            scene_id  = 1004,
            room_id = 100402,
			data_index = 4,
        },
        {
            id = 10090,
            alias = "Npc10090",
            script = "Actor/Npc/TempNPC",
            pos = "Q10200KleeSpawn",
            scene_id  = 1004,
            room_id = 1,
			data_index = 5,
        }
    }
}

quest_data["1020004"] = 
{
    npcs = {
        {
            id = 160301,
            alias = "Npc160301",
            script = "Actor/Npc/TempNPC",
            pos = "Q10200BruceSpawn",
            scene_id  = 1009,
            room_id = 1,
			data_index = 1,
        },
        {
            id = 141401,
            alias = "Npc141401",
            script = "Actor/Npc/TempNPC",
            pos = "Q10200JackSpawn",
            scene_id  = 1009,
            room_id = 1,
			data_index = 2,
        },
        {
            id = 152301,
            alias = "Npc152301",
            script = "Actor/Npc/TempNPC",
            pos = "Q10200JoseSpawn",
            scene_id  = 1009,
            room_id = 1,
			data_index = 3,
        },
        {
            id = 1006,
            alias = "Qin",
            script = "Actor/Quest/Q411/Qin",
            pos = "Q10200Qin",
            scene_id  = 1004,
            room_id = 100402,
			data_index = 4,
        },
        {
            id = 10090,
            alias = "Npc10090",
            script = "Actor/Npc/TempNPC",
            pos = "Q10200KleeSpawn",
            scene_id  = 1004,
            room_id = 1,
			data_index = 5,
        }
    }
}

quest_data["1020011"] = 
{
    npcs = {
        {
            id = 160301,
            alias = "Npc160301",
            script = "Actor/Npc/TempNPC",
            pos = "Q10200BruceSpawn",
            scene_id  = 1009,
            room_id = 1,
			data_index = 1,
        },
        {
            id = 141401,
            alias = "Npc141401",
            script = "Actor/Npc/TempNPC",
            pos = "Q10200JackSpawn",
            scene_id  = 1009,
            room_id = 1,
			data_index = 2,
        },
        {
            id = 152301,
            alias = "Npc152301",
            script = "Actor/Npc/TempNPC",
            pos = "Q10200JoseSpawn",
            scene_id  = 1009,
            room_id = 1,
			data_index = 3,
        },
        {
            id = 1006,
            alias = "Qin",
            script = "Actor/Quest/Q411/Qin",
            pos = "Q10200Qin",
            scene_id  = 1004,
            room_id = 100402,
			data_index = 4,
        },
        {
            id = 10090,
            alias = "Npc10090",
            script = "Actor/Npc/TempNPC",
            pos = "Q10200KleeSpawn",
            scene_id  = 1004,
            room_id = 1,
			data_index = 5,
        }
    }
}

quest_data["1020012"] = 
{
    npcs = {
        {
            id = 160301,
            alias = "Npc160301",
            script = "Actor/Npc/TempNPC",
            pos = "Q10200BruceSpawn",
            scene_id  = 1009,
            room_id = 1,
			data_index = 1,
        },
        {
            id = 141401,
            alias = "Npc141401",
            script = "Actor/Npc/TempNPC",
            pos = "Q10200JackSpawn",
            scene_id  = 1009,
            room_id = 1,
			data_index = 2,
        },
        {
            id = 152301,
            alias = "Npc152301",
            script = "Actor/Npc/TempNPC",
            pos = "Q10200JoseSpawn",
            scene_id  = 1009,
            room_id = 1,
			data_index = 3,
        },
        {
            id = 1006,
            alias = "Qin",
            script = "Actor/Quest/Q411/Qin",
            pos = "Q10200Qin",
            scene_id  = 1004,
            room_id = 100402,
			data_index = 4,
        },
        {
            id = 10090,
            alias = "Npc10090",
            script = "Actor/Npc/TempNPC",
            pos = "Q10200KleeSpawn",
            scene_id  = 1004,
            room_id = 1,
			data_index = 5,
        }
    }
}

quest_data["1020013"] = 
{
    npcs = {
        {
            id = 160301,
            alias = "Npc160301",
            script = "Actor/Npc/TempNPC",
            pos = "Q10200BruceSpawn",
            scene_id  = 1009,
            room_id = 1,
			data_index = 1,
        },
        {
            id = 141401,
            alias = "Npc141401",
            script = "Actor/Npc/TempNPC",
            pos = "Q10200JackSpawn",
            scene_id  = 1009,
            room_id = 1,
			data_index = 2,
        },
        {
            id = 152301,
            alias = "Npc152301",
            script = "Actor/Npc/TempNPC",
            pos = "Q10200JoseSpawn",
            scene_id  = 1009,
            room_id = 1,
			data_index = 3,
        },
        {
            id = 1006,
            alias = "Qin",
            script = "Actor/Quest/Q411/Qin",
            pos = "Q10200Qin",
            scene_id  = 1004,
            room_id = 100402,
			data_index = 4,
        },
        {
            id = 10090,
            alias = "Npc10090",
            script = "Actor/Npc/TempNPC",
            pos = "Q10200KleeSpawn",
            scene_id  = 1004,
            room_id = 1,
			data_index = 5,
        }
    }
}

quest_data["1020014"] = 
{
    npcs = {
        {
            id = 160301,
            alias = "Npc160301",
            script = "Actor/Npc/TempNPC",
            pos = "Q10200BruceSpawn",
            scene_id  = 1009,
            room_id = 1,
			data_index = 1,
        },
        {
            id = 141401,
            alias = "Npc141401",
            script = "Actor/Npc/TempNPC",
            pos = "Q10200JackSpawn",
            scene_id  = 1009,
            room_id = 1,
			data_index = 2,
        },
        {
            id = 152301,
            alias = "Npc152301",
            script = "Actor/Npc/TempNPC",
            pos = "Q10200JoseSpawn",
            scene_id  = 1009,
            room_id = 1,
			data_index = 3,
        },
        {
            id = 1006,
            alias = "Qin",
            script = "Actor/Quest/Q411/Qin",
            pos = "Q10200Qin",
            scene_id  = 1004,
            room_id = 100402,
			data_index = 4,
        },
        {
            id = 10090,
            alias = "Npc10090",
            script = "Actor/Npc/TempNPC",
            pos = "Q10200KleeSpawn",
            scene_id  = 1004,
            room_id = 1,
			data_index = 5,
        }
    }
}

quest_data["1020016"] = 
{
    npcs = {
        {
            id = 160301,
            alias = "Npc160301",
            script = "Actor/Npc/TempNPC",
            pos = "Q10200BruceSpawn",
            scene_id  = 1009,
            room_id = 1,
			data_index = 1,
        },
        {
            id = 141401,
            alias = "Npc141401",
            script = "Actor/Npc/TempNPC",
            pos = "Q10200JackSpawn",
            scene_id  = 1009,
            room_id = 1,
			data_index = 2,
        },
        {
            id = 152301,
            alias = "Npc152301",
            script = "Actor/Npc/TempNPC",
            pos = "Q10200JoseSpawn",
            scene_id  = 1009,
            room_id = 1,
			data_index = 3,
        },
        {
            id = 1006,
            alias = "Qin",
            script = "Actor/Quest/Q411/Qin",
            pos = "Q10200Qin",
            scene_id  = 1004,
            room_id = 100402,
			data_index = 4,
        },
        {
            id = 10090,
            alias = "Npc10090",
            script = "Actor/Npc/TempNPC",
            pos = "Q10200KleeSpawn",
            scene_id  = 1004,
            room_id = 1,
			data_index = 5,
        }
    }
}


quest_data["1020005"] = 
{
    npcs = {
        {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            pos = "Q10200PaimonSpawn",
            scene_id  = 1009,
            room_id = 1,
			data_index = 1,
        },
        {
            id = 1006,
            alias = "Qin",
            script = "Actor/Quest/Q411/Qin",
            pos = "Q10200Qin",
            scene_id  = 1004,
            room_id = 100402,
			data_index = 2,
        },
        {
            id = 10090,
            alias = "Npc10090",
            script = "Actor/Npc/TempNPC",
            pos = "Q10200KleeSpawn",
            scene_id  = 1004,
            room_id = 1,
			data_index = 3,
        }    
    },
    transmit_points = {
        {
            point_id = 1,
            scene_id = 1009,
            pos = "Q10200AvatarSpawn",
        },
    }
}

quest_data["1020006"] = 
{
    npcs = {
        {
            id = 1006,
            alias = "Qin",
            script = "Actor/Quest/Q411/Qin",
            pos = "Q10200Qin",
            scene_id  = 1004,
            room_id = 100402,
			data_index = 1,
        },
        {
            id = 10090,
            alias = "Npc10090",
            script = "Actor/Npc/TempNPC",
            pos = "Q10200KleeSpawn",
            scene_id  = 1004,
            room_id = 1,
			data_index = 2,
        } 
    }
}

quest_data["1020007"] = 
{
    npcs = {
        {
            id = 1006,
            alias = "Qin",
            script = "Actor/Quest/Q411/Qin",
            pos = "Q10200Qin",
            scene_id  = 1004,
            room_id = 100402,
			data_index = 1,
        },
        {
            id = 10090,
            alias = "Npc10090",
            script = "Actor/Npc/TempNPC",
            pos = "Q10200KleeSpawn",
            scene_id  = 1004,
            room_id = 1,
			data_index = 2,
        } 
    }
}

quest_data["1020008"] = 
{
    npcs = {
        {
            id = 1006,
            alias = "Qin",
            script = "Actor/Quest/Q411/Qin",
            pos = "Q10200Qin",
            scene_id  = 1004,
            room_id = 100402,
			data_index = 1,
        },
        {
            id = 10090,
            alias = "Npc10090",
            script = "Actor/Npc/TempNPC",
            pos = "Q10200KleeSpawn",
            scene_id  = 1004,
            room_id = 1,
			data_index = 2,
        } 
    }
}

quest_data["1020009"] = 
{
    npcs = {
        {
            id = 10090,
            alias = "Npc10090",
            script = "Actor/Npc/TempNPC",
            pos = "Q10200KleeSpawn",
            scene_id  = 1004,
            room_id = 1,
			data_index = 1,
        }
    }
}

quest_data["1020010"] = 
{
    npcs = {
        {
            id = 10090,
            alias = "Npc10090",
            script = "Actor/Npc/TempNPC",
            pos = "Q10200KleeSpawn",
            scene_id  = 1004,
            room_id = 1,
			data_index = 1,
        }
    }
}