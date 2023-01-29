-- 基础信息
local base_info = {
	group_id = 133317049
}

-- DEFS_MISCS
local defs = {
 opt_id = 49004, --操作台ID
 rotor_top = 49003, --上层开关
 rotor_mid = 49002, --中层开关
 rotor_bot = 49001, --下层开关
 reminder_success = 400112,
}

local rotor_map = {
 [49001] = {init_state = 1, end_state = 2}, --开关对应的开始和正确位置
 [49002] = {init_state = 1, end_state = 2},
 [49003] = {init_state = 1, end_state = 2},
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
	{ config_id = 49001, gadget_id = 70360388, pos = { x = 926.700, y = 356.389, z = 5877.559 }, rot = { x = 0.000, y = 222.547, z = 0.000 }, level = 32, area_id = 30 },
	{ config_id = 49002, gadget_id = 70360388, pos = { x = 926.700, y = 357.974, z = 5877.559 }, rot = { x = 0.000, y = 222.547, z = 0.000 }, level = 32, area_id = 30 },
	{ config_id = 49003, gadget_id = 70360388, pos = { x = 926.701, y = 359.559, z = 5877.557 }, rot = { x = 0.000, y = 222.547, z = 0.000 }, level = 32, area_id = 30 },
	{ config_id = 49004, gadget_id = 70360001, pos = { x = 926.476, y = 356.206, z = 5877.458 }, rot = { x = 342.646, y = 0.000, z = 0.000 }, level = 32, area_id = 30 },
	{ config_id = 49006, gadget_id = 70290281, pos = { x = 937.533, y = 362.619, z = 5882.951 }, rot = { x = 0.000, y = 44.479, z = 0.000 }, level = 32, area_id = 30 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1049005, name = "VARIABLE_CHANGE_49005", event = EventType.EVENT_VARIABLE_CHANGE, source = "Finished", condition = "condition_EVENT_VARIABLE_CHANGE_49005", action = "action_EVENT_VARIABLE_CHANGE_49005" }
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
	suite = 1,
	end_suite = 0,
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
		gadgets = { 49001, 49002, 49003, 49004, 49006 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_49005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_49005(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	--检测当前改变的variable是否在预设区间
	if 0 > evt.param1 or 1 < evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_49005(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 49006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

require "V3_6/CodedLock"