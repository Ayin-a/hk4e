-- 基础信息
local base_info = {
	group_id = 139999024
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 24001, monster_id = 28060103, pos = { x = -2.162, y = 0.927, z = -2.530 }, rot = { x = 0.000, y = 37.345, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 1, area_id = 3 },
	{ config_id = 24002, monster_id = 28060103, pos = { x = 2.340, y = 0.927, z = 2.782 }, rot = { x = 0.000, y = 223.510, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 1, area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 24003, shape = RegionShape.SPHERE, radius = 20, pos = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 3 }
}

-- 触发器
triggers = {
	{ config_id = 1024003, name = "ENTER_REGION_24003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_24003" },
	{ config_id = 1024004, name = "ANY_MONSTER_DIE_24004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_24004", action = "action_EVENT_ANY_MONSTER_DIE_24004" }
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
		-- description = ,
		monsters = { 24001, 24002 },
		gadgets = { },
		regions = { 24003 },
		triggers = { "ENTER_REGION_24003", "ANY_MONSTER_DIE_24004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ENTER_REGION_24003(context, evt)
	-- 调用提示id为 400308 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400308) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_24004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_24004(context, evt)
	-- 设置操作台选项
	
	    ScriptLib.FinishRandTask(context, 24, true)
	
	
	return 0
end