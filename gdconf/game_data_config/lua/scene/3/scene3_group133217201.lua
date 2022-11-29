-- 基础信息
local base_info = {
	group_id = 133217201
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
	{ config_id = 201001, gadget_id = 70220001, pos = { x = -4710.629, y = 214.195, z = -3724.720 }, rot = { x = 11.701, y = 0.000, z = 0.000 }, level = 1, area_id = 14 },
	{ config_id = 201002, gadget_id = 70220001, pos = { x = -4696.505, y = 214.102, z = -3722.437 }, rot = { x = 7.021, y = 313.461, z = 5.449 }, level = 1, area_id = 14 },
	{ config_id = 201003, gadget_id = 70220001, pos = { x = -4695.635, y = 215.121, z = -3725.945 }, rot = { x = 8.460, y = 2.419, z = 354.129 }, level = 1, area_id = 14 },
	{ config_id = 201004, gadget_id = 70220001, pos = { x = -4706.387, y = 214.478, z = -3726.156 }, rot = { x = 12.287, y = 0.000, z = 356.425 }, level = 1, area_id = 14 },
	{ config_id = 201005, gadget_id = 70220001, pos = { x = -4696.908, y = 215.407, z = -3727.377 }, rot = { x = 1.061, y = 0.000, z = 357.213 }, level = 1, area_id = 14 },
	{ config_id = 201006, gadget_id = 70300118, pos = { x = -4711.027, y = 214.137, z = -3724.350 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 14 },
	{ config_id = 201007, gadget_id = 70300118, pos = { x = -4696.403, y = 214.135, z = -3722.442 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 14 },
	{ config_id = 201008, gadget_id = 70300118, pos = { x = -4695.541, y = 215.125, z = -3725.900 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 14 },
	{ config_id = 201009, gadget_id = 70300118, pos = { x = -4706.292, y = 214.489, z = -3726.167 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 14 },
	{ config_id = 201010, gadget_id = 70300118, pos = { x = -4696.862, y = 215.411, z = -3727.359 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1201011, name = "ANY_GADGET_DIE_201011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_201011", action = "action_EVENT_ANY_GADGET_DIE_201011", trigger_count = 0 },
	{ config_id = 1201012, name = "ANY_GADGET_DIE_201012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_201012", action = "action_EVENT_ANY_GADGET_DIE_201012", trigger_count = 0 },
	{ config_id = 1201013, name = "ANY_GADGET_DIE_201013", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_201013", action = "action_EVENT_ANY_GADGET_DIE_201013", trigger_count = 0 },
	{ config_id = 1201014, name = "ANY_GADGET_DIE_201014", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_201014", action = "action_EVENT_ANY_GADGET_DIE_201014", trigger_count = 0 },
	{ config_id = 1201015, name = "ANY_GADGET_DIE_201015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_201015", action = "action_EVENT_ANY_GADGET_DIE_201015", trigger_count = 0 }
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
		gadgets = { 201001, 201002, 201003, 201004, 201005, 201006, 201007, 201008, 201009, 201010 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_201011", "ANY_GADGET_DIE_201012", "ANY_GADGET_DIE_201013", "ANY_GADGET_DIE_201014", "ANY_GADGET_DIE_201015" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_201011(context, evt)
	if 201001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_201011(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133217201, EntityType.GADGET, 201006 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133217201") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_201012(context, evt)
	if 201002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_201012(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133217201, EntityType.GADGET, 201007 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133217201") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_201013(context, evt)
	if 201003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_201013(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133217201, EntityType.GADGET, 201008 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133217201") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_201014(context, evt)
	if 201004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_201014(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133217201, EntityType.GADGET, 201009 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133217201") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_201015(context, evt)
	if 201005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_201015(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133217201, EntityType.GADGET, 201010 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133217201") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end