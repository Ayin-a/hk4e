-- 基础信息
local base_info = {
	group_id = 133220374
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
	{ config_id = 374001, gadget_id = 70290155, pos = { x = -2114.548, y = 150.473, z = -4491.009 }, rot = { x = 0.000, y = 337.407, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 374002, gadget_id = 70290156, pos = { x = -2125.340, y = 160.120, z = -4460.240 }, rot = { x = 0.000, y = 338.093, z = 0.000 }, level = 27, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1374003, name = "VARIABLE_CHANGE_374003", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_374003", action = "action_EVENT_VARIABLE_CHANGE_374003", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "waterdown", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	regions = {
		{ config_id = 374005, shape = RegionShape.SPHERE, radius = 15, pos = { x = -2185.813, y = 180.776, z = -4344.747 }, area_id = 11 },
		{ config_id = 374006, shape = RegionShape.SPHERE, radius = 15, pos = { x = -2210.477, y = 187.378, z = -4316.298 }, area_id = 11 }
	},
	triggers = {
		{ config_id = 1374005, name = "ENTER_REGION_374005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_374005", action = "action_EVENT_ENTER_REGION_374005" },
		{ config_id = 1374006, name = "ENTER_REGION_374006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_374006", action = "action_EVENT_ENTER_REGION_374006" }
	}
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 2,
	rand_suite = false
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suites = {
	{
		-- suite_id = 1,
		-- description = ,
		monsters = { },
		gadgets = { 374001, 374002 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_374003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "VARIABLE_CHANGE_374003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_374003(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"waterdown"为1
	if ScriptLib.GetGroupVariableValue(context, "waterdown") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_374003(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133220374, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end