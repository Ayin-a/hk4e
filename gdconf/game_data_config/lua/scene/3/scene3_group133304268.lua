-- 基础信息
local base_info = {
	group_id = 133304268
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
	{ config_id = 268001, gadget_id = 70350433, pos = { x = -1545.757, y = 276.090, z = 2363.602 }, rot = { x = 17.566, y = 331.296, z = 341.702 }, level = 30, area_id = 21 },
	{ config_id = 268002, gadget_id = 70350433, pos = { x = -1528.433, y = 267.111, z = 2311.503 }, rot = { x = 323.976, y = 351.506, z = 338.027 }, level = 30, area_id = 21 },
	{ config_id = 268003, gadget_id = 70350433, pos = { x = -1545.757, y = 276.090, z = 2363.602 }, rot = { x = 17.566, y = 331.296, z = 341.702 }, level = 30, area_id = 21 },
	{ config_id = 268004, gadget_id = 70350433, pos = { x = -1528.433, y = 267.111, z = 2311.503 }, rot = { x = 323.976, y = 351.506, z = 338.027 }, level = 30, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1268005, name = "VARIABLE_CHANGE_268005", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_268005", action = "action_EVENT_VARIABLE_CHANGE_268005", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "open", value = 0, no_refresh = false }
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
			{ config_id = 268001, state = 0 },
			{ config_id = 268002, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "VARIABLE_CHANGE_268005" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "open", value = 0, no_refresh = false }
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 268003, state = 201 },
			{ config_id = 268004, state = 201 }
		},
		monsters = {
		},
		regions = { },
		triggers = { },
		npcs = { },
		variables = {
			{ config_id = 1, name = "open", value = 0, no_refresh = false }
		}
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_268005(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"open"为1
	if ScriptLib.GetGroupVariableValue(context, "open") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_268005(context, evt)
		-- 将指定group的suiteIndex设为指定suite
	  ScriptLib.SetFlowSuite(context, 133304268, 2)
	
	-- 将configid为 268001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 268001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 268002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 268002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end