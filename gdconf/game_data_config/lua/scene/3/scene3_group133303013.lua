-- 基础信息
local base_info = {
	group_id = 133303013
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 13001, monster_id = 24010101, pos = { x = -1712.155, y = 304.317, z = 3669.604 }, rot = { x = 0.000, y = 102.114, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 5208 }, pose_id = 101, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 13004, gadget_id = 70290479, pos = { x = -1710.844, y = 304.931, z = 3668.987 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1013002, name = "ANY_MONSTER_DIE_13002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_13002", action = "action_EVENT_ANY_MONSTER_DIE_13002", trigger_count = 0 },
	{ config_id = 1013003, name = "TIME_AXIS_PASS_13003", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_13003", action = "action_EVENT_TIME_AXIS_PASS_13003", trigger_count = 0 },
	{ config_id = 1013005, name = "MONSTER_BATTLE_13005", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_13005", action = "action_EVENT_MONSTER_BATTLE_13005", trigger_count = 0 },
	-- 血量变化播reminder
	{ config_id = 1013006, name = "SPECIFIC_MONSTER_HP_CHANGE_13006", event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = "13001", condition = "condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_13006", action = "action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_13006" }
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
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 13001 },
		gadgets = { 13004 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_13002", "TIME_AXIS_PASS_13003", "MONSTER_BATTLE_13005", "SPECIFIC_MONSTER_HP_CHANGE_13006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_13002(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_13002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7301604_fin") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将configid为 13004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 13004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_13003(context, evt)
	if "battle" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_13003(context, evt)
	-- 将configid为 13004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 13004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_13005(context, evt)
	if 13001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_13005(context, evt)
	-- 创建标识为"battle"，时间节点为{3}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "battle", {3}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_13006(context, evt)
	--[[判断指定configid的怪物的血量小于%95时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE or evt.param3 > 95 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_13006(context, evt)
	-- 调用提示id为 1111245 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111245) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end