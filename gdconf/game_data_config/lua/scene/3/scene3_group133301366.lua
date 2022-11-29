-- 基础信息
local base_info = {
	group_id = 133301366
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
	{ config_id = 366001, gadget_id = 70500000, pos = { x = -844.949, y = 37.237, z = 3350.220 }, rot = { x = 359.099, y = 68.528, z = 343.509 }, level = 30, point_type = 2045, area_id = 23 },
	{ config_id = 366002, gadget_id = 70500000, pos = { x = -829.846, y = 31.703, z = 3338.136 }, rot = { x = 12.094, y = 117.071, z = 332.949 }, level = 30, point_type = 2045, area_id = 23 },
	{ config_id = 366003, gadget_id = 70500000, pos = { x = -813.396, y = 26.688, z = 3324.963 }, rot = { x = 0.736, y = 255.176, z = 33.397 }, level = 30, point_type = 2045, area_id = 23 },
	{ config_id = 366005, gadget_id = 70500000, pos = { x = -842.741, y = 54.270, z = 3327.080 }, rot = { x = 19.074, y = 178.896, z = 0.933 }, level = 30, point_type = 2045, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1366004, name = "GROUP_LOAD_366004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_366004", action = "action_EVENT_GROUP_LOAD_366004", trigger_count = 0 }
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
		gadgets = { 366001, 366002, 366003, 366005 },
		regions = { },
		triggers = { "GROUP_LOAD_366004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 366001, 366002, 366003, 366005 },
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
function condition_EVENT_GROUP_LOAD_366004(context, evt)
	if ScriptLib.GetDeathZoneStatus(context,0) == 0 then
	
	return true
	
	end
	
	
	return false
end

-- 触发操作
function action_EVENT_GROUP_LOAD_366004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133301366, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

require "V3_0/DeathFieldStandard"