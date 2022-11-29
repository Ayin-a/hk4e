-- 基础信息
local base_info = {
	group_id = 133303286
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 286001, monster_id = 26120101, pos = { x = -1350.701, y = 202.033, z = 3243.616 }, rot = { x = 0.000, y = 40.786, z = 0.000 }, level = 30, drop_tag = "大蕈兽", disableWander = true, pose_id = 201, area_id = 23 },
	{ config_id = 286002, monster_id = 26090201, pos = { x = -1348.462, y = 202.910, z = 3258.199 }, rot = { x = 0.000, y = 178.341, z = 0.000 }, level = 30, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 23 },
	{ config_id = 286003, monster_id = 26090201, pos = { x = -1335.876, y = 204.602, z = 3251.910 }, rot = { x = 0.000, y = 289.435, z = 0.000 }, level = 30, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 23 },
	{ config_id = 286005, monster_id = 26090201, pos = { x = -1338.155, y = 201.378, z = 3248.750 }, rot = { x = 0.000, y = 2.927, z = 0.000 }, level = 30, drop_tag = "蕈兽", disableWander = true, affix = { 6117 }, pose_id = 101, area_id = 23 },
	{ config_id = 286006, monster_id = 26090201, pos = { x = -1355.228, y = 202.346, z = 3243.436 }, rot = { x = 0.000, y = 309.985, z = 0.000 }, level = 30, drop_tag = "蕈兽", disableWander = true, affix = { 6117 }, pose_id = 101, area_id = 23 }
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
	{ config_id = 1286004, name = "GROUP_LOAD_286004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_286004", action = "action_EVENT_GROUP_LOAD_286004", trigger_count = 0 }
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
		monsters = { 286005, 286006 },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_286004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 286001, 286002, 286003 },
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
function condition_EVENT_GROUP_LOAD_286004(context, evt)
	if ScriptLib.GetDeathZoneStatus(context,0) == 0 then
	
	return true
	
	end
	
	
	return false
end

-- 触发操作
function action_EVENT_GROUP_LOAD_286004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133303286, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

require "V3_0/DeathFieldStandard"