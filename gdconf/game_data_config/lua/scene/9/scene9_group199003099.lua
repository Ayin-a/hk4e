-- 基础信息
local base_info = {
	group_id = 199003099
}

-- Trigger变量
local defs = {
	groupid = 199003099
}

-- DEFS_MISCS
function GadgetStateSwitcher(context,gadget_id,state)

				if
 ScriptLib.GetGadgetStateByConfigId(context, defs.groupid, gadget_id)  == state[1] then 
					ScriptLib.SetGroupGadgetStateByConfigId(context, defs.groupid, gadget_id, state[2])
				elseif ScriptLib.GetGadgetStateByConfigId(context, defs.groupid, gadget_id)  == state[2] then 
					ScriptLib.SetGroupGadgetStateByConfigId(context, defs.groupid, gadget_id, state[1])
				end 
			
			end

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
	{ config_id = 99001, gadget_id = 70230001, pos = { x = -736.443, y = 138.310, z = 19.354 }, rot = { x = 0.050, y = 132.197, z = 359.578 }, level = 20, state = GadgetState.GearStart, area_id = 403 },
	{ config_id = 99002, gadget_id = 70230002, pos = { x = -732.762, y = 136.338, z = 22.334 }, rot = { x = 0.000, y = 106.219, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 99003, gadget_id = 70230003, pos = { x = -735.425, y = 136.560, z = 20.174 }, rot = { x = 0.000, y = 167.239, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 99004, gadget_id = 70230026, pos = { x = -731.445, y = 139.543, z = 23.398 }, rot = { x = 0.000, y = 164.048, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 99005, gadget_id = 70230026, pos = { x = -729.750, y = 136.475, z = 24.195 }, rot = { x = 0.000, y = 164.048, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 403 },
	{ config_id = 99006, gadget_id = 70360001, pos = { x = -736.443, y = 138.310, z = 19.354 }, rot = { x = 0.050, y = 132.197, z = 359.578 }, level = 20, worktop_config = { init_options = { 411 } }, area_id = 403 },
	{ config_id = 99007, gadget_id = 70360001, pos = { x = -732.762, y = 136.338, z = 22.334 }, rot = { x = 0.000, y = 106.219, z = 0.000 }, level = 20, worktop_config = { init_options = { 411 } }, area_id = 403 },
	{ config_id = 99008, gadget_id = 70360001, pos = { x = -735.425, y = 136.560, z = 20.174 }, rot = { x = 0.000, y = 167.239, z = 0.000 }, level = 20, worktop_config = { init_options = { 411 } }, area_id = 403 },
	{ config_id = 99009, gadget_id = 70360001, pos = { x = -731.445, y = 139.381, z = 23.398 }, rot = { x = 0.000, y = 164.048, z = 0.000 }, level = 20, worktop_config = { init_options = { 411 } }, area_id = 403 },
	{ config_id = 99010, gadget_id = 70360001, pos = { x = -729.750, y = 136.475, z = 24.195 }, rot = { x = 0.000, y = 164.048, z = 0.000 }, level = 20, worktop_config = { init_options = { 411 } }, area_id = 403 },
	{ config_id = 99017, gadget_id = 70211112, pos = { x = -731.521, y = 132.590, z = 17.566 }, rot = { x = 0.000, y = 131.685, z = 0.000 }, level = 16, drop_tag = "解谜中级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, explore = { name = "chest", exp = 1 }, area_id = 403 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1099011, name = "SELECT_OPTION_99011", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_99011", action = "action_EVENT_SELECT_OPTION_99011", trigger_count = 0 },
	{ config_id = 1099012, name = "SELECT_OPTION_99012", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_99012", action = "action_EVENT_SELECT_OPTION_99012", trigger_count = 0 },
	{ config_id = 1099013, name = "SELECT_OPTION_99013", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_99013", action = "action_EVENT_SELECT_OPTION_99013", trigger_count = 0 },
	{ config_id = 1099014, name = "SELECT_OPTION_99014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_99014", action = "action_EVENT_SELECT_OPTION_99014", trigger_count = 0 },
	{ config_id = 1099015, name = "SELECT_OPTION_99015", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_99015", action = "action_EVENT_SELECT_OPTION_99015", trigger_count = 0 },
	{ config_id = 1099016, name = "GADGET_STATE_CHANGE_99016", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_99016", action = "action_EVENT_GADGET_STATE_CHANGE_99016", trigger_count = 0 },
	{ config_id = 1099018, name = "GADGET_STATE_CHANGE_99018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_99018", action = "action_EVENT_GADGET_STATE_CHANGE_99018", trigger_count = 0 },
	{ config_id = 1099019, name = "GROUP_LOAD_99019", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_99019", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 2, name = "key", value = 0, no_refresh = true }
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
		gadgets = { 99001, 99002, 99003, 99004, 99005, 99006, 99007, 99008, 99009, 99010, 99017 },
		regions = { },
		triggers = { "SELECT_OPTION_99011", "SELECT_OPTION_99012", "SELECT_OPTION_99013", "SELECT_OPTION_99014", "SELECT_OPTION_99015", "GADGET_STATE_CHANGE_99016", "GADGET_STATE_CHANGE_99018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 99001, 99002, 99003, 99004, 99005 },
		regions = { },
		triggers = { "GROUP_LOAD_99019" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_99011(context, evt)
	-- 判断是gadgetid 99006 option_id 411
	if 99006 ~= evt.param1 then
		return false	
	end
	
	if 411 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_99011(context, evt)
	GadgetStateSwitcher(context,99001,{0,201})
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_99012(context, evt)
	-- 判断是gadgetid 99007 option_id 411
	if 99007 ~= evt.param1 then
		return false	
	end
	
	if 411 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_99012(context, evt)
	GadgetStateSwitcher(context,99002,{0,201})
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_99013(context, evt)
	-- 判断是gadgetid 99008 option_id 411
	if 99008 ~= evt.param1 then
		return false	
	end
	
	if 411 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_99013(context, evt)
	GadgetStateSwitcher(context,99003,{0,201})
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_99014(context, evt)
	-- 判断是gadgetid 99009 option_id 411
	if 99009 ~= evt.param1 then
		return false	
	end
	
	if 411 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_99014(context, evt)
	GadgetStateSwitcher(context,99004,{0,201})
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_99015(context, evt)
	-- 判断是gadgetid 99010 option_id 411
	if 99010 ~= evt.param1 then
		return false	
	end
	
	if 411 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_99015(context, evt)
	GadgetStateSwitcher(context,99005,{0,201})
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_99016(context, evt)
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 199003099, 99001) then
		return false
	end
	
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 199003099, 99002) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 199003099, 99003) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 199003099, 99004) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 199003099, 99005) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_99016(context, evt)
	-- 将configid为 99017 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 99017, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_99018(context, evt)
	if 99017 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_99018(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 199003099, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_99019(context, evt)
	-- 将configid为 99001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 99001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 99002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 99002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 99003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 99003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 99004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 99004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 99005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 99005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end