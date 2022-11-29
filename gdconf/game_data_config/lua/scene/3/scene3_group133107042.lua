-- 基础信息
local base_info = {
	group_id = 133107042
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 42001, gadget_id = 70710342, pos = { x = -629.244, y = 219.789, z = 258.281 }, rot = { x = 0.000, y = 331.860, z = 2.000 }, level = 1, area_id = 7 },
	{ config_id = 42002, gadget_id = 71700226, pos = { x = -629.624, y = 219.813, z = 259.733 }, rot = { x = 349.176, y = 72.698, z = 1.184 }, level = 1, area_id = 7 },
	{ config_id = 42003, gadget_id = 70710341, pos = { x = -629.367, y = 220.495, z = 258.218 }, rot = { x = 0.000, y = 0.000, z = 2.000 }, level = 1, area_id = 7 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1042004, name = "QUEST_FINISH_42004", event = EventType.EVENT_QUEST_FINISH, source = "1100808", condition = "", action = "action_EVENT_QUEST_FINISH_42004", trigger_count = 0 }
}

-- 变量
variables = {
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	io_type = 1,
	suite = 1,
	end_suite = 0,
	rand_suite = false,
	father_quest = 11008,
	quest_config = {
		[1100806] = {
			{
				state = 2,
				suite = 1
			}
		},
		[1100813] = {
			{
				state = 2,
				suite = 1
			}
		},
		[1100815] = {
			{
				state = 2,
				suite = 1
			}
		},
		[1100814] = {
			{
				state = 2,
				suite = 2
			}
		},
		[1100812] = {
			{
				state = 2,
				suite = 1
			}
		},
		[1100807] = {
			{
				state = 2,
				suite = 2
			}
		}
	}
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suite_disk = {
	[1] = {
		gadgets = {
			{ config_id = 42001, state = 0 },
			{ config_id = 42002, state = 0 },
			{ config_id = 42003, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "QUEST_FINISH_42004" },
		npcs = { },
		variables = {
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 42001, state = 0 },
			{ config_id = 42002, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { },
		npcs = { },
		variables = {
		}
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_FINISH_42004(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133107042, EntityType.GADGET, 42003 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end