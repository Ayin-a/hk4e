-- 基础信息
local base_info = {
	group_id = 111101218
}

-- Trigger变量
local defs = {
	gadget_id = 218004
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
	{ config_id = 218001, gadget_id = 70310011, pos = { x = 2158.767, y = 206.116, z = -1057.264 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, persistent = true },
	{ config_id = 218002, gadget_id = 70310011, pos = { x = 2157.106, y = 206.184, z = -1055.058 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 218003, gadget_id = 70310011, pos = { x = 2158.738, y = 206.354, z = -1051.087 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, persistent = true },
	{ config_id = 218004, gadget_id = 70211111, pos = { x = 2166.653, y = 207.405, z = -1048.821 }, rot = { x = 347.684, y = 359.614, z = 3.577 }, level = 1, drop_tag = "解谜中级蒙德", showcutscene = true, isOneoff = true, persistent = true },
	{ config_id = 218008, gadget_id = 70330073, pos = { x = 2167.014, y = 206.253, z = -1057.526 }, rot = { x = 0.000, y = 304.073, z = 0.000 }, level = 1, state = GadgetState.Action01 },
	{ config_id = 218009, gadget_id = 70330073, pos = { x = 2160.459, y = 207.030, z = -1048.227 }, rot = { x = 0.000, y = 358.593, z = 0.000 }, level = 1, state = GadgetState.Action01 },
	{ config_id = 218010, gadget_id = 70330073, pos = { x = 2155.317, y = 206.127, z = -1058.654 }, rot = { x = 0.000, y = 47.425, z = 0.000 }, level = 1, state = GadgetState.Action01 },
	{ config_id = 218011, gadget_id = 70310011, pos = { x = 2162.188, y = 206.614, z = -1051.174 }, rot = { x = 0.000, y = 132.754, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 218012, gadget_id = 70310011, pos = { x = 2164.708, y = 206.389, z = -1054.859 }, rot = { x = 0.000, y = 132.754, z = 0.000 }, level = 1, state = GadgetState.GearStart, persistent = true },
	{ config_id = 218013, gadget_id = 70310011, pos = { x = 2163.376, y = 206.093, z = -1057.086 }, rot = { x = 0.000, y = 132.754, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 218027, gadget_id = 70330097, pos = { x = 2160.795, y = 206.265, z = -1054.368 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 218028, gadget_id = 70310011, pos = { x = 2159.105, y = 205.338, z = -1056.382 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 218029, gadget_id = 70310011, pos = { x = 2158.197, y = 205.396, z = -1054.739 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 218030, gadget_id = 70310011, pos = { x = 2159.239, y = 205.519, z = -1052.619 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 218031, gadget_id = 70310011, pos = { x = 2161.951, y = 205.667, z = -1052.404 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 218032, gadget_id = 70310011, pos = { x = 2163.569, y = 205.551, z = -1054.767 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 218033, gadget_id = 70310011, pos = { x = 2162.651, y = 205.340, z = -1056.440 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1218005, name = "GADGET_STATE_CHANGE_218005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_218005", action = "action_EVENT_GADGET_STATE_CHANGE_218005", trigger_count = 0 },
	{ config_id = 1218006, name = "GADGET_STATE_CHANGE_218006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_218006" },
	{ config_id = 1218007, name = "GADGET_CREATE_218007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_218007", action = "action_EVENT_GADGET_CREATE_218007" },
	{ config_id = 1218014, name = "GADGET_STATE_CHANGE_218014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_218014", action = "action_EVENT_GADGET_STATE_CHANGE_218014" },
	{ config_id = 1218015, name = "GROUP_LOAD_218015", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_218015" },
	{ config_id = 1218016, name = "GADGET_STATE_CHANGE_218016", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_218016", action = "action_EVENT_GADGET_STATE_CHANGE_218016" },
	{ config_id = 1218017, name = "GADGET_STATE_CHANGE_218017", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_218017", action = "action_EVENT_GADGET_STATE_CHANGE_218017" },
	{ config_id = 1218018, name = "GADGET_STATE_CHANGE_218018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_218018", action = "action_EVENT_GADGET_STATE_CHANGE_218018" },
	{ config_id = 1218019, name = "GADGET_STATE_CHANGE_218019", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_218019", action = "action_EVENT_GADGET_STATE_CHANGE_218019" },
	{ config_id = 1218020, name = "GADGET_STATE_CHANGE_218020", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_218020", action = "action_EVENT_GADGET_STATE_CHANGE_218020" },
	{ config_id = 1218021, name = "GADGET_STATE_CHANGE_218021", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_218021", action = "action_EVENT_GADGET_STATE_CHANGE_218021" },
	{ config_id = 1218022, name = "GADGET_STATE_CHANGE_218022", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_218022", action = "action_EVENT_GADGET_STATE_CHANGE_218022" },
	{ config_id = 1218023, name = "GADGET_STATE_CHANGE_218023", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_218023", action = "action_EVENT_GADGET_STATE_CHANGE_218023" },
	{ config_id = 1218024, name = "GADGET_STATE_CHANGE_218024", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_218024", action = "action_EVENT_GADGET_STATE_CHANGE_218024" },
	{ config_id = 1218025, name = "GADGET_STATE_CHANGE_218025", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_218025", action = "action_EVENT_GADGET_STATE_CHANGE_218025" },
	{ config_id = 1218026, name = "GADGET_STATE_CHANGE_218026", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_218026", action = "action_EVENT_GADGET_STATE_CHANGE_218026" }
}

-- 变量
variables = {
	{ config_id = 1, name = "start", value = 0, no_refresh = true }
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
		gadgets = { 218002, 218003, 218011, 218012 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_218006", "GADGET_CREATE_218007", "GADGET_STATE_CHANGE_218014", "GROUP_LOAD_218015", "GADGET_STATE_CHANGE_218016", "GADGET_STATE_CHANGE_218017", "GADGET_STATE_CHANGE_218018", "GADGET_STATE_CHANGE_218019", "GADGET_STATE_CHANGE_218020", "GADGET_STATE_CHANGE_218021", "GADGET_STATE_CHANGE_218022", "GADGET_STATE_CHANGE_218023", "GADGET_STATE_CHANGE_218024", "GADGET_STATE_CHANGE_218025", "GADGET_STATE_CHANGE_218026" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 218001, 218008, 218009, 218010, 218013, 218027 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_218005" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 218028, 218029, 218030, 218031, 218032, 218033 },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_218005(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "start") == #suites[1].gadgets then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_218005(context, evt)
	if evt.param1 == GadgetState.GearStart then
		ScriptLib.ChangeGroupVariableValue(context,"start",1)
	elseif evt.param1 == GadgetState.Default then
		ScriptLib.ChangeGroupVariableValue(context,"start",-1)
	end
	
	if ScriptLib.GetGroupVariableValue(context, "start") == #suites[1].gadgets then
		ScriptLib.CreateGadget(context, { config_id = defs.gadget_id })
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_218006(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_218007(context, evt)
	if defs.gadget_id ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_218007(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_218014(context, evt)
	if 218001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_218014(context, evt)
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 111101218, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_218015(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101218, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_218016(context, evt)
	if 218013 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_218016(context, evt)
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 111101218, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_218017(context, evt)
	if 218001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	if 218013 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_218017(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101218, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_218018(context, evt)
	if GadgetState.Action01 ~= ScriptLib.GetGadgetStateByConfigId(context, 111101218, 218010) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_218018(context, evt)
	-- 将configid为 218011 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 218011, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 218001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 218001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_218019(context, evt)
	if GadgetState.Action02 ~= ScriptLib.GetGadgetStateByConfigId(context, 111101218, 218010) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_218019(context, evt)
	-- 将configid为 218011 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 218011, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 218001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 218001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_218020(context, evt)
	if GadgetState.Action03 ~= ScriptLib.GetGadgetStateByConfigId(context, 111101218, 218010) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_218020(context, evt)
	-- 将configid为 218011 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 218011, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 218001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 218001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_218021(context, evt)
	if GadgetState.Action01 ~= ScriptLib.GetGadgetStateByConfigId(context, 111101218, 218009) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_218021(context, evt)
	-- 将configid为 218013 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 218013, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 218003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 218003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_218022(context, evt)
	if GadgetState.Action02 ~= ScriptLib.GetGadgetStateByConfigId(context, 111101218, 218009) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_218022(context, evt)
	-- 将configid为 218013 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 218013, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 218003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 218003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_218023(context, evt)
	if GadgetState.Action03 ~= ScriptLib.GetGadgetStateByConfigId(context, 111101218, 218009) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_218023(context, evt)
	-- 将configid为 218013 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 218013, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 218003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 218003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_218024(context, evt)
	if GadgetState.Action01 ~= ScriptLib.GetGadgetStateByConfigId(context, 111101218, 218008) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_218024(context, evt)
	-- 将configid为 218002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 218002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 218012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 218012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_218025(context, evt)
	if GadgetState.Action02 ~= ScriptLib.GetGadgetStateByConfigId(context, 111101218, 218008) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_218025(context, evt)
	-- 将configid为 218002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 218002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 218012 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 218012, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_218026(context, evt)
	if GadgetState.Action03 ~= ScriptLib.GetGadgetStateByConfigId(context, 111101218, 218008) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_218026(context, evt)
	-- 将configid为 218002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 218002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 218012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 218012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end