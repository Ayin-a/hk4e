-- 基础信息
local base_info = {
	group_id = 133303014
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 14001, monster_id = 24010101, pos = { x = -1806.274, y = 313.520, z = 3678.162 }, rot = { x = 0.000, y = 102.114, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 5208 }, pose_id = 101, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 14004, gadget_id = 70290479, pos = { x = -1801.899, y = 313.070, z = 3676.503 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1014002, name = "ANY_MONSTER_DIE_14002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_14002", action = "action_EVENT_ANY_MONSTER_DIE_14002", trigger_count = 0 },
	{ config_id = 1014003, name = "TIME_AXIS_PASS_14003", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_14003", action = "action_EVENT_TIME_AXIS_PASS_14003", trigger_count = 0 },
	{ config_id = 1014005, name = "MONSTER_BATTLE_14005", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_14005", action = "action_EVENT_MONSTER_BATTLE_14005", trigger_count = 0 },
	-- 血量变化播reminder
	{ config_id = 1014006, name = "SPECIFIC_MONSTER_HP_CHANGE_14006", event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = "14001", condition = "condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_14006", action = "action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_14006" }
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
		monsters = { 14001 },
		gadgets = { 14004 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_14002", "TIME_AXIS_PASS_14003", "MONSTER_BATTLE_14005", "SPECIFIC_MONSTER_HP_CHANGE_14006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_14002(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_14002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7301605_fin") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将configid为 14004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 14004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_14003(context, evt)
	if "battle" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_14003(context, evt)
	-- 将configid为 14004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 14004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_14005(context, evt)
	--判断死亡怪物的configid是否为 14001
	if evt.param1 ~= 14001 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_14005(context, evt)
	-- 创建标识为"battle"，时间节点为{3}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "battle", {3}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_14006(context, evt)
	--[[判断指定configid的怪物的血量小于%95时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE or evt.param3 > 95 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_14006(context, evt)
	-- 调用提示id为 1111247 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111247) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end