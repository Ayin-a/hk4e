-- 基础信息
local base_info = {
	group_id = 133314110
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
	{ config_id = 110001, gadget_id = 70350438, pos = { x = -422.350, y = 123.924, z = 4453.308 }, rot = { x = 332.361, y = 133.792, z = 169.989 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 110002, gadget_id = 70350438, pos = { x = -409.026, y = 122.623, z = 4465.788 }, rot = { x = 333.652, y = 133.197, z = 168.136 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 110003, gadget_id = 70350438, pos = { x = -421.354, y = 119.086, z = 4465.050 }, rot = { x = 1.769, y = 48.601, z = 289.819 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 110004, gadget_id = 70350438, pos = { x = -409.954, y = 127.678, z = 4453.626 }, rot = { x = 2.645, y = 46.125, z = 289.119 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 110005, gadget_id = 70350437, pos = { x = -423.618, y = 141.272, z = 4432.491 }, rot = { x = 343.170, y = 87.261, z = 2.409 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 110006, gadget_id = 70350437, pos = { x = -412.756, y = 119.295, z = 4491.386 }, rot = { x = 343.210, y = 88.415, z = 346.892 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 110007, gadget_id = 70350437, pos = { x = -387.524, y = 137.901, z = 4467.295 }, rot = { x = 337.436, y = 183.643, z = 319.391 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 110008, gadget_id = 70350437, pos = { x = -447.883, y = 122.697, z = 4458.788 }, rot = { x = 337.665, y = 183.431, z = 319.675 }, level = 32, persistent = true, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1110009, name = "QUEST_FINISH_110009", event = EventType.EVENT_QUEST_FINISH, source = "7318707", condition = "", action = "action_EVENT_QUEST_FINISH_110009", trigger_count = 0 }
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
	end_suite = 2,
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
			{ config_id = 110001, state = 0 },
			{ config_id = 110002, state = 0 },
			{ config_id = 110003, state = 0 },
			{ config_id = 110004, state = 0 },
			{ config_id = 110005, state = 0 },
			{ config_id = 110006, state = 0 },
			{ config_id = 110007, state = 0 },
			{ config_id = 110008, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "QUEST_FINISH_110009" },
		npcs = { },
		variables = {
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 110001, state = 201 },
			{ config_id = 110002, state = 201 },
			{ config_id = 110003, state = 201 },
			{ config_id = 110004, state = 201 },
			{ config_id = 110005, state = 201 },
			{ config_id = 110006, state = 201 },
			{ config_id = 110007, state = 201 },
			{ config_id = 110008, state = 201 }
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
function action_EVENT_QUEST_FINISH_110009(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133314110, 2)
	
	return 0
end