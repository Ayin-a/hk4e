-- 基础信息
local base_info = {
	group_id = 133225033
}

-- DEFS_MISCS
defs = 
{
	group_id = 133225033,
	Lightup_Seq = {33003,33016,33010,33001,33002}
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
	{ config_id = 33001, gadget_id = 70310138, pos = { x = -6335.340, y = 254.500, z = -2530.541 }, rot = { x = 359.653, y = 70.695, z = 356.506 }, level = 33, area_id = 18 },
	{ config_id = 33002, gadget_id = 70310140, pos = { x = -6332.079, y = 253.016, z = -2542.749 }, rot = { x = 11.037, y = 73.703, z = 353.819 }, level = 33, area_id = 18 },
	{ config_id = 33003, gadget_id = 70310135, pos = { x = -6328.668, y = 253.206, z = -2535.001 }, rot = { x = 1.893, y = 74.262, z = 356.720 }, level = 33, area_id = 18 },
	{ config_id = 33004, gadget_id = 70310141, pos = { x = -6335.340, y = 254.500, z = -2530.541 }, rot = { x = 359.653, y = 70.695, z = 356.506 }, level = 33, state = GadgetState.GearStop, persistent = true, interact_id = 66, area_id = 18 },
	{ config_id = 33005, gadget_id = 70310141, pos = { x = -6332.079, y = 253.016, z = -2542.749 }, rot = { x = 11.322, y = 74.687, z = 357.358 }, level = 33, state = GadgetState.GearStop, persistent = true, interact_id = 66, area_id = 18 },
	{ config_id = 33006, gadget_id = 70310141, pos = { x = -6328.668, y = 253.206, z = -2535.001 }, rot = { x = 1.893, y = 74.262, z = 356.720 }, level = 33, state = GadgetState.GearStop, persistent = true, interact_id = 66, area_id = 18 },
	{ config_id = 33007, gadget_id = 70310134, pos = { x = -6329.544, y = 253.134, z = -2538.734 }, rot = { x = 354.560, y = 88.949, z = 354.920 }, level = 33, area_id = 18 },
	{ config_id = 33008, gadget_id = 70310134, pos = { x = -6331.467, y = 253.877, z = -2531.966 }, rot = { x = 0.000, y = 79.678, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 33010, gadget_id = 70310139, pos = { x = -6329.544, y = 253.134, z = -2538.734 }, rot = { x = 354.560, y = 88.949, z = 354.920 }, level = 33, area_id = 18 },
	{ config_id = 33016, gadget_id = 70310137, pos = { x = -6331.467, y = 253.877, z = -2531.966 }, rot = { x = 0.000, y = 79.678, z = 0.000 }, level = 33, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 设置石头可提交
	{ config_id = 1033009, name = "VARIABLE_CHANGE_33009", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_33009", action = "action_EVENT_VARIABLE_CHANGE_33009" },
	-- 设置石头可提交
	{ config_id = 1033011, name = "VARIABLE_CHANGE_33011", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_33011", action = "action_EVENT_VARIABLE_CHANGE_33011" },
	-- A
	{ config_id = 1033012, name = "GADGET_STATE_CHANGE_33012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_33012", action = "action_EVENT_GADGET_STATE_CHANGE_33012" },
	-- B
	{ config_id = 1033013, name = "GADGET_STATE_CHANGE_33013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_33013", action = "action_EVENT_GADGET_STATE_CHANGE_33013" },
	-- C
	{ config_id = 1033014, name = "GADGET_STATE_CHANGE_33014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_33014", action = "action_EVENT_GADGET_STATE_CHANGE_33014" },
	{ config_id = 1033015, name = "VARIABLE_CHANGE_33015", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_33015", action = "action_EVENT_VARIABLE_CHANGE_33015" },
	-- 完成
	{ config_id = 1033017, name = "VARIABLE_CHANGE_33017", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_33017", action = "action_EVENT_VARIABLE_CHANGE_33017" },
	-- 设置石头可提交
	{ config_id = 1033018, name = "VARIABLE_CHANGE_33018", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_33018", action = "action_EVENT_VARIABLE_CHANGE_33018" }
}

-- 变量
variables = {
	{ config_id = 1, name = "stone_progress", value = 0, no_refresh = true },
	{ config_id = 2, name = "Finished", value = 0, no_refresh = true },
	{ config_id = 3, name = "TsurumiStone", value = 1, no_refresh = true },
	{ config_id = 4, name = "isQuestNotify", value = 0, no_refresh = true },
	{ config_id = 5, name = "StoneCanPlace_A", value = 0, no_refresh = true },
	{ config_id = 6, name = "StoneCanPlace_B", value = 0, no_refresh = true },
	{ config_id = 7, name = "StoneCanPlace_C", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
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
		gadgets = { 33004, 33005, 33006, 33007, 33008 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_33009", "VARIABLE_CHANGE_33011", "GADGET_STATE_CHANGE_33012", "GADGET_STATE_CHANGE_33013", "GADGET_STATE_CHANGE_33014", "VARIABLE_CHANGE_33015", "VARIABLE_CHANGE_33018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 33001, 33002, 33003, 33010, 33016 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_33017" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_33009(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"StoneCanPlace_A"为1
	if ScriptLib.GetGroupVariableValue(context, "StoneCanPlace_A") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_33009(context, evt)
	-- 将configid为 33004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 33004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_33011(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"StoneCanPlace_B"为1
	if ScriptLib.GetGroupVariableValue(context, "StoneCanPlace_B") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_33011(context, evt)
	-- 将configid为 33005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 33005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_33012(context, evt)
	if 33004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_33012(context, evt)
	-- 针对当前group内变量名为 "stone_progress" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "stone_progress", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "stone_progress" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stone_progress", 2, 133225093) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_33013(context, evt)
	if 33005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_33013(context, evt)
	-- 针对当前group内变量名为 "stone_progress" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "stone_progress", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "stone_progress" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stone_progress", 2, 133225129) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_33014(context, evt)
	if 33006 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_33014(context, evt)
	-- 针对当前group内变量名为 "stone_progress" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "stone_progress", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "stone_progress" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stone_progress", 2, 133225128) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_33015(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"stone_progress"为3
	if ScriptLib.GetGroupVariableValue(context, "stone_progress") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_33015(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "D2_AreaC_Stone_Place") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133225033, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将本组内变量名为 "isQuestNotify" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isQuestNotify", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_33017(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Finished"为1
	if ScriptLib.GetGroupVariableValue(context, "Finished") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_33017(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "D2_AreaC_Puzzle_Finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_33018(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"StoneCanPlace_C"为1
	if ScriptLib.GetGroupVariableValue(context, "StoneCanPlace_C") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_33018(context, evt)
	-- 将configid为 33006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 33006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V2_2/TsurumiStoneSeq"