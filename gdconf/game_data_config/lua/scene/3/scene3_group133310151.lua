-- 基础信息
local base_info = {
	group_id = 133310151
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
	{ config_id = 151001, gadget_id = 70500000, pos = { x = -2118.990, y = 153.998, z = 4799.057 }, rot = { x = 37.251, y = 343.832, z = 354.713 }, level = 32, point_type = 2054, area_id = 26 },
	{ config_id = 151002, gadget_id = 70500000, pos = { x = -2097.402, y = 154.965, z = 4806.202 }, rot = { x = 22.559, y = 358.675, z = 18.898 }, level = 32, point_type = 2054, area_id = 26 },
	{ config_id = 151003, gadget_id = 70500000, pos = { x = -2103.373, y = 156.980, z = 4776.461 }, rot = { x = 308.757, y = 0.000, z = 0.000 }, level = 32, point_type = 2054, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1151004, name = "GROUP_LOAD_151004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_151004", action = "action_EVENT_GROUP_LOAD_151004", trigger_count = 0 }
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
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_151004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 151001, 151002, 151003 },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GROUP_LOAD_151004(context, evt)
	if ScriptLib.GetDeathZoneStatus(context,0) == 0 then
	
	return true
	
	end
	
	
	return false
end

-- 触发操作
function action_EVENT_GROUP_LOAD_151004(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133310151, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

require "V3_0/DeathFieldStandard"