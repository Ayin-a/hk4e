-- 基础信息
local base_info = {
	group_id = 133212058
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 58004, monster_id = 25100101, pos = { x = -3911.262, y = 284.990, z = -2302.708 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, affix = { 1101 }, pose_id = 1002, area_id = 13 }
}

-- NPC
npcs = {
	{ config_id = 58002, npc_id = 20267, pos = { x = -3908.298, y = 285.006, z = -2300.646 }, rot = { x = 0.000, y = 323.013, z = 0.000 }, area_id = 13 }
}

-- 装置
gadgets = {
	{ config_id = 58001, gadget_id = 70290128, pos = { x = -3907.480, y = 284.083, z = -2301.643 }, rot = { x = 0.000, y = 319.632, z = 0.000 }, level = 1, persistent = true, area_id = 13 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1058003, name = "QUEST_FINISH_58003", event = EventType.EVENT_QUEST_FINISH, source = "7214101", condition = "", action = "action_EVENT_QUEST_FINISH_58003", trigger_count = 0 },
	{ config_id = 1058005, name = "MONSTER_BATTLE_58005", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_58005", action = "action_EVENT_MONSTER_BATTLE_58005" },
	{ config_id = 1058006, name = "ANY_MONSTER_DIE_58006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_58006", action = "action_EVENT_ANY_MONSTER_DIE_58006" },
	{ config_id = 1058007, name = "QUEST_FINISH_58007", event = EventType.EVENT_QUEST_FINISH, source = "7214112", condition = "", action = "action_EVENT_QUEST_FINISH_58007", trigger_count = 0 },
	{ config_id = 1058008, name = "QUEST_FINISH_58008", event = EventType.EVENT_QUEST_FINISH, source = "7214113", condition = "", action = "action_EVENT_QUEST_FINISH_58008", trigger_count = 0 },
	{ config_id = 1058009, name = "QUEST_FINISH_58009", event = EventType.EVENT_QUEST_FINISH, source = "7214104", condition = "", action = "action_EVENT_QUEST_FINISH_58009", trigger_count = 0 },
	{ config_id = 1058010, name = "QUEST_FINISH_58010", event = EventType.EVENT_QUEST_FINISH, source = "7214114", condition = "", action = "action_EVENT_QUEST_FINISH_58010", trigger_count = 0 },
	{ config_id = 1058011, name = "QUEST_FINISH_58011", event = EventType.EVENT_QUEST_FINISH, source = "7214115", condition = "", action = "action_EVENT_QUEST_FINISH_58011", trigger_count = 0 },
	{ config_id = 1058012, name = "QUEST_FINISH_58012", event = EventType.EVENT_QUEST_FINISH, source = "7214107", condition = "", action = "action_EVENT_QUEST_FINISH_58012", trigger_count = 0 },
	{ config_id = 1058013, name = "QUEST_FINISH_58013", event = EventType.EVENT_QUEST_FINISH, source = "7214116", condition = "", action = "action_EVENT_QUEST_FINISH_58013", trigger_count = 0 },
	{ config_id = 1058014, name = "QUEST_FINISH_58014", event = EventType.EVENT_QUEST_FINISH, source = "7214117", condition = "", action = "action_EVENT_QUEST_FINISH_58014", trigger_count = 0 },
	{ config_id = 1058015, name = "QUEST_FINISH_58015", event = EventType.EVENT_QUEST_FINISH, source = "7214118", condition = "", action = "action_EVENT_QUEST_FINISH_58015", trigger_count = 0 },
	{ config_id = 1058016, name = "QUEST_FINISH_58016", event = EventType.EVENT_QUEST_FINISH, source = "7214119", condition = "", action = "action_EVENT_QUEST_FINISH_58016", trigger_count = 0 },
	{ config_id = 1058017, name = "QUEST_FINISH_58017", event = EventType.EVENT_QUEST_FINISH, source = "7214120", condition = "", action = "action_EVENT_QUEST_FINISH_58017", trigger_count = 0 },
	{ config_id = 1058018, name = "QUEST_FINISH_58018", event = EventType.EVENT_QUEST_FINISH, source = "7214103", condition = "", action = "action_EVENT_QUEST_FINISH_58018", trigger_count = 0 },
	{ config_id = 1058019, name = "QUEST_FINISH_58019", event = EventType.EVENT_QUEST_FINISH, source = "7214106", condition = "", action = "action_EVENT_QUEST_FINISH_58019", trigger_count = 0 },
	{ config_id = 1058020, name = "QUEST_FINISH_58020", event = EventType.EVENT_QUEST_FINISH, source = "7214109", condition = "", action = "action_EVENT_QUEST_FINISH_58020", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "133212058_var", value = 0, no_refresh = false }
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
		gadgets = { 58001 },
		regions = { },
		triggers = { "QUEST_FINISH_58003", "QUEST_FINISH_58007", "QUEST_FINISH_58008", "QUEST_FINISH_58009", "QUEST_FINISH_58010", "QUEST_FINISH_58011", "QUEST_FINISH_58012", "QUEST_FINISH_58013", "QUEST_FINISH_58014", "QUEST_FINISH_58015", "QUEST_FINISH_58016", "QUEST_FINISH_58017", "QUEST_FINISH_58018", "QUEST_FINISH_58019", "QUEST_FINISH_58020" },
		npcs = { 58002 },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 58004 },
		gadgets = { 58001 },
		regions = { },
		triggers = { "QUEST_FINISH_58003", "MONSTER_BATTLE_58005", "ANY_MONSTER_DIE_58006", "QUEST_FINISH_58007", "QUEST_FINISH_58008", "QUEST_FINISH_58009", "QUEST_FINISH_58010", "QUEST_FINISH_58011", "QUEST_FINISH_58012", "QUEST_FINISH_58013", "QUEST_FINISH_58014", "QUEST_FINISH_58015", "QUEST_FINISH_58016", "QUEST_FINISH_58017", "QUEST_FINISH_58018", "QUEST_FINISH_58019", "QUEST_FINISH_58020" },
		npcs = { 58002 },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "QUEST_FINISH_58003", "QUEST_FINISH_58007", "QUEST_FINISH_58008", "QUEST_FINISH_58009", "QUEST_FINISH_58010", "QUEST_FINISH_58011", "QUEST_FINISH_58012", "QUEST_FINISH_58013", "QUEST_FINISH_58014", "QUEST_FINISH_58015", "QUEST_FINISH_58016", "QUEST_FINISH_58017", "QUEST_FINISH_58018", "QUEST_FINISH_58019", "QUEST_FINISH_58020" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_FINISH_58003(context, evt)
	-- 将configid为 58001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 58001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_58005(context, evt)
	if 58004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_58005(context, evt)
	-- 调用提示id为 321238061 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 321238061) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_58006(context, evt)
	--判断死亡怪物的configid是否为 58004
	if evt.param1 ~= 58004 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_58006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7214110_finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_58007(context, evt)
	-- 将configid为 58001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 58001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_58008(context, evt)
	-- 将configid为 58001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 58001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_58009(context, evt)
	-- 将configid为 58001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 58001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_58010(context, evt)
	-- 将configid为 58001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 58001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_58011(context, evt)
	-- 将configid为 58001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 58001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_58012(context, evt)
	-- 将configid为 58001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 58001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_58013(context, evt)
	-- 将configid为 58001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 58001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_58014(context, evt)
	-- 将configid为 58001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 58001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_58015(context, evt)
	-- 将configid为 58001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 58001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_58016(context, evt)
	-- 将configid为 58001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 58001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_58017(context, evt)
	-- 将configid为 58001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 58001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_58018(context, evt)
	-- 将configid为 58001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 58001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_58019(context, evt)
	-- 将configid为 58001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 58001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_58020(context, evt)
	-- 将configid为 58001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 58001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end