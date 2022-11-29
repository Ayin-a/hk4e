-- 基础信息
local base_info = {
	group_id = 133108051
}

-- Trigger变量
local defs = {
	group_id = 133108051,
	gadget_target_1S = 51002,
	gadget_target_1E = 51005,
	gadget_target_2S = 51003,
	gadget_target_2E = 51006,
	gadget_target_3S = 51004,
	gadget_target_3E = 51007
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
	{ config_id = 51001, gadget_id = 70360008, pos = { x = -358.332, y = 208.032, z = -741.423 }, rot = { x = 0.000, y = 173.137, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 51002, gadget_id = 70360011, pos = { x = -370.773, y = 201.020, z = -754.604 }, rot = { x = 0.000, y = 206.937, z = 0.000 }, level = 32, mark_flag = 2, area_id = 7 },
	{ config_id = 51003, gadget_id = 70360011, pos = { x = -385.224, y = 210.586, z = -738.279 }, rot = { x = 0.000, y = 145.037, z = 0.000 }, level = 32, mark_flag = 4, area_id = 7 },
	{ config_id = 51004, gadget_id = 70360011, pos = { x = -364.243, y = 205.996, z = -737.094 }, rot = { x = 0.000, y = 41.237, z = 0.000 }, level = 32, mark_flag = 8, area_id = 7 },
	{ config_id = 51005, gadget_id = 70360014, pos = { x = -370.773, y = 201.020, z = -754.604 }, rot = { x = 0.000, y = 92.137, z = 0.000 }, level = 32, route_id = 310800014, area_id = 7 },
	{ config_id = 51006, gadget_id = 70360014, pos = { x = -385.324, y = 210.576, z = -738.289 }, rot = { x = 0.000, y = 192.037, z = 0.000 }, level = 32, route_id = 310800015, area_id = 7 },
	{ config_id = 51007, gadget_id = 70360014, pos = { x = -364.243, y = 205.996, z = -737.094 }, rot = { x = 0.000, y = 203.437, z = 0.000 }, level = 32, route_id = 310800016, area_id = 7 },
	{ config_id = 51008, gadget_id = 70211111, pos = { x = -357.050, y = 207.993, z = -744.560 }, rot = { x = 0.000, y = 14.992, z = 0.000 }, level = 26, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 7 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1051009, name = "GADGET_STATE_CHANGE_51009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_51009", trigger_count = 0 },
	{ config_id = 1051010, name = "GADGET_STATE_CHANGE_51010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_51010", action = "action_EVENT_GADGET_STATE_CHANGE_51010" },
	{ config_id = 1051011, name = "VARIABLE_CHANGE_51011", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_51011", action = "action_EVENT_VARIABLE_CHANGE_51011" },
	{ config_id = 1051012, name = "GADGET_STATE_CHANGE_51012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_51012", action = "action_EVENT_GADGET_STATE_CHANGE_51012", trigger_count = 0 },
	{ config_id = 1051013, name = "GADGET_CREATE_51013", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_51013", action = "action_EVENT_GADGET_CREATE_51013", trigger_count = 0 },
	{ config_id = 1051014, name = "SELECT_OPTION_51014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_51014", action = "action_EVENT_SELECT_OPTION_51014", trigger_count = 0 },
	{ config_id = 1051015, name = "GROUP_REFRESH_51015", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_51015" },
	{ config_id = 1051016, name = "ANY_GADGET_DIE_51016", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_51016", trigger_count = 0 },
	{ config_id = 1051017, name = "GADGET_CREATE_51017", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_51017", action = "action_EVENT_GADGET_CREATE_51017", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "count", value = 0, no_refresh = false }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 51001, 51002, 51003, 51004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_51009", "GADGET_STATE_CHANGE_51010", "VARIABLE_CHANGE_51011", "GADGET_STATE_CHANGE_51012", "GADGET_CREATE_51013", "SELECT_OPTION_51014", "GROUP_REFRESH_51015", "ANY_GADGET_DIE_51016" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 51001, 51008 },
		regions = { },
		triggers = { "GADGET_CREATE_51017" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_51009(context, evt)
	if evt.param1 == GadgetState.GearStart and evt.param3 == GadgetState.Default then
		
	if evt.param2 == defs.gadget_target_1S  then
	ScriptLib.CreateGadget(context, { config_id = defs.gadget_target_1E }) 
	
	elseif evt.param2 == defs.gadget_target_2S then
	ScriptLib.CreateGadget(context, { config_id = defs.gadget_target_2E }) 
	
	elseif evt.param2 == defs.gadget_target_3S then
	ScriptLib.CreateGadget(context, { config_id = defs.gadget_target_3E }) 
	
	end
		
	return 0
	else return -1
		
	end
		
	return false
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_51010(context, evt)
	if 51001 ~= evt.param2 or GadgetState.Action01 ~= evt.param1 then
	return false
	end
		
	if 0 == ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_target_1S)  then 
	return true
	end
		
	if 0 == ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_target_2S)  then 
	return true
	end
		
	if 0 == ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_target_3S)  then 
	return true
	end
		
	return false
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_51010(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133108051, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_51011(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count"为3
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_51011(context, evt)
	-- 将configid为 51001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 51001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133108051, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2008, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_51012(context, evt)
	if 51001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_51012(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2008, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 删除指定group： 133108051 ；指定config：51001；物件身上指定option：171；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133108051, 51001, 171) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_51013(context, evt)
	if 51001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_51013(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133108051, 51001, {171}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_51014(context, evt)
	if 51001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_51014(context, evt)
	-- 将configid为 51001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 51001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_51015(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133108051, 51001, {171}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_51016(context, evt)
	if evt.param1 == defs.gadget_target_1E or evt.param1 == defs.gadget_target_2E or evt.param1 == defs.gadget_target_3E then
	ScriptLib.ChangeGroupVariableValue(context, "count", 1)
	end
		
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_51017(context, evt)
	if 51001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_51017(context, evt)
	-- 将configid为 51001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 51001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end