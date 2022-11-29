-- 基础信息
local base_info = {
	group_id = 133220690
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
	{ config_id = 690001, gadget_id = 70710518, pos = { x = -2702.674, y = 238.629, z = -4561.885 }, rot = { x = 353.061, y = 62.636, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 690002, gadget_id = 70710518, pos = { x = -2698.628, y = 239.237, z = -4562.767 }, rot = { x = 355.199, y = 118.778, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 690003, gadget_id = 70710518, pos = { x = -2691.689, y = 240.128, z = -4566.608 }, rot = { x = 0.000, y = 290.732, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 690004, gadget_id = 70710518, pos = { x = -2687.805, y = 240.915, z = -4566.218 }, rot = { x = 346.082, y = 54.783, z = 4.410 }, level = 1, area_id = 11 },
	{ config_id = 690010, gadget_id = 70710534, pos = { x = -2702.674, y = 238.629, z = -4561.885 }, rot = { x = 353.061, y = 62.636, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 690011, gadget_id = 70710534, pos = { x = -2698.628, y = 239.237, z = -4562.767 }, rot = { x = 355.199, y = 118.778, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 690012, gadget_id = 70710534, pos = { x = -2691.689, y = 240.128, z = -4566.608 }, rot = { x = 0.000, y = 290.733, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 690013, gadget_id = 70710534, pos = { x = -2687.805, y = 240.915, z = -4566.218 }, rot = { x = 346.082, y = 54.783, z = 4.410 }, level = 1, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1690005, name = "GADGET_STATE_CHANGE_690005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_690005", action = "action_EVENT_GADGET_STATE_CHANGE_690005" },
	{ config_id = 1690006, name = "GADGET_STATE_CHANGE_690006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_690006", action = "action_EVENT_GADGET_STATE_CHANGE_690006" },
	{ config_id = 1690007, name = "GADGET_STATE_CHANGE_690007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_690007", action = "action_EVENT_GADGET_STATE_CHANGE_690007" },
	{ config_id = 1690008, name = "GADGET_STATE_CHANGE_690008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_690008", action = "action_EVENT_GADGET_STATE_CHANGE_690008" },
	-- 任务完成判断
	{ config_id = 1690009, name = "VARIABLE_CHANGE_690009", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_690009", action = "action_EVENT_VARIABLE_CHANGE_690009", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "Var_1", value = 0, no_refresh = false },
	{ config_id = 2, name = "Var_2", value = 0, no_refresh = false },
	{ config_id = 3, name = "Var_3", value = 0, no_refresh = false },
	{ config_id = 4, name = "Var_4", value = 0, no_refresh = false }
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
		gadgets = { 690010, 690011, 690012, 690013 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 690001, 690002, 690003, 690004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_690005", "GADGET_STATE_CHANGE_690006", "GADGET_STATE_CHANGE_690007", "GADGET_STATE_CHANGE_690008", "VARIABLE_CHANGE_690009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_690005(context, evt)
	if 690001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_690005(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133220690, EntityType.GADGET, 690001 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 将本组内变量名为 "Var_1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Var_1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_690006(context, evt)
	if 690002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_690006(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133220690, EntityType.GADGET, 690002 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 将本组内变量名为 "Var_2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Var_2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_690007(context, evt)
	if 690003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_690007(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133220690, EntityType.GADGET, 690003 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 将本组内变量名为 "Var_3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Var_3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_690008(context, evt)
	if 690004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_690008(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133220690, EntityType.GADGET, 690004 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 将本组内变量名为 "Var_4" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Var_4", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_690009(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133220690}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_690009(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133220690") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end