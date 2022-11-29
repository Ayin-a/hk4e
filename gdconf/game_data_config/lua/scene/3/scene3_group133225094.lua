-- 基础信息
local base_info = {
	group_id = 133225094
}

-- DEFS_MISCS
defs = 
{
	group_id = 133225094,
	Lightup_Seq = {94001,94003,94009,94010,94002}
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
	{ config_id = 94001, gadget_id = 70310134, pos = { x = -6275.736, y = 222.371, z = -2679.238 }, rot = { x = 354.621, y = 22.961, z = 359.608 }, level = 33, area_id = 18 },
	{ config_id = 94002, gadget_id = 70310138, pos = { x = -6285.068, y = 222.936, z = -2676.323 }, rot = { x = 359.477, y = 86.344, z = 0.033 }, level = 33, area_id = 18 },
	{ config_id = 94003, gadget_id = 70310135, pos = { x = -6280.724, y = 222.802, z = -2678.756 }, rot = { x = 3.771, y = 71.667, z = 0.345 }, level = 33, area_id = 18 },
	{ config_id = 94004, gadget_id = 70310141, pos = { x = -6275.736, y = 222.371, z = -2679.238 }, rot = { x = 354.621, y = 22.961, z = 359.608 }, level = 33, state = GadgetState.GearStop, persistent = true, interact_id = 67, area_id = 18 },
	{ config_id = 94005, gadget_id = 70310141, pos = { x = -6285.068, y = 222.936, z = -2676.323 }, rot = { x = 359.477, y = 86.344, z = 0.033 }, level = 33, state = GadgetState.GearStop, persistent = true, interact_id = 67, area_id = 18 },
	{ config_id = 94006, gadget_id = 70310141, pos = { x = -6280.724, y = 222.802, z = -2678.756 }, rot = { x = 3.771, y = 71.667, z = 0.345 }, level = 33, state = GadgetState.GearStop, persistent = true, interact_id = 67, area_id = 18 },
	{ config_id = 94007, gadget_id = 70310134, pos = { x = -6271.688, y = 221.876, z = -2680.625 }, rot = { x = 356.846, y = 173.476, z = 16.389 }, level = 33, area_id = 18 },
	{ config_id = 94008, gadget_id = 70310134, pos = { x = -6287.291, y = 222.849, z = -2672.273 }, rot = { x = 359.229, y = 98.256, z = 358.374 }, level = 33, area_id = 18 },
	{ config_id = 94009, gadget_id = 70310139, pos = { x = -6271.688, y = 221.876, z = -2680.625 }, rot = { x = 356.846, y = 173.476, z = 16.389 }, level = 33, area_id = 18 },
	{ config_id = 94010, gadget_id = 70310136, pos = { x = -6287.291, y = 222.849, z = -2672.273 }, rot = { x = 359.229, y = 98.256, z = 358.374 }, level = 33, area_id = 18 },
	{ config_id = 94011, gadget_id = 70211111, pos = { x = -6278.742, y = 222.028, z = -2671.990 }, rot = { x = 0.000, y = 193.081, z = 0.000 }, level = 26, chest_drop_id = 1050146, drop_count = 1, isOneoff = true, persistent = true, autopick = true, explore = { name = "chest", exp = 1 }, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 仙灵A返回，设置可提交
	{ config_id = 1094012, name = "VARIABLE_CHANGE_94012", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_94012", action = "action_EVENT_VARIABLE_CHANGE_94012" },
	-- 仙灵B返回，设置可提交
	{ config_id = 1094013, name = "VARIABLE_CHANGE_94013", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_94013", action = "action_EVENT_VARIABLE_CHANGE_94013" },
	-- A
	{ config_id = 1094014, name = "GADGET_STATE_CHANGE_94014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_94014", action = "action_EVENT_GADGET_STATE_CHANGE_94014" },
	-- B
	{ config_id = 1094015, name = "GADGET_STATE_CHANGE_94015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_94015", action = "action_EVENT_GADGET_STATE_CHANGE_94015" },
	-- C
	{ config_id = 1094016, name = "GADGET_STATE_CHANGE_94016", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_94016", action = "action_EVENT_GADGET_STATE_CHANGE_94016" },
	-- 全部完成
	{ config_id = 1094017, name = "VARIABLE_CHANGE_94017", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_94017", action = "action_EVENT_VARIABLE_CHANGE_94017" },
	-- 完成
	{ config_id = 1094018, name = "VARIABLE_CHANGE_94018", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_94018", action = "action_EVENT_VARIABLE_CHANGE_94018" },
	-- 仙灵C返回，设置可提交
	{ config_id = 1094019, name = "VARIABLE_CHANGE_94019", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_94019", action = "action_EVENT_VARIABLE_CHANGE_94019" },
	{ config_id = 1094020, name = "GROUP_LOAD_94020", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_94020", action = "action_EVENT_GROUP_LOAD_94020", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "stone_progress", value = 0, no_refresh = true },
	{ config_id = 2, name = "Finished", value = 0, no_refresh = true },
	{ config_id = 3, name = "TsurumiStone", value = 1, no_refresh = true },
	{ config_id = 4, name = "StoneCanPlace_A", value = 0, no_refresh = true },
	{ config_id = 5, name = "StoneCanPlace_B", value = 0, no_refresh = true },
	{ config_id = 6, name = "StoneCanPlace_C", value = 0, no_refresh = true },
	{ config_id = 7, name = "isQuestNotify", value = 0, no_refresh = true }
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
		gadgets = { 94004, 94005, 94006, 94007, 94008 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_94012", "VARIABLE_CHANGE_94013", "GADGET_STATE_CHANGE_94014", "GADGET_STATE_CHANGE_94015", "GADGET_STATE_CHANGE_94016", "VARIABLE_CHANGE_94017", "VARIABLE_CHANGE_94019" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 94001, 94002, 94003, 94009, 94010 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_94018", "GROUP_LOAD_94020" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_94012(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"StoneCanPlace_A"为1
	if ScriptLib.GetGroupVariableValue(context, "StoneCanPlace_A") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_94012(context, evt)
	-- 将configid为 94004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 94004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_94013(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"StoneCanPlace_B"为1
	if ScriptLib.GetGroupVariableValue(context, "StoneCanPlace_B") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_94013(context, evt)
	-- 将configid为 94005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 94005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_94014(context, evt)
	if 94004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_94014(context, evt)
	-- 针对当前group内变量名为 "stone_progress" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "stone_progress", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "stone_progress" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stone_progress", 2, 133225160) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_94015(context, evt)
	if 94005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_94015(context, evt)
	-- 针对当前group内变量名为 "stone_progress" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "stone_progress", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "stone_progress" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stone_progress", 2, 133225161) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_94016(context, evt)
	if 94006 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_94016(context, evt)
	-- 针对当前group内变量名为 "stone_progress" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "stone_progress", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "stone_progress" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stone_progress", 2, 133225162) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_94017(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"stone_progress"为3
	if ScriptLib.GetGroupVariableValue(context, "stone_progress") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_94017(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133225094, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将本组内变量名为 "isQuestNotify" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "isQuestNotify", 1, 133225094) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_94018(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Finished"为1
	if ScriptLib.GetGroupVariableValue(context, "Finished") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_94018(context, evt)
	-- 创建id为94011的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 94011 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_94019(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"StoneCanPlace_C"为1
	if ScriptLib.GetGroupVariableValue(context, "StoneCanPlace_C") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_94019(context, evt)
	-- 将configid为 94006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 94006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_94020(context, evt)
	-- 判断变量"Finished"为1
	if ScriptLib.GetGroupVariableValue(context, "Finished") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_94020(context, evt)
	-- 创建id为94011的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 94011 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

require "V2_2/TsurumiStoneSeq"