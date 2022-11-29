-- 基础信息
local base_info = {
	group_id = 139999016
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 16001, monster_id = 21010501, pos = { x = 1.111, y = 0.010, z = -1.417 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", area_id = 1 },
	{ config_id = 16002, monster_id = 21010501, pos = { x = -0.869, y = 0.108, z = 1.669 }, rot = { x = 0.000, y = 79.461, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", area_id = 1 },
	{ config_id = 16003, monster_id = 21011201, pos = { x = -2.009, y = -0.050, z = 0.370 }, rot = { x = 0.000, y = 38.683, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 1 },
	{ config_id = 16004, monster_id = 21010501, pos = { x = -0.926, y = 0.011, z = -0.948 }, rot = { x = 0.000, y = 41.172, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", area_id = 1 },
	{ config_id = 16005, monster_id = 21010501, pos = { x = 0.415, y = 0.242, z = 2.291 }, rot = { x = 0.000, y = 181.017, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", area_id = 1 },
	{ config_id = 16008, monster_id = 21011201, pos = { x = 1.266, y = 0.171, z = 0.623 }, rot = { x = 0.000, y = 72.859, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 1 },
	{ config_id = 16009, monster_id = 21030401, pos = { x = 2.267, y = 0.220, z = 0.069 }, rot = { x = 0.000, y = 274.026, z = 0.000 }, level = 1, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 16007, shape = RegionShape.SPHERE, radius = 50, pos = { x = -0.126, y = -0.001, z = 0.026 }, area_id = 1 }
}

-- 触发器
triggers = {
	{ config_id = 1016006, name = "ANY_MONSTER_DIE_16006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_16006", action = "action_EVENT_ANY_MONSTER_DIE_16006" },
	{ config_id = 1016007, name = "ENTER_REGION_16007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_16007", action = "action_EVENT_ENTER_REGION_16007", forbid_guest = false }
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
		-- description = suite_2,
		monsters = { 16001, 16002, 16004, 16005 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_16006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_3,
		monsters = { 16001, 16003, 16005, 16008 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_16006" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_4,
		monsters = { 16001, 16002, 16004, 16005, 16009 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_16006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_16006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_16006(context, evt)
	-- 设置操作台选项
	
	    ScriptLib.FinishRandTask(context, 16, true)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_16007(context, evt)
	if evt.param1 ~= 16007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_16007(context, evt)
	-- 调用提示id为 1110013 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110013) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end