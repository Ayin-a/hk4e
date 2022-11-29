-- 基础信息
local base_info = {
	group_id = 133301475
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
	{ config_id = 475001, gadget_id = 70500000, pos = { x = -1215.670, y = 177.579, z = 2947.375 }, rot = { x = 0.000, y = 340.597, z = 0.000 }, level = 30, point_type = 2002, area_id = 21 },
	{ config_id = 475002, gadget_id = 70500000, pos = { x = -1218.980, y = 176.955, z = 2975.654 }, rot = { x = 0.000, y = 135.326, z = 0.000 }, level = 30, point_type = 2002, area_id = 21 },
	{ config_id = 475003, gadget_id = 70500000, pos = { x = -1220.634, y = 176.825, z = 2976.018 }, rot = { x = 0.000, y = 103.149, z = 0.057 }, level = 30, point_type = 2002, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1475004, name = "GROUP_LOAD_475004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_475004", action = "action_EVENT_GROUP_LOAD_475004", trigger_count = 0 }
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
		triggers = { "GROUP_LOAD_475004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 475001, 475002, 475003 },
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
function condition_EVENT_GROUP_LOAD_475004(context, evt)
	if ScriptLib.GetDeathZoneStatus(context,0) == 0 then
	
	return true
	
	end
	
	
	return false
end

-- 触发操作
function action_EVENT_GROUP_LOAD_475004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133301475, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

require "V3_0/DeathFieldStandard"