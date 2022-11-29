-- 任务配置

-- 父任务id

main_id = 20035

sub_ids =
{
    2003501,
    2003502,
    2003503,
    2003504,
}

---存放断线重连生成内容，和questdata配的存档点对应

rewind_data = {}

rewind_data["2003501"] =
{
  npcs = {
      {
          id = 155101,
          alias = "Npc155101",
          script = "Actor/Npc/TempNPC",
          pos = "Q20025NPC",
          scene_id  = 3,
          room_id = 0,
          data_index = 0,
      }
  }
}

rewind_data["2003502"] =
{
  npcs = {
      {
          id = 155101,
          alias = "Npc155101",
          script = "Actor/Npc/TempNPC",
          pos = "Q20025NPC",
          scene_id  = 3,
          room_id = 0,
          data_index = 0,
      }
  }
}


rewind_data["2003503"] =
{
  npcs = {
      {
          id = 155101,
          alias = "Npc155101",
          script = "Actor/Npc/TempNPC",
          pos = "Q20025NPC",
          scene_id  = 3,
          room_id = 0,
          data_index = 0,
      }
  }
}

rewind_data["2003504"] =
{
  npcs = {
      {
          id = 155101,
          alias = "Npc155101",
          script = "Actor/Npc/TempNPC",
          pos = "Q20025NPC",
          scene_id  = 3,
          room_id = 0,
          data_index = 0,
      }
  }
}

quest_data = {}

quest_data["2003501"] = 
{
    npcs = {
        {
            id = 155101,
            alias = "Npc155101",
            script = "Actor/Npc/TempNPC",
            pos = "Q20025NPC",
            scene_id  = 3,
            room_id = 0,
			      data_index = 0,
        }
    }
}

finish_action = {}
fail_action = {}
cancel_action = {}

cancel_action = 
{
	CLIENT = {},
	SERVER = {	
		QUEST_EXEC_REFRESH_GROUP_SUITE = 
		{
            {"3","133002284,1"},
		},
		QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = 
		{
			{"100301"},
		}
	},
}