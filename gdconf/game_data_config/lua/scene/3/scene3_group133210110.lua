-- 基础信息
local base_info = {
	group_id = 133210110
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
	{ config_id = 110001, gadget_id = 70350292, pos = { x = -4072.279, y = 218.283, z = -870.288 }, rot = { x = 0.000, y = 160.431, z = 0.000 }, level = 30, route_id = 321000060, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1110002, name = "VARIABLE_CHANGE_110002", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_110002", action = "action_EVENT_VARIABLE_CHANGE_110002" }
}

-- 变量
variables = {
	{ config_id = 1, name = "Success", value = 0, no_refresh = true }
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
			{ config_id = 110001, state = 0, platform_info = { point_id = 0, move_type = 1, route_id = 321000060, route_index = 0, is_started = true } }
		},
		monsters = {
		},
		regions = { },
		triggers = { "VARIABLE_CHANGE_110002" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "Success", value = 0, no_refresh = true }
		}
	},
	[2] = {
		gadgets = {
		},
		monsters = {
		},
		regions = { },
		triggers = { },
		npcs = { },
		variables = {
			{ config_id = 1, name = "Success", value = 0, no_refresh = true }
		}
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_110002(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Success"为1
	if ScriptLib.GetGroupVariableValue(context, "Success") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_110002(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210110, 2)
	
	return 0
end