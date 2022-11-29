-- 基础信息
local base_info = {
	group_id = 133301746
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 746001, monster_id = 28050106, pos = { x = -628.827, y = -39.994, z = 3742.656 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "魔法生物", area_id = 25 },
	{ config_id = 746002, monster_id = 28050106, pos = { x = -635.241, y = -39.012, z = 3743.773 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "魔法生物", area_id = 25 },
	{ config_id = 746003, monster_id = 28050106, pos = { x = -629.915, y = -39.138, z = 3743.413 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "魔法生物", area_id = 25 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1746004, name = "GROUP_LOAD_746004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_746004", action = "action_EVENT_GROUP_LOAD_746004", trigger_count = 0 }
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
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_746004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 746001, 746002, 746003 },
		gadgets = { },
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
function condition_EVENT_GROUP_LOAD_746004(context, evt)
	if ScriptLib.GetDeathZoneStatus(context,0) == 0 then
	
	return true
	
	end
	
	
	return false
end

-- 触发操作
function action_EVENT_GROUP_LOAD_746004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133301746, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

require "V3_0/DeathFieldStandard"