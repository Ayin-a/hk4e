-- 基础信息
local base_info = {
	group_id = 133309280
}

-- Trigger变量
local defs = {
	interactOptionID = 430,
	gadget_fireTorch = 280002,
	gadget_fireBase1 = 280001,
	gadget_fire1 = 280003,
	gadget_fireBase2 = 0,
	gadget_fire2 = 0,
	gadget_fireBase3 = 0,
	gadget_fire3 = 0,
	gadget_fireBase4 = 0,
	gadget_fire4 = 0
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
	-- 1号基座
	{ config_id = 280001, gadget_id = 70330279, pos = { x = -2389.286, y = 203.591, z = 5573.525 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 27 },
	{ config_id = 280002, gadget_id = 70330278, pos = { x = -2358.300, y = 186.091, z = 5552.500 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 27 },
	-- 1号火种
	{ config_id = 280003, gadget_id = 70330257, pos = { x = -2389.286, y = 205.399, z = 5573.525 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, route_id = 330900102, persistent = true, area_id = 27 },
	{ config_id = 280004, gadget_id = 70330282, pos = { x = -2383.790, y = 203.927, z = 5572.958 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, persistent = true, server_global_value_config = {SGV_ChiWangLevelRequire = 2}, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 释放火种
	{ config_id = 1280005, name = "GADGET_STATE_CHANGE_280005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_280005", action = "action_EVENT_GADGET_STATE_CHANGE_280005" },
	-- 释放火种
	{ config_id = 1280006, name = "GROUP_LOAD_280006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_280006", action = "action_EVENT_GROUP_LOAD_280006", trigger_count = 0 },
	-- 玩法完成
	{ config_id = 1280007, name = "GADGET_STATE_CHANGE_280007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_280007", action = "action_EVENT_GADGET_STATE_CHANGE_280007" },
	-- 保底
	{ config_id = 1280008, name = "GROUP_LOAD_280008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_280008", action = "action_EVENT_GROUP_LOAD_280008", trigger_count = 0 },
	-- 玩法开始埋点
	{ config_id = 1280009, name = "GADGET_STATE_CHANGE_280009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_280009", action = "action_EVENT_GADGET_STATE_CHANGE_280009" }
}

-- 变量
variables = {
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
		gadgets = { 280001, 280002, 280004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_280005", "GROUP_LOAD_280006", "GADGET_STATE_CHANGE_280007", "GROUP_LOAD_280008", "GADGET_STATE_CHANGE_280009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_280005(context, evt)
	if 280001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_280005(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 280004 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将本组内变量名为 "reminder1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "reminder1", 1, 133309495) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_280006(context, evt)
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133309280, 280001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_280006(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 280004 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_280007(context, evt)
	if 280002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_280007(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7305409") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 针对当前group内变量名为 "reminder2" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "reminder2", 1, 133309495) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_280008(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133309280, 280002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_280008(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7305409") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_280009(context, evt)
	if 280001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_280009(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

require "BlackBoxPlay/DesertEnergySpark"