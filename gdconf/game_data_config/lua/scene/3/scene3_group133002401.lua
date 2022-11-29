-- 基础信息
local base_info = {
	group_id = 133002401
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 401005, monster_id = 22010101, pos = { x = 2000.582, y = 216.786, z = -758.106 }, rot = { x = 0.000, y = 101.905, z = 0.000 }, level = 10, drop_id = 1000100, pose_id = 9013, area_id = 3 },
	{ config_id = 401017, monster_id = 21020101, pos = { x = 2010.488, y = 216.872, z = -757.398 }, rot = { x = 0.000, y = 265.159, z = 0.000 }, level = 10, drop_id = 1000100, pose_id = 401, area_id = 3 },
	{ config_id = 401018, monster_id = 21010601, pos = { x = 2003.902, y = 216.332, z = -754.604 }, rot = { x = 0.000, y = 246.035, z = 0.000 }, level = 10, drop_id = 1000100, pose_id = 9012, area_id = 3 },
	{ config_id = 401019, monster_id = 21010501, pos = { x = 2004.986, y = 216.296, z = -761.516 }, rot = { x = 0.000, y = 297.501, z = 0.000 }, level = 10, drop_id = 1000100, pose_id = 9012, area_id = 3 },
	{ config_id = 401020, monster_id = 21010301, pos = { x = 2005.762, y = 216.524, z = -757.928 }, rot = { x = 0.000, y = 268.415, z = 0.000 }, level = 10, drop_id = 1000100, pose_id = 9012, area_id = 3 },
	{ config_id = 401021, monster_id = 21010701, pos = { x = 2006.087, y = 216.000, z = -764.870 }, rot = { x = 0.000, y = 313.143, z = 0.000 }, level = 10, drop_id = 1000100, pose_id = 9013, area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 401002, gadget_id = 70220013, pos = { x = 1998.965, y = 216.055, z = -763.653 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_id = 1000100, drop_count = 1, area_id = 3 },
	{ config_id = 401003, gadget_id = 70310001, pos = { x = 2000.886, y = 216.035, z = -755.196 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, state = GadgetState.GearStart, area_id = 3 },
	{ config_id = 401004, gadget_id = 70220020, pos = { x = 1998.391, y = 216.459, z = -750.466 }, rot = { x = 0.000, y = 322.595, z = 0.000 }, level = 10, area_id = 3 },
	{ config_id = 401006, gadget_id = 70220020, pos = { x = 1996.026, y = 216.640, z = -759.411 }, rot = { x = 0.000, y = 272.568, z = 0.000 }, level = 10, area_id = 3 },
	{ config_id = 401007, gadget_id = 70220020, pos = { x = 2013.798, y = 217.455, z = -754.462 }, rot = { x = 0.011, y = 69.558, z = 0.000 }, level = 10, area_id = 3 },
	{ config_id = 401008, gadget_id = 70220020, pos = { x = 2007.423, y = 215.801, z = -767.594 }, rot = { x = -0.003, y = 174.744, z = 0.000 }, level = 10, area_id = 3 },
	{ config_id = 401011, gadget_id = 70220013, pos = { x = 2001.810, y = 216.267, z = -765.769 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_id = 1000100, drop_count = 1, area_id = 3 },
	{ config_id = 401012, gadget_id = 70220004, pos = { x = 2003.300, y = 216.597, z = -749.700 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 3 },
	{ config_id = 401013, gadget_id = 70220004, pos = { x = 2013.511, y = 216.519, z = -759.330 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 3 },
	{ config_id = 401014, gadget_id = 70220004, pos = { x = 2009.626, y = 217.178, z = -754.586 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 3 },
	{ config_id = 401015, gadget_id = 70220004, pos = { x = 2008.372, y = 217.327, z = -751.262 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 3 },
	{ config_id = 401016, gadget_id = 70310001, pos = { x = 2000.993, y = 216.156, z = -760.970 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, state = GadgetState.GearStart, area_id = 3 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1401001, name = "ANY_MONSTER_DIE_401001", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_401001", action = "action_EVENT_ANY_MONSTER_DIE_401001" }
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
	suite = 2,
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
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 401005, 401017, 401018, 401019, 401020, 401021 },
		gadgets = { 401002, 401003, 401004, 401006, 401007, 401008, 401011, 401012, 401013, 401014, 401015, 401016 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_401001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_401001(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133002401) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_401001(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133002401") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 调用提示id为 400004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end