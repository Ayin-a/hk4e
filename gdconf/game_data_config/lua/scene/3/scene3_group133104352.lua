-- 基础信息
local base_info = {
	group_id = 133104352
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
	{ config_id = 352001, gadget_id = 70360007, pos = { x = -70.980, y = 278.120, z = 237.926 }, rot = { x = 1.599, y = 359.923, z = 354.510 }, level = 19, area_id = 7 },
	{ config_id = 352002, gadget_id = 70211111, pos = { x = -69.097, y = 277.722, z = 235.253 }, rot = { x = 351.461, y = 347.703, z = 349.891 }, level = 16, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 7 },
	{ config_id = 352003, gadget_id = 70380002, pos = { x = -62.989, y = 278.650, z = 224.129 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, start_route = false, area_id = 7 },
	{ config_id = 352004, gadget_id = 70380002, pos = { x = -70.644, y = 282.104, z = 226.899 }, rot = { x = 0.000, y = 351.624, z = 0.000 }, level = 19, start_route = false, area_id = 7 },
	{ config_id = 352005, gadget_id = 70380002, pos = { x = -77.350, y = 285.670, z = 227.007 }, rot = { x = 0.000, y = 22.250, z = 0.000 }, level = 19, start_route = false, area_id = 7 },
	{ config_id = 352009, gadget_id = 70900201, pos = { x = -63.013, y = 279.484, z = 224.183 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 7 },
	{ config_id = 352010, gadget_id = 70900201, pos = { x = -70.662, y = 282.097, z = 226.830 }, rot = { x = 0.000, y = 351.624, z = 0.000 }, level = 19, area_id = 7 },
	{ config_id = 352011, gadget_id = 70900201, pos = { x = -77.341, y = 286.504, z = 227.071 }, rot = { x = 0.000, y = 22.250, z = 0.000 }, level = 19, area_id = 7 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1352006, name = "VARIABLE_CHANGE_352006", event = EventType.EVENT_VARIABLE_CHANGE, source = "count", condition = "condition_EVENT_VARIABLE_CHANGE_352006", action = "action_EVENT_VARIABLE_CHANGE_352006", trigger_count = 0 },
	{ config_id = 1352007, name = "GADGET_STATE_CHANGE_352007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_352007", action = "action_EVENT_GADGET_STATE_CHANGE_352007", trigger_count = 0 },
	{ config_id = 1352008, name = "GADGET_STATE_CHANGE_352008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_352008", action = "action_EVENT_GADGET_STATE_CHANGE_352008" },
	{ config_id = 1352015, name = "GADGET_STATE_CHANGE_352015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_352015", action = "action_EVENT_GADGET_STATE_CHANGE_352015", trigger_count = 0 },
	{ config_id = 1352018, name = "ANY_GADGET_DIE_352018", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_352018", action = "action_EVENT_ANY_GADGET_DIE_352018", trigger_count = 0 },
	{ config_id = 1352019, name = "ANY_GADGET_DIE_352019", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_352019", action = "action_EVENT_ANY_GADGET_DIE_352019", trigger_count = 0 },
	{ config_id = 1352020, name = "ANY_GADGET_DIE_352020", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_352020", action = "action_EVENT_ANY_GADGET_DIE_352020", trigger_count = 0 }
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
		gadgets = { 352001 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_352006", "GADGET_STATE_CHANGE_352007", "GADGET_STATE_CHANGE_352008", "GADGET_STATE_CHANGE_352015" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 352003, 352004, 352005 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_352018", "ANY_GADGET_DIE_352019", "ANY_GADGET_DIE_352020" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { 352009 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { },
		gadgets = { 352010 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { },
		gadgets = { 352011 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = suite_6,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = suite_7,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = suite_8,
		monsters = { },
		gadgets = { },
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
function condition_EVENT_VARIABLE_CHANGE_352006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count"为3
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_352006(context, evt)
	-- 创建id为352002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 352002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 352001 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 352001, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_352007(context, evt)
	if 352001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_352007(context, evt)
	-- 将本组内变量名为 "count" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "count", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104352, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104352, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104352, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104352, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_352008(context, evt)
	if 352002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_352008(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133104352, 8) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_352015(context, evt)
	if 352001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_352015(context, evt)
	-- 将本组内变量名为 "count" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "count", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104352, 2)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104352, 3)
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104352, 4)
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104352, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_352018(context, evt)
	if 352003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_352018(context, evt)
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104352, 3)
	
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_352019(context, evt)
	if 352004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_352019(context, evt)
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104352, 4)
	
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_352020(context, evt)
	if 352005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_352020(context, evt)
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104352, 5)
	
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end