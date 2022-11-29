-- 基础信息
local base_info = {
	group_id = 133304203
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 203001, monster_id = 26120101, pos = { x = -1145.655, y = 262.601, z = 2501.099 }, rot = { x = 0.000, y = 40.786, z = 0.000 }, level = 30, drop_tag = "大蕈兽", pose_id = 201, area_id = 21 },
	{ config_id = 203002, monster_id = 26090201, pos = { x = -1143.416, y = 261.508, z = 2515.682 }, rot = { x = 0.000, y = 178.341, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 101, area_id = 21 },
	{ config_id = 203003, monster_id = 26090201, pos = { x = -1130.829, y = 263.201, z = 2509.393 }, rot = { x = 0.000, y = 289.435, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 101, area_id = 21 },
	{ config_id = 203005, monster_id = 26090101, pos = { x = -1145.171, y = 261.293, z = 2506.329 }, rot = { x = 0.000, y = 48.620, z = 0.000 }, level = 30, drop_tag = "蕈兽", affix = { 6117 }, pose_id = 101, area_id = 21 },
	{ config_id = 203006, monster_id = 26090101, pos = { x = -1131.161, y = 259.929, z = 2501.280 }, rot = { x = 0.000, y = 175.851, z = 0.000 }, level = 30, drop_tag = "蕈兽", affix = { 6117 }, pose_id = 101, area_id = 21 },
	{ config_id = 203007, monster_id = 26090101, pos = { x = -1140.918, y = 260.606, z = 2513.581 }, rot = { x = 0.000, y = 80.779, z = 0.000 }, level = 30, drop_tag = "蕈兽", disableWander = true, affix = { 6117 }, pose_id = 102, area_id = 21 },
	{ config_id = 203008, monster_id = 26090101, pos = { x = -1146.981, y = 261.894, z = 2504.401 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "蕈兽", affix = { 6117 }, pose_id = 101, area_id = 21 },
	{ config_id = 203009, monster_id = 26090101, pos = { x = -1148.694, y = 261.207, z = 2508.665 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "蕈兽", affix = { 6117 }, pose_id = 101, area_id = 21 },
	{ config_id = 203011, monster_id = 26090101, pos = { x = -1140.170, y = 260.197, z = 2517.553 }, rot = { x = 0.000, y = 100.050, z = 0.000 }, level = 30, drop_tag = "蕈兽", disableWander = true, affix = { 6117 }, pose_id = 102, area_id = 21 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 203010, shape = RegionShape.SPHERE, radius = 3, pos = { x = -1150.917, y = 262.383, z = 2504.675 }, area_id = 21 }
}

-- 触发器
triggers = {
	{ config_id = 1203004, name = "GROUP_LOAD_203004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_203004", action = "action_EVENT_GROUP_LOAD_203004", trigger_count = 0 },
	{ config_id = 1203010, name = "ENTER_REGION_203010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_203010", action = "action_EVENT_ENTER_REGION_203010" }
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
		monsters = { 203005, 203006, 203007, 203011 },
		gadgets = { },
		regions = { 203010 },
		triggers = { "GROUP_LOAD_203004", "ENTER_REGION_203010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 203001, 203002, 203003 },
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
function condition_EVENT_GROUP_LOAD_203004(context, evt)
	if ScriptLib.GetDeathZoneStatus(context,0) == 0 then
	
	return true
	
	end
	
	
	return false
end

-- 触发操作
function action_EVENT_GROUP_LOAD_203004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133304203, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_203010(context, evt)
	if evt.param1 ~= 203010 then return false end
	
	if ScriptLib.GetDeathZoneStatus(context,0) == 0 then
	
	return false
	
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_203010(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 203008, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 203009, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

require "V3_0/DeathFieldStandard"