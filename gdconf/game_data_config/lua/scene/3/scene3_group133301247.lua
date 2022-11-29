-- 基础信息
local base_info = {
	group_id = 133301247
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
	{ config_id = 247001, gadget_id = 70500000, pos = { x = -572.500, y = 221.008, z = 3245.195 }, rot = { x = 354.645, y = 0.049, z = 359.104 }, level = 33, point_type = 2052, area_id = 22 },
	{ config_id = 247002, gadget_id = 70500000, pos = { x = -558.651, y = 223.362, z = 3235.419 }, rot = { x = 358.117, y = 359.580, z = 25.148 }, level = 33, point_type = 2052, area_id = 22 },
	{ config_id = 247003, gadget_id = 70500000, pos = { x = -567.419, y = 220.307, z = 3213.303 }, rot = { x = 7.057, y = 0.494, z = 8.005 }, level = 33, point_type = 2052, area_id = 22 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1247004, name = "GROUP_LOAD_247004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_247004", action = "action_EVENT_GROUP_LOAD_247004", trigger_count = 0 }
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
		triggers = { "GROUP_LOAD_247004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 247001, 247002, 247003 },
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
function condition_EVENT_GROUP_LOAD_247004(context, evt)
	if ScriptLib.GetDeathZoneStatus(context,0) == 0 then
	
	return true
	
	end
	
	
	return false
end

-- 触发操作
function action_EVENT_GROUP_LOAD_247004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133301247, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

require "V3_0/DeathFieldStandard"