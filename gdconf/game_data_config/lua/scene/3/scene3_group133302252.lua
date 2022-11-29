-- 基础信息
local base_info = {
	group_id = 133302252
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 252001, monster_id = 24030101, pos = { x = -635.535, y = 225.884, z = 3029.854 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "遗迹龙兽", pose_id = 102, area_id = 22 },
	{ config_id = 252002, monster_id = 24020101, pos = { x = -647.122, y = 217.211, z = 3005.792 }, rot = { x = 0.000, y = 175.607, z = 0.000 }, level = 33, drop_tag = "拟生机关", affix = { 6117 }, pose_id = 101, area_id = 24 },
	{ config_id = 252003, monster_id = 24020301, pos = { x = -655.590, y = 214.344, z = 2987.899 }, rot = { x = 0.000, y = 48.813, z = 0.000 }, level = 33, drop_tag = "拟生机关", affix = { 6117 }, pose_id = 101, area_id = 24 },
	{ config_id = 252007, monster_id = 24020401, pos = { x = -687.206, y = 216.225, z = 3002.662 }, rot = { x = 0.000, y = 48.813, z = 0.000 }, level = 27, drop_tag = "拟生机关", affix = { 6117 }, pose_id = 101, area_id = 24 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 252005, gadget_id = 70330197, pos = { x = -635.453, y = 218.864, z = 3002.702 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1252004, name = "GROUP_LOAD_252004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_252004", action = "action_EVENT_GROUP_LOAD_252004", trigger_count = 0 }
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
		monsters = { 252002, 252003, 252007 },
		gadgets = { 252005 },
		regions = { },
		triggers = { "GROUP_LOAD_252004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 252001 },
		gadgets = { 252005 },
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
function condition_EVENT_GROUP_LOAD_252004(context, evt)
	if ScriptLib.GetDeathZoneStatus(context,0) == 0 then
	
	return true
	
	end
	
	
	return false
end

-- 触发操作
function action_EVENT_GROUP_LOAD_252004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133302252, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

require "V3_0/DeathFieldStandard"