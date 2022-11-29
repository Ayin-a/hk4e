-- 基础信息
local base_info = {
	group_id = 139999025
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 25001, monster_id = 28060614, pos = { x = -0.908, y = 0.069, z = -0.098 }, rot = { x = 0.000, y = 49.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 5175 }, pose_id = 2, area_id = 3 },
	{ config_id = 25002, monster_id = 21020101, pos = { x = -0.742, y = 0.197, z = 3.989 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 401, area_id = 3 },
	{ config_id = 25003, monster_id = 28060613, pos = { x = 3.858, y = 0.178, z = 4.475 }, rot = { x = 0.000, y = 284.900, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 5175 }, pose_id = 3, area_id = 3 },
	{ config_id = 25004, monster_id = 21010201, pos = { x = 4.485, y = -0.310, z = -2.009 }, rot = { x = 0.000, y = 308.580, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 9003, area_id = 3 },
	{ config_id = 25005, monster_id = 21010201, pos = { x = 2.306, y = -0.259, z = -2.651 }, rot = { x = 0.000, y = 23.900, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 9003, area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 25006, gadget_id = 70310009, pos = { x = 3.131, y = -0.252, z = -0.525 }, rot = { x = 0.000, y = 350.790, z = 0.000 }, level = 1, area_id = 3 }
}

-- 区域
regions = {
	{ config_id = 25007, shape = RegionShape.SPHERE, radius = 20, pos = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 3 }
}

-- 触发器
triggers = {
	{ config_id = 1025007, name = "ENTER_REGION_25007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_25007" },
	{ config_id = 1025008, name = "ANY_MONSTER_DIE_25008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_25008", action = "action_EVENT_ANY_MONSTER_DIE_25008" }
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
		monsters = { 25001, 25002, 25003, 25004, 25005 },
		gadgets = { },
		regions = { 25007 },
		triggers = { "ENTER_REGION_25007", "ANY_MONSTER_DIE_25008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ENTER_REGION_25007(context, evt)
	-- 调用提示id为 400301 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400301) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_25008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_25008(context, evt)
	-- 设置操作台选项
	
	    ScriptLib.FinishRandTask(context, 25, true)
	
	
	return 0
end