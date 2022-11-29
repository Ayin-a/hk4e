-- 基础信息
local base_info = {
	group_id = 133301319
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 319001, monster_id = 28030313, pos = { x = -430.924, y = 222.121, z = 3738.831 }, rot = { x = 0.000, y = 98.198, z = 0.000 }, level = 33, drop_tag = "鸟类", disableWander = true, pose_id = 3, area_id = 22 },
	{ config_id = 319003, monster_id = 28030313, pos = { x = -434.881, y = 221.882, z = 3751.628 }, rot = { x = 0.000, y = 98.198, z = 0.000 }, level = 33, drop_tag = "鸟类", disableWander = true, pose_id = 3, area_id = 22 },
	{ config_id = 319004, monster_id = 28030313, pos = { x = -433.333, y = 220.264, z = 3753.868 }, rot = { x = 0.000, y = 98.198, z = 0.000 }, level = 33, drop_tag = "鸟类", disableWander = true, pose_id = 3, area_id = 22 },
	{ config_id = 319005, monster_id = 28030313, pos = { x = -430.590, y = 218.630, z = 3752.890 }, rot = { x = 0.000, y = 98.198, z = 0.000 }, level = 33, drop_tag = "鸟类", disableWander = true, pose_id = 3, area_id = 22 },
	{ config_id = 319006, monster_id = 28030313, pos = { x = -456.113, y = 231.381, z = 3722.974 }, rot = { x = 0.000, y = 231.655, z = 0.000 }, level = 33, drop_tag = "鸟类", disableWander = true, pose_id = 3, area_id = 22 },
	{ config_id = 319007, monster_id = 28060603, pos = { x = -458.272, y = 224.391, z = 3715.255 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "走兽", pose_id = 1, area_id = 22 }
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
	{ config_id = 1319002, name = "GROUP_LOAD_319002", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_319002", action = "action_EVENT_GROUP_LOAD_319002", trigger_count = 0 }
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
		triggers = { "GROUP_LOAD_319002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 319001, 319003, 319004, 319005, 319006, 319007 },
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
function condition_EVENT_GROUP_LOAD_319002(context, evt)
	if ScriptLib.GetDeathZoneStatus(context,0) == 0 then
	
	return true
	
	end
	
	
	return false
end

-- 触发操作
function action_EVENT_GROUP_LOAD_319002(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133301319, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

require "V3_0/DeathFieldStandard"