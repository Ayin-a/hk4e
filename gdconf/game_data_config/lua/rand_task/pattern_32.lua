-- 基础信息
local base_info = {
	group_id = 139999032
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 32001, monster_id = 23010101, pos = { x = -2.823, y = 2.724, z = -0.402 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 2 },
	{ config_id = 32002, monster_id = 23010301, pos = { x = -0.818, y = 2.724, z = -1.281 }, rot = { x = 0.000, y = 348.074, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9014, area_id = 2 },
	{ config_id = 32003, monster_id = 23010301, pos = { x = -5.076, y = 2.724, z = -1.646 }, rot = { x = 0.000, y = 16.613, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9001, area_id = 2 },
	{ config_id = 32004, monster_id = 25210101, pos = { x = -5.270, y = 2.724, z = 4.590 }, rot = { x = 0.000, y = 182.360, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9003, area_id = 2 },
	{ config_id = 32005, monster_id = 25210201, pos = { x = 0.146, y = 2.724, z = 3.768 }, rot = { x = 0.000, y = 180.246, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9001, area_id = 2 },
	{ config_id = 32006, monster_id = 25210301, pos = { x = -2.789, y = 2.724, z = 2.633 }, rot = { x = 0.000, y = 184.222, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9005, area_id = 2 },
	{ config_id = 32008, monster_id = 28060511, pos = { x = -2.353, y = 2.724, z = 6.156 }, rot = { x = 0.000, y = 188.287, z = 0.000 }, level = 1, drop_tag = "走兽", affix = { 5175 }, pose_id = 2, area_id = 2 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 32009, shape = RegionShape.SPHERE, radius = 20, pos = { x = -3.342, y = 0.000, z = 1.550 }, area_id = 2 }
}

-- 触发器
triggers = {
	{ config_id = 1032007, name = "ANY_MONSTER_DIE_32007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_32007", action = "action_EVENT_ANY_MONSTER_DIE_32007" },
	{ config_id = 1032009, name = "ENTER_REGION_32009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_32009" }
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
		monsters = { 32001, 32002, 32003, 32004, 32005, 32006, 32008 },
		gadgets = { },
		regions = { 32009 },
		triggers = { "ANY_MONSTER_DIE_32007", "ENTER_REGION_32009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_32007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_32007(context, evt)
	-- 设置操作台选项
	
	    ScriptLib.FinishRandTask(context, 32, true)
	
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_32009(context, evt)
	-- 调用提示id为 400306 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400306) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end