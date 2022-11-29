-- 基础信息
local base_info = {
	group_id = 199003078
}

-- DEFS_MISCS
local        defs = {

				--连线形态
				patterns = 
				{
						--形态1
						[1] = 
						{
								   [78001] = 78002,
									[78002] = 78003,
				[78003] = 78004,
										[78004] = 78005,
										[78005] = 78006,
										[78006] = 78007,
										[78007] = 78008,
										[78008] = 0,
						},
			
		}
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
	[78001] = { config_id = 78001, gadget_id = 70310179, pos = { x = -713.701, y = 253.501, z = -9.564 }, rot = { x = 0.000, y = 216.437, z = 0.000 }, level = 20, persistent = true, area_id = 403 },
	[78002] = { config_id = 78002, gadget_id = 70310179, pos = { x = -716.012, y = 254.585, z = -8.219 }, rot = { x = 0.000, y = 216.437, z = 0.000 }, level = 20, persistent = true, area_id = 403 },
	[78003] = { config_id = 78003, gadget_id = 70310179, pos = { x = -718.541, y = 257.544, z = -7.451 }, rot = { x = 0.000, y = 190.126, z = 0.000 }, level = 20, persistent = true, area_id = 403 },
	[78004] = { config_id = 78004, gadget_id = 70310179, pos = { x = -720.166, y = 260.187, z = -7.198 }, rot = { x = 0.000, y = 184.764, z = 0.000 }, level = 20, persistent = true, area_id = 403 },
	[78005] = { config_id = 78005, gadget_id = 70310179, pos = { x = -722.818, y = 260.926, z = -7.000 }, rot = { x = 0.000, y = 185.497, z = 0.000 }, level = 20, persistent = true, area_id = 403 },
	[78006] = { config_id = 78006, gadget_id = 70310179, pos = { x = -725.200, y = 257.930, z = -7.220 }, rot = { x = 0.000, y = 180.817, z = 0.000 }, level = 20, persistent = true, area_id = 403 },
	[78007] = { config_id = 78007, gadget_id = 70310179, pos = { x = -723.857, y = 255.813, z = -6.829 }, rot = { x = 0.000, y = 173.038, z = 0.000 }, level = 20, persistent = true, area_id = 403 },
	[78008] = { config_id = 78008, gadget_id = 70310179, pos = { x = -725.958, y = 253.935, z = -7.039 }, rot = { x = 0.000, y = 174.060, z = 0.000 }, level = 20, persistent = true, area_id = 403 },
	[78009] = { config_id = 78009, gadget_id = 70310449, pos = { x = -715.439, y = 252.056, z = -13.664 }, rot = { x = 0.000, y = 184.964, z = 0.000 }, level = 20, area_id = 403 },
	-- 1
	[78010] = { config_id = 78010, gadget_id = 70360346, pos = { x = -715.439, y = 252.056, z = -13.664 }, rot = { x = 0.000, y = 184.964, z = 0.000 }, level = 20, persistent = true, interact_id = 127, area_id = 403 },
	[78012] = { config_id = 78012, gadget_id = 70211132, pos = { x = -719.997, y = 252.733, z = -8.591 }, rot = { x = 0.000, y = 203.480, z = 0.000 }, level = 16, drop_tag = "解谜超级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 403 },
	-- 2
	[78013] = { config_id = 78013, gadget_id = 70360346, pos = { x = -715.439, y = 252.056, z = -13.664 }, rot = { x = 0.000, y = 184.964, z = 0.000 }, level = 20, persistent = true, interact_id = 127, area_id = 403 },
	-- 3
	[78015] = { config_id = 78015, gadget_id = 70360346, pos = { x = -715.439, y = 252.056, z = -13.664 }, rot = { x = 0.000, y = 184.964, z = 0.000 }, level = 20, persistent = true, interact_id = 127, area_id = 403 },
	-- 4
	[78017] = { config_id = 78017, gadget_id = 70360346, pos = { x = -715.439, y = 252.056, z = -13.664 }, rot = { x = 0.000, y = 184.964, z = 0.000 }, level = 20, persistent = true, interact_id = 127, area_id = 403 },
	-- 5
	[78019] = { config_id = 78019, gadget_id = 70360346, pos = { x = -715.439, y = 252.056, z = -13.664 }, rot = { x = 0.000, y = 184.964, z = 0.000 }, level = 20, persistent = true, interact_id = 127, area_id = 403 },
	-- 6
	[78021] = { config_id = 78021, gadget_id = 70360346, pos = { x = -715.439, y = 252.056, z = -13.664 }, rot = { x = 0.000, y = 184.964, z = 0.000 }, level = 20, persistent = true, interact_id = 127, area_id = 403 },
	-- 7
	[78023] = { config_id = 78023, gadget_id = 70360346, pos = { x = -715.439, y = 252.056, z = -13.664 }, rot = { x = 0.000, y = 184.964, z = 0.000 }, level = 20, persistent = true, interact_id = 127, area_id = 403 },
	-- 8
	[78025] = { config_id = 78025, gadget_id = 70360346, pos = { x = -715.439, y = 252.056, z = -13.664 }, rot = { x = 0.000, y = 184.964, z = 0.000 }, level = 20, persistent = true, interact_id = 127, area_id = 403 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 1
	{ config_id = 1078011, name = "GADGET_STATE_CHANGE_78011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_78011", action = "action_EVENT_GADGET_STATE_CHANGE_78011", trigger_count = 0 },
	{ config_id = 1078014, name = "GADGET_STATE_CHANGE_78014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_78014", action = "action_EVENT_GADGET_STATE_CHANGE_78014", trigger_count = 0 },
	-- 3
	{ config_id = 1078016, name = "GADGET_STATE_CHANGE_78016", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_78016", action = "action_EVENT_GADGET_STATE_CHANGE_78016", trigger_count = 0 },
	-- 4
	{ config_id = 1078018, name = "GADGET_STATE_CHANGE_78018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_78018", action = "action_EVENT_GADGET_STATE_CHANGE_78018", trigger_count = 0 },
	-- 5
	{ config_id = 1078020, name = "GADGET_STATE_CHANGE_78020", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_78020", action = "action_EVENT_GADGET_STATE_CHANGE_78020", trigger_count = 0 },
	-- 6
	{ config_id = 1078022, name = "GADGET_STATE_CHANGE_78022", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_78022", action = "action_EVENT_GADGET_STATE_CHANGE_78022", trigger_count = 0 },
	-- 7
	{ config_id = 1078024, name = "GADGET_STATE_CHANGE_78024", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_78024", action = "action_EVENT_GADGET_STATE_CHANGE_78024", trigger_count = 0 },
	-- 8
	{ config_id = 1078026, name = "GADGET_STATE_CHANGE_78026", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_78026", action = "action_EVENT_GADGET_STATE_CHANGE_78026", trigger_count = 0 },
	{ config_id = 1078027, name = "GROUP_LOAD_78027", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_78027", action = "action_EVENT_GROUP_LOAD_78027", trigger_count = 0 },
	{ config_id = 1078028, name = "CUTSCENE_END_78028", event = EventType.EVENT_CUTSCENE_END, source = "199003100", condition = "", action = "action_EVENT_CUTSCENE_END_78028", trigger_count = 0 },
	-- 8
	{ config_id = 1078029, name = "GROUP_LOAD_78029", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_78029", action = "action_EVENT_GROUP_LOAD_78029", trigger_count = 0 },
	{ config_id = 1078030, name = "GADGET_STATE_CHANGE_78030", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_78030", action = "action_EVENT_GADGET_STATE_CHANGE_78030", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "create", value = 0, no_refresh = true },
	{ config_id = 2, name = "finish", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 8,
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
		gadgets = { 78001, 78002, 78003, 78004, 78005, 78006, 78007, 78008, 78009, 78010, 78012 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_78011", "GROUP_LOAD_78027", "CUTSCENE_END_78028", "GADGET_STATE_CHANGE_78030" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 78001, 78002, 78003, 78004, 78005, 78006, 78007, 78008, 78009, 78012, 78013 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_78014", "GROUP_LOAD_78027", "CUTSCENE_END_78028", "GADGET_STATE_CHANGE_78030" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 78001, 78002, 78003, 78004, 78005, 78006, 78007, 78008, 78009, 78012, 78015 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_78016", "GROUP_LOAD_78027", "CUTSCENE_END_78028", "GADGET_STATE_CHANGE_78030" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 78001, 78002, 78003, 78004, 78005, 78006, 78007, 78008, 78009, 78012, 78017 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_78018", "GROUP_LOAD_78027", "CUTSCENE_END_78028", "GADGET_STATE_CHANGE_78030" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 78001, 78002, 78003, 78004, 78005, 78006, 78007, 78008, 78009, 78012, 78019 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_78020", "GROUP_LOAD_78027", "CUTSCENE_END_78028", "GADGET_STATE_CHANGE_78030" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 78001, 78002, 78003, 78004, 78005, 78006, 78007, 78008, 78009, 78012, 78021 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_78022", "GROUP_LOAD_78027", "CUTSCENE_END_78028", "GADGET_STATE_CHANGE_78030" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { 78001, 78002, 78003, 78004, 78005, 78006, 78007, 78008, 78009, 78012, 78023 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_78024", "GROUP_LOAD_78027", "CUTSCENE_END_78028", "GADGET_STATE_CHANGE_78030" },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { },
		gadgets = { 78001, 78002, 78003, 78004, 78005, 78006, 78007, 78008, 78009, 78012, 78025 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_78026", "GROUP_LOAD_78027", "CUTSCENE_END_78028", "GROUP_LOAD_78029", "GADGET_STATE_CHANGE_78030" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_78011(context, evt)
	if 78010 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_78011(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 199003078, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 将configid为 78001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 78001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_78014(context, evt)
	if 78013 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_78014(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 199003078, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 将configid为 78002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 78002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_78016(context, evt)
	if 78015 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_78016(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 199003078, 4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 将本组内变量名为 "create" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "create", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 通知场景上的所有玩家播放名字为199003100 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 199003100, 18) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : play_cutscene")
			return -1
		end 
	
	-- 将configid为 78003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 78003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_78018(context, evt)
	if 78017 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_78018(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 199003078, 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 将configid为 78004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 78004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_78020(context, evt)
	if 78019 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_78020(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 199003078, 6) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 将configid为 78005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 78005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_78022(context, evt)
	if 78021 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_78022(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 199003078, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 将configid为 78006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 78006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_78024(context, evt)
	if 78023 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_78024(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 199003078, 8) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 将configid为 78007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 78007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_78026(context, evt)
	if 78025 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_78026(context, evt)
	-- 将configid为 78008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 78008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 78012 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 78012, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_78027(context, evt)
	-- 判断变量"create"为1
	if ScriptLib.GetGroupVariableValue(context, "create") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_78027(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 199003165, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CUTSCENE_END_78028(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 199003165, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_78029(context, evt)
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_78029(context, evt)
	-- 将本组内变量名为 "start" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "start", 1, 199003172) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将configid为 78008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 78008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 78012 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 78012, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_78030(context, evt)
	if 78012 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_78030(context, evt)
	-- 将本组内变量名为 "finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "start" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "start", 1, 199003172) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

require "V2_8/ConstellationPattern"