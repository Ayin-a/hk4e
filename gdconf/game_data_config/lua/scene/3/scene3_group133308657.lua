-- 基础信息
local base_info = {
	group_id = 133308657
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
	{ config_id = 657001, gadget_id = 70710160, pos = { x = -1829.135, y = 329.239, z = 4119.641 }, rot = { x = 0.000, y = 10.871, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 657002, gadget_id = 70330293, pos = { x = -1829.135, y = 329.439, z = 4119.641 }, rot = { x = 0.000, y = 132.996, z = 0.000 }, level = 32, state = GadgetState.CrystalResonate2, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1657003, name = "QUEST_FINISH_657003", event = EventType.EVENT_QUEST_FINISH, source = "7327503", condition = "", action = "action_EVENT_QUEST_FINISH_657003" }
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
	rand_suite = false
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suite_disk = {
	[1] = {
		gadgets = {
		},
		monsters = {
		},
		regions = { },
		triggers = { "QUEST_FINISH_657003" },
		npcs = { },
		variables = {
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 657001, state = 0 },
			{ config_id = 657002, state = 302 }
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
function action_EVENT_QUEST_FINISH_657003(context, evt)
		-- 将指定group的suiteIndex设为指定suite
	  ScriptLib.SetFlowSuite(context, 133308657, 2)
	
	return 0
end