-- 基础信息
local base_info = {
	group_id = 133210432
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
	{ config_id = 432002, gadget_id = 70211011, pos = { x = -3571.899, y = 205.775, z = -607.558 }, rot = { x = 1.921, y = 137.199, z = 359.441 }, level = 26, drop_tag = "战斗中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1432001, name = "VARIABLE_CHANGE_432001", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_432001", action = "action_EVENT_VARIABLE_CHANGE_432001", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "MonsCount", value = 0, no_refresh = true }
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
		triggers = { "VARIABLE_CHANGE_432001" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "MonsCount", value = 0, no_refresh = true }
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 432002, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { },
		npcs = { },
		variables = {
			{ config_id = 1, name = "MonsCount", value = 0, no_refresh = true }
		}
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_432001(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"MonsCount"为3
	if ScriptLib.GetGroupVariableValue(context, "MonsCount") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_432001(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210432, 2)
	
	return 0
end