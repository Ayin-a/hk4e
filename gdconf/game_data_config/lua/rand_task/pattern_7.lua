-- 基础信息
local base_info = {
	group_id = 139999007
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 36, monster_id = 28020301, pos = { x = 0.099, y = 0.008, z = 0.317 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", disableWander = true, area_id = 1 },
	{ config_id = 37, monster_id = 21010101, pos = { x = -1.193, y = 0.291, z = 2.013 }, rot = { x = 0.000, y = 133.321, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9010, area_id = 1 },
	{ config_id = 38, monster_id = 21010101, pos = { x = 2.192, y = 0.006, z = -0.065 }, rot = { x = 0.000, y = 288.861, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9010, area_id = 1 },
	{ config_id = 7001, monster_id = 21010201, pos = { x = 0.467, y = 0.197, z = 2.552 }, rot = { x = 0.000, y = 190.619, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9010, area_id = 1 },
	{ config_id = 7002, monster_id = 21010201, pos = { x = 2.060, y = 0.008, z = 0.996 }, rot = { x = 0.000, y = 261.397, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, area_id = 1 },
	{ config_id = 7003, monster_id = 21010201, pos = { x = -1.601, y = 0.168, z = 0.930 }, rot = { x = 0.000, y = 119.228, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, area_id = 1 },
	{ config_id = 7004, monster_id = 21010201, pos = { x = -0.012, y = 0.014, z = -1.571 }, rot = { x = 0.000, y = 1.248, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9010, area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 27, shape = RegionShape.SPHERE, radius = 50, pos = { x = 0.480, y = 0.005, z = 0.384 }, area_id = 1 }
}

-- 触发器
triggers = {
	{ config_id = 1000020, name = "ANY_MONSTER_DIE_20", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_20", action = "action_EVENT_ANY_MONSTER_DIE_20" },
	{ config_id = 1000027, name = "ENTER_REGION_27", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_27", action = "action_EVENT_ENTER_REGION_27", forbid_guest = false }
}

-- 变量
variables = {
	{ config_id = 1, name = "iskill37", value = 0, no_refresh = false },
	{ config_id = 2, name = "iskill38", value = 0, no_refresh = false }
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
	rand_suite = true
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
		monsters = { 36, 37, 38 },
		gadgets = { },
		regions = { 27 },
		triggers = { "ANY_MONSTER_DIE_20", "ENTER_REGION_27" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 36, 7001, 7002, 7003, 7004 },
		gadgets = { },
		regions = { 27 },
		triggers = { "ANY_MONSTER_DIE_20", "ENTER_REGION_27" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_20(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_20(context, evt)
	-- 设置操作台选项
	
	    ScriptLib.FinishRandTask(context, 7, true)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_27(context, evt)
	if evt.param1 ~= 27 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_27(context, evt)
	-- 调用提示id为 1110022 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110022) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end