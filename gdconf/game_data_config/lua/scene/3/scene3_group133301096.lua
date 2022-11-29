-- 基础信息
local base_info = {
	group_id = 133301096
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
	{ config_id = 96001, gadget_id = 70500000, pos = { x = -902.929, y = 310.951, z = 3315.164 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 2052, area_id = 23 },
	{ config_id = 96002, gadget_id = 70500000, pos = { x = -881.268, y = 312.864, z = 3318.957 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 2052, area_id = 23 },
	{ config_id = 96003, gadget_id = 70500000, pos = { x = -889.324, y = 314.333, z = 3297.698 }, rot = { x = 2.906, y = 325.790, z = 355.316 }, level = 30, point_type = 2052, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1096004, name = "GROUP_LOAD_96004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_96004", action = "action_EVENT_GROUP_LOAD_96004", trigger_count = 0 }
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
		triggers = { "GROUP_LOAD_96004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 96001, 96002, 96003 },
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
function condition_EVENT_GROUP_LOAD_96004(context, evt)
	if ScriptLib.GetDeathZoneStatus(context,0) == 0 then
	
	return true
	
	end
	
	
	return false
end

-- 触发操作
function action_EVENT_GROUP_LOAD_96004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133301096, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

require "V3_0/DeathFieldStandard"