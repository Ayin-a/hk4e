-- 基础信息
local base_info = {
	group_id = 133003596
}

-- Trigger变量
local defs = {
	duration = 30,
	group_id = 133003596,
	gadget_id_1 = 596001
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
	{ config_id = 596001, gadget_id = 70211112, pos = { x = 2700.210, y = 279.050, z = -1493.186 }, rot = { x = 345.483, y = 104.947, z = 7.606 }, level = 26, drop_tag = "解谜中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, oneoff_reset_version = 2, explore = { name = "chest", exp = 1 }, area_id = 1 },
	{ config_id = 596002, gadget_id = 70350083, pos = { x = 2757.653, y = 274.756, z = -1510.524 }, rot = { x = 1.981, y = 0.061, z = 350.528 }, level = 30, persistent = true, area_id = 1 },
	{ config_id = 596003, gadget_id = 70360001, pos = { x = 2757.798, y = 275.710, z = -1510.526 }, rot = { x = 2.336, y = 0.001, z = 350.254 }, level = 30, persistent = true, area_id = 1 },
	{ config_id = 596004, gadget_id = 70310001, pos = { x = 2742.908, y = 272.826, z = -1515.198 }, rot = { x = 0.000, y = 147.425, z = 0.000 }, level = 30, area_id = 1 },
	{ config_id = 596011, gadget_id = 70310001, pos = { x = 2738.001, y = 273.177, z = -1510.621 }, rot = { x = 0.000, y = 110.390, z = 0.000 }, level = 30, area_id = 1 },
	{ config_id = 596012, gadget_id = 70310001, pos = { x = 2730.852, y = 273.479, z = -1512.214 }, rot = { x = 0.000, y = 36.386, z = 0.000 }, level = 30, area_id = 1 },
	{ config_id = 596013, gadget_id = 70310001, pos = { x = 2727.231, y = 274.132, z = -1506.509 }, rot = { x = 0.000, y = 214.342, z = 0.000 }, level = 30, area_id = 1 },
	{ config_id = 596014, gadget_id = 70310001, pos = { x = 2720.009, y = 274.188, z = -1506.990 }, rot = { x = 0.000, y = 196.220, z = 0.000 }, level = 30, area_id = 1 },
	{ config_id = 596015, gadget_id = 70310001, pos = { x = 2717.927, y = 275.264, z = -1500.893 }, rot = { x = 0.000, y = 85.380, z = 0.000 }, level = 30, area_id = 1 },
	{ config_id = 596016, gadget_id = 70310001, pos = { x = 2709.567, y = 274.842, z = -1501.012 }, rot = { x = 0.000, y = 357.113, z = 0.000 }, level = 30, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1596005, name = "CHALLENGE_SUCCESS_596005", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_596005" },
	{ config_id = 1596006, name = "CHALLENGE_FAIL_596006", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_596006", trigger_count = 0 },
	{ config_id = 1596007, name = "GADGET_STATE_CHANGE_596007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_596007", action = "action_EVENT_GADGET_STATE_CHANGE_596007", trigger_count = 0 },
	{ config_id = 1596008, name = "GADGET_STATE_CHANGE_596008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_596008", action = "", tag = "202" },
	{ config_id = 1596009, name = "GADGET_CREATE_596009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_596009", action = "action_EVENT_GADGET_CREATE_596009", trigger_count = 0 },
	{ config_id = 1596010, name = "SELECT_OPTION_596010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_596010", action = "action_EVENT_SELECT_OPTION_596010", trigger_count = 0 },
	{ config_id = 1596017, name = "GADGET_STATE_CHANGE_596017", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_596017", action = "action_EVENT_GADGET_STATE_CHANGE_596017" },
	{ config_id = 1596018, name = "GADGET_STATE_CHANGE_596018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_596018", action = "action_EVENT_GADGET_STATE_CHANGE_596018" },
	{ config_id = 1596019, name = "GADGET_STATE_CHANGE_596019", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_596019", action = "action_EVENT_GADGET_STATE_CHANGE_596019" },
	{ config_id = 1596020, name = "GADGET_STATE_CHANGE_596020", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_596020", action = "action_EVENT_GADGET_STATE_CHANGE_596020" },
	{ config_id = 1596021, name = "GADGET_STATE_CHANGE_596021", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_596021", action = "action_EVENT_GADGET_STATE_CHANGE_596021" },
	{ config_id = 1596022, name = "GADGET_STATE_CHANGE_596022", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_596022", action = "action_EVENT_GADGET_STATE_CHANGE_596022" },
	{ config_id = 1596023, name = "GADGET_STATE_CHANGE_596023", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_596023", action = "action_EVENT_GADGET_STATE_CHANGE_596023" },
	{ config_id = 1596024, name = "GROUP_LOAD_596024", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_596024", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "num_1", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 3,
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
		gadgets = { 596002, 596003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_596005", "CHALLENGE_FAIL_596006", "GADGET_STATE_CHANGE_596007", "GADGET_STATE_CHANGE_596008", "GADGET_CREATE_596009", "SELECT_OPTION_596010", "GROUP_LOAD_596024" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 596001, 596004, 596011, 596012, 596013, 596014, 596015, 596016 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_596017", "GADGET_STATE_CHANGE_596018", "GADGET_STATE_CHANGE_596019", "GADGET_STATE_CHANGE_596020", "GADGET_STATE_CHANGE_596021", "GADGET_STATE_CHANGE_596022", "GADGET_STATE_CHANGE_596023" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 596002 },
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

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_596005(context, evt)
	-- 将configid为 596002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 596002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133003596, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133003596, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_596006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133003596, 2)
	
	-- 将configid为 596002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 596002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为596003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 596003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_596007(context, evt)
	if 596002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_596007(context, evt)
	-- 202号挑战,duration内开启宝箱
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 143, defs.duration, 7, 202, 1) then
	return -1
	end
	
	-- 添加suite2的新内容
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 1, 1) then
	return -1
	end
	
	-- 变量"num_1"赋值为0
	ScriptLib.SetGroupVariableValue(context, "num_1", 0)
	
	return 0
	
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_596008(context, evt)
	if 596001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_596009(context, evt)
	if 596003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_596009(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133003596, 596003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_596010(context, evt)
	-- 判断是gadgetid 596003 option_id 177
	if 596003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_596010(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 596003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 596002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 596002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_596017(context, evt)
	if 596016 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_596017(context, evt)
	local c_num_1 = ScriptLib.GetGroupVariableValue(context, "num_1")
	local c_num = c_num_1 +1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "num_1", c_num) then
	  return -1
	end
	
	if c_num == 7 then
		if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = defs.gadget_id_1, state = GadgetState.Default }) then
			return -1
		end
	end
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_596018(context, evt)
	if 596015 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_596018(context, evt)
	local c_num_1 = ScriptLib.GetGroupVariableValue(context, "num_1")
	local c_num = c_num_1 +1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "num_1", c_num) then
	  return -1
	end
	
	if c_num == 7 then
		if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = defs.gadget_id_1, state = GadgetState.Default }) then
			return -1
		end
	end
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_596019(context, evt)
	if 596014 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_596019(context, evt)
	local c_num_1 = ScriptLib.GetGroupVariableValue(context, "num_1")
	local c_num = c_num_1 +1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "num_1", c_num) then
	  return -1
	end
	
	if c_num == 7 then
		if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = defs.gadget_id_1, state = GadgetState.Default }) then
			return -1
		end
	end
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_596020(context, evt)
	if 596013 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_596020(context, evt)
	local c_num_1 = ScriptLib.GetGroupVariableValue(context, "num_1")
	local c_num = c_num_1 +1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "num_1", c_num) then
	  return -1
	end
	
	if c_num == 7 then
		if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = defs.gadget_id_1, state = GadgetState.Default }) then
			return -1
		end
	end
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_596021(context, evt)
	if 596012 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_596021(context, evt)
	local c_num_1 = ScriptLib.GetGroupVariableValue(context, "num_1")
	local c_num = c_num_1 +1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "num_1", c_num) then
	  return -1
	end
	
	if c_num == 7 then
		if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = defs.gadget_id_1, state = GadgetState.Default }) then
			return -1
		end
	end
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_596022(context, evt)
	if 596011 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_596022(context, evt)
	local c_num_1 = ScriptLib.GetGroupVariableValue(context, "num_1")
	local c_num = c_num_1 +1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "num_1", c_num) then
	  return -1
	end
	
	if c_num == 7 then
		if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = defs.gadget_id_1, state = GadgetState.Default }) then
			return -1
		end
	end
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_596023(context, evt)
	if 596004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_596023(context, evt)
	local c_num_1 = ScriptLib.GetGroupVariableValue(context, "num_1")
	local c_num = c_num_1 +1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "num_1", c_num) then
	  return -1
	end
	
	if c_num == 7 then
		if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = defs.gadget_id_1, state = GadgetState.Default }) then
			return -1
		end
	end
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_596024(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133003596, 2)
	
	-- 将configid为 596002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 596002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为596003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 596003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end