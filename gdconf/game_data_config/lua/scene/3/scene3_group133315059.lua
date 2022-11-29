-- 基础信息
local base_info = {
	group_id = 133315059
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
	{ config_id = 59001, gadget_id = 70500000, pos = { x = 483.666, y = 111.748, z = 2381.677 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, point_type = 2052, area_id = 20 },
	{ config_id = 59002, gadget_id = 70500000, pos = { x = 487.226, y = 119.440, z = 2349.436 }, rot = { x = 0.000, y = 288.272, z = 0.000 }, level = 33, point_type = 2052, area_id = 20 },
	{ config_id = 59003, gadget_id = 70500000, pos = { x = 511.310, y = 134.470, z = 2376.324 }, rot = { x = 0.000, y = 156.527, z = 0.000 }, level = 33, point_type = 2052, area_id = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1059004, name = "GROUP_LOAD_59004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_59004", action = "action_EVENT_GROUP_LOAD_59004", trigger_count = 0 }
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
		triggers = { "GROUP_LOAD_59004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 59001, 59002, 59003 },
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
function condition_EVENT_GROUP_LOAD_59004(context, evt)
	if ScriptLib.GetDeathZoneStatus(context,0) == 0 then
	
	return true
	
	end
	
	
	return false
end

-- 触发操作
function action_EVENT_GROUP_LOAD_59004(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133315059, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

require "V3_0/DeathFieldStandard"