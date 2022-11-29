-- 基础信息
local base_info = {
	group_id = 133303281
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 281003, monster_id = 28020313, pos = { x = -1845.258, y = 358.827, z = 3545.739 }, rot = { x = 0.000, y = 12.553, z = 0.000 }, level = 30, drop_tag = "走兽", disableWander = true, area_id = 23 },
	{ config_id = 281004, monster_id = 28020313, pos = { x = -1835.114, y = 354.207, z = 3582.935 }, rot = { x = 0.000, y = 12.553, z = 0.000 }, level = 30, drop_tag = "走兽", disableWander = true, area_id = 23 },
	{ config_id = 281005, monster_id = 28020313, pos = { x = -1812.997, y = 353.744, z = 3567.635 }, rot = { x = 0.000, y = 12.553, z = 0.000 }, level = 30, drop_tag = "走兽", disableWander = true, area_id = 23 },
	{ config_id = 281006, monster_id = 28020313, pos = { x = -1831.274, y = 356.152, z = 3565.192 }, rot = { x = 0.000, y = 12.553, z = 0.000 }, level = 30, drop_tag = "走兽", disableWander = true, area_id = 23 }
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
	{ config_id = 1281002, name = "GROUP_LOAD_281002", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_281002", action = "action_EVENT_GROUP_LOAD_281002", trigger_count = 0 }
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
		triggers = { "GROUP_LOAD_281002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 281003, 281004, 281005, 281006 },
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
function condition_EVENT_GROUP_LOAD_281002(context, evt)
	if ScriptLib.GetDeathZoneStatus(context,0) == 0 then
	
	return true
	
	end
	
	
	return false
end

-- 触发操作
function action_EVENT_GROUP_LOAD_281002(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133303281, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

require "V3_0/DeathFieldStandard"