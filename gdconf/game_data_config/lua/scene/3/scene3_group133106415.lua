-- 基础信息
local base_info = {
	group_id = 133106415
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 415001, monster_id = 25060101, pos = { x = -838.008, y = 129.789, z = 1636.321 }, rot = { x = 0.000, y = 190.139, z = 0.000 }, level = 36, drop_id = 1000100, pose_id = 9101, area_id = 19 },
	{ config_id = 415002, monster_id = 25010701, pos = { x = -838.795, y = 127.368, z = 1664.720 }, rot = { x = 0.000, y = 27.465, z = 0.000 }, level = 36, drop_id = 1000100, pose_id = 9101, area_id = 19 },
	{ config_id = 415003, monster_id = 25010401, pos = { x = -833.600, y = 126.232, z = 1664.635 }, rot = { x = 0.000, y = 265.480, z = 0.000 }, level = 36, drop_id = 1000100, pose_id = 9002, area_id = 19 },
	{ config_id = 415004, monster_id = 25010201, pos = { x = -836.459, y = 126.765, z = 1665.683 }, rot = { x = 0.000, y = 282.843, z = 0.000 }, level = 36, drop_id = 1000100, pose_id = 9102, area_id = 19 },
	{ config_id = 415005, monster_id = 25010201, pos = { x = -831.368, y = 126.316, z = 1673.503 }, rot = { x = 0.000, y = 301.645, z = 0.000 }, level = 36, drop_id = 1000100, pose_id = 9003, area_id = 19 }
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
	{ config_id = 1415006, name = "ANY_MONSTER_DIE_415006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_415006", action = "action_EVENT_ANY_MONSTER_DIE_415006" },
	{ config_id = 1415007, name = "MONSTER_BATTLE_415007", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_415007" },
	{ config_id = 1415008, name = "GROUP_LOAD_415008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_415008", trigger_count = 0 }
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
		monsters = { 415001, 415002, 415003, 415004, 415005 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_415006", "MONSTER_BATTLE_415007", "GROUP_LOAD_415008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_415006(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133106415) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_415006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7105401finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_415007(context, evt)
	-- 调用提示id为 710441801 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 710441801) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_415008(context, evt)
	-- 改变指定group组133106417中， configid为417001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133106417, 417001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end