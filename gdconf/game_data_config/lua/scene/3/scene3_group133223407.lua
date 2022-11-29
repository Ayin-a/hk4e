-- 基础信息
local base_info = {
	group_id = 133223407
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
	{ config_id = 407001, gadget_id = 70290161, pos = { x = -5997.353, y = 179.179, z = -2700.187 }, rot = { x = 0.000, y = 46.445, z = 0.000 }, level = 33, persistent = true, area_id = 18 },
	-- 交付A
	{ config_id = 407002, gadget_id = 70310098, pos = { x = -5996.466, y = 173.734, z = -2698.879 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, persistent = true, interact_id = 46, area_id = 18 },
	{ config_id = 407004, gadget_id = 70290161, pos = { x = -5998.145, y = 179.415, z = -2690.068 }, rot = { x = 0.000, y = 112.556, z = 0.000 }, level = 33, persistent = true, area_id = 18 },
	-- 交付B
	{ config_id = 407005, gadget_id = 70310098, pos = { x = -5996.800, y = 173.407, z = -2690.657 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, persistent = true, interact_id = 46, area_id = 18 },
	{ config_id = 407007, gadget_id = 70290161, pos = { x = -5985.856, y = 179.636, z = -2686.357 }, rot = { x = 0.000, y = 199.331, z = 0.000 }, level = 33, persistent = true, area_id = 18 },
	-- 交付C
	{ config_id = 407008, gadget_id = 70310098, pos = { x = -5985.973, y = 173.526, z = -2687.384 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, persistent = true, interact_id = 46, area_id = 18 },
	{ config_id = 407011, gadget_id = 70211111, pos = { x = -5993.136, y = 173.407, z = -2692.854 }, rot = { x = 0.000, y = 119.789, z = 0.000 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 交付1完成
	{ config_id = 1407003, name = "GADGET_STATE_CHANGE_407003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_407003", action = "action_EVENT_GADGET_STATE_CHANGE_407003" },
	-- 交付2完成
	{ config_id = 1407006, name = "GADGET_STATE_CHANGE_407006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_407006", action = "action_EVENT_GADGET_STATE_CHANGE_407006" },
	-- 交付3完成
	{ config_id = 1407009, name = "GADGET_STATE_CHANGE_407009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_407009", action = "action_EVENT_GADGET_STATE_CHANGE_407009" },
	-- 完成
	{ config_id = 1407010, name = "VARIABLE_CHANGE_407010", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_407010", action = "action_EVENT_VARIABLE_CHANGE_407010", trigger_count = 0 },
	{ config_id = 1407012, name = "GROUP_LOAD_407012", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_407012", action = "action_EVENT_GROUP_LOAD_407012", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "finish_progress", value = 0, no_refresh = true }
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
		gadgets = { 407002, 407005, 407008 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_407003", "GADGET_STATE_CHANGE_407006", "GADGET_STATE_CHANGE_407009", "VARIABLE_CHANGE_407010", "GROUP_LOAD_407012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_407003(context, evt)
	if 407002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_407003(context, evt)
	-- 针对当前group内变量名为 "finish_progress" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "finish_progress", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 创建id为407001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 407001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_407006(context, evt)
	if 407005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_407006(context, evt)
	-- 针对当前group内变量名为 "finish_progress" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "finish_progress", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 创建id为407004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 407004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_407009(context, evt)
	if 407008 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_407009(context, evt)
	-- 针对当前group内变量名为 "finish_progress" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "finish_progress", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 创建id为407007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 407007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_407010(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"finish_progress"为3
	if ScriptLib.GetGroupVariableValue(context, "finish_progress") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_407010(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "HG_Mural_Finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 创建id为407011的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 407011 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 针对当前group内变量名为 "progress" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "progress", 1, 133223503) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133223009, 1)
	
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133223046, 1)
	
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133223101, 1)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_407012(context, evt)
	-- 判断变量"finish_progress"为3
	if ScriptLib.GetGroupVariableValue(context, "finish_progress") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_407012(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "HG_Mural_Finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end