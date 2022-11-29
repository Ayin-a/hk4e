-- 基础信息
local base_info = {
	group_id = 133303305
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 305001, monster_id = 28020313, pos = { x = -1970.740, y = 226.789, z = 3240.536 }, rot = { x = 0.000, y = 50.954, z = 0.000 }, level = 30, drop_tag = "走兽", disableWander = true, area_id = 23 },
	{ config_id = 305003, monster_id = 28020313, pos = { x = -1949.454, y = 216.749, z = 3223.522 }, rot = { x = 0.000, y = 332.243, z = 0.000 }, level = 30, drop_tag = "走兽", disableWander = true, area_id = 23 },
	{ config_id = 305004, monster_id = 28020313, pos = { x = -1956.530, y = 221.211, z = 3261.796 }, rot = { x = 0.000, y = 101.251, z = 0.000 }, level = 30, drop_tag = "走兽", disableWander = true, area_id = 23 },
	{ config_id = 305005, monster_id = 28020313, pos = { x = -1923.275, y = 214.248, z = 3283.276 }, rot = { x = 0.000, y = 332.243, z = 0.000 }, level = 30, drop_tag = "走兽", disableWander = true, area_id = 23 },
	{ config_id = 305006, monster_id = 28020313, pos = { x = -1931.702, y = 215.531, z = 3303.933 }, rot = { x = 0.000, y = 101.251, z = 0.000 }, level = 30, drop_tag = "走兽", disableWander = true, area_id = 23 }
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
	{ config_id = 1305002, name = "GROUP_LOAD_305002", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_305002", action = "action_EVENT_GROUP_LOAD_305002", trigger_count = 0 }
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
		triggers = { "GROUP_LOAD_305002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 305001, 305003, 305004, 305005, 305006 },
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
function condition_EVENT_GROUP_LOAD_305002(context, evt)
	if ScriptLib.GetDeathZoneStatus(context,0) == 0 then
	
	return true
	
	end
	
	
	return false
end

-- 触发操作
function action_EVENT_GROUP_LOAD_305002(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133303305, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

require "V3_0/DeathFieldStandard"