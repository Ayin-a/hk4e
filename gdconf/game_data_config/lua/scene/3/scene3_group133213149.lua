-- 基础信息
local base_info = {
	group_id = 133213149
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 149001, gadget_id = 70211001, pos = { x = -3456.189, y = 201.215, z = -3046.713 }, rot = { x = 0.000, y = 281.421, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, state = GadgetState.ChestTrap, persistent = true, area_id = 12 },
	{ config_id = 149002, gadget_id = 70211001, pos = { x = -3458.833, y = 201.216, z = -3049.698 }, rot = { x = 0.000, y = 346.811, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, state = GadgetState.ChestTrap, persistent = true, area_id = 12 },
	{ config_id = 149003, gadget_id = 70211001, pos = { x = -3462.671, y = 201.216, z = -3048.071 }, rot = { x = 0.000, y = 46.875, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, state = GadgetState.ChestTrap, persistent = true, area_id = 12 },
	{ config_id = 149008, gadget_id = 70210118, pos = { x = -3456.189, y = 201.215, z = -3046.713 }, rot = { x = 0.000, y = 281.421, z = 0.000 }, level = 26, chest_drop_id = 1050132, drop_count = 1, persistent = true, area_id = 12 },
	{ config_id = 149009, gadget_id = 70210118, pos = { x = -3458.833, y = 201.216, z = -3049.698 }, rot = { x = 0.000, y = 346.811, z = 0.000 }, level = 26, chest_drop_id = 1050134, drop_count = 1, persistent = true, area_id = 12 },
	{ config_id = 149010, gadget_id = 70210118, pos = { x = -3462.671, y = 201.216, z = -3048.071 }, rot = { x = 0.000, y = 46.875, z = 0.000 }, level = 26, chest_drop_id = 1050136, drop_count = 1, persistent = true, area_id = 12 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1149004, name = "QUEST_FINISH_149004", event = EventType.EVENT_QUEST_FINISH, source = "7212803", condition = "condition_EVENT_QUEST_FINISH_149004", action = "action_EVENT_QUEST_FINISH_149004" },
	{ config_id = 1149005, name = "GADGET_STATE_CHANGE_149005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_149005", action = "action_EVENT_GADGET_STATE_CHANGE_149005" },
	{ config_id = 1149006, name = "GADGET_STATE_CHANGE_149006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_149006", action = "action_EVENT_GADGET_STATE_CHANGE_149006" },
	{ config_id = 1149007, name = "GADGET_STATE_CHANGE_149007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_149007", action = "action_EVENT_GADGET_STATE_CHANGE_149007" }
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
		gadgets = { 149001, 149002, 149003 },
		regions = { },
		triggers = { "QUEST_FINISH_149004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 149008, 149009, 149010 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_149005", "GADGET_STATE_CHANGE_149006", "GADGET_STATE_CHANGE_149007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_QUEST_FINISH_149004(context, evt)
	--检查ID为7212803的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 7212803 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_149004(context, evt)
	ScriptLib.SetGroupGadgetStateByConfigId(context, 133213149, 149001, GadgetState.Default)
	
	ScriptLib.SetGroupGadgetStateByConfigId(context, 133213149, 149002, GadgetState.Default)
	ScriptLib.SetGroupGadgetStateByConfigId(context, 133213149, 149003, GadgetState.Default)
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_149005(context, evt)
	if 149008 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_149005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7212804_end") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将configid为 149009 的物件更改为状态 GadgetState.ChestTrap
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 149009, GadgetState.ChestTrap) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 149010 的物件更改为状态 GadgetState.ChestTrap
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 149010, GadgetState.ChestTrap) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_149006(context, evt)
	if 149009 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_149006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7212804_end") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将configid为 149008 的物件更改为状态 GadgetState.ChestTrap
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 149008, GadgetState.ChestTrap) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 149010 的物件更改为状态 GadgetState.ChestTrap
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 149010, GadgetState.ChestTrap) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_149007(context, evt)
	if 149010 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_149007(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7212804_end") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将configid为 149008 的物件更改为状态 GadgetState.ChestTrap
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 149008, GadgetState.ChestTrap) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 149009 的物件更改为状态 GadgetState.ChestTrap
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 149009, GadgetState.ChestTrap) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end