-- 基础信息
local base_info = {
	group_id = 139999027
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 27002, monster_id = 23010501, pos = { x = 3.610, y = 0.034, z = 7.007 }, rot = { x = 0.000, y = 28.640, z = 0.000 }, level = 1, drop_tag = "先遣队", pose_id = 9001, area_id = 3 },
	{ config_id = 27003, monster_id = 23010601, pos = { x = -3.077, y = 0.040, z = 4.055 }, rot = { x = 0.000, y = 333.100, z = 0.000 }, level = 1, drop_tag = "先遣队", pose_id = 9002, area_id = 3 },
	{ config_id = 27004, monster_id = 23010601, pos = { x = -0.568, y = 0.045, z = 3.963 }, rot = { x = 0.000, y = 18.320, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 9011, area_id = 3 },
	{ config_id = 27005, monster_id = 28060610, pos = { x = -0.350, y = 0.032, z = -2.736 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 5175 }, pose_id = 2, area_id = 3 },
	{ config_id = 27006, monster_id = 23010501, pos = { x = -2.779, y = 0.040, z = 2.413 }, rot = { x = 0.000, y = 16.160, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9001, area_id = 3 },
	{ config_id = 27007, monster_id = 25210401, pos = { x = 2.245, y = 0.050, z = 7.027 }, rot = { x = 0.000, y = 219.160, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 9001, area_id = 3 },
	{ config_id = 27008, monster_id = 25210201, pos = { x = -0.621, y = 0.642, z = 8.648 }, rot = { x = 0.000, y = 170.910, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 3 },
	{ config_id = 27009, monster_id = 25210501, pos = { x = -0.061, y = 0.712, z = 6.522 }, rot = { x = 0.000, y = 189.900, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 9002, area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 27001, shape = RegionShape.SPHERE, radius = 20, pos = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 3 }
}

-- 触发器
triggers = {
	{ config_id = 1027001, name = "ENTER_REGION_27001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_27001" },
	{ config_id = 1027010, name = "ANY_MONSTER_DIE_27010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_27010", action = "action_EVENT_ANY_MONSTER_DIE_27010" }
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
		monsters = { 27004, 27005, 27006, 27007, 27008, 27009 },
		gadgets = { },
		regions = { 27001 },
		triggers = { "ENTER_REGION_27001", "ANY_MONSTER_DIE_27010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ENTER_REGION_27001(context, evt)
	-- 调用提示id为 400306 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400306) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_27010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_27010(context, evt)
	-- 设置操作台选项
	
	    ScriptLib.FinishRandTask(context, 27, true)
	
	
	return 0
end