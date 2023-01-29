-- 基础信息
local base_info = {
	group_id = 133307015
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
	{ config_id = 15001, gadget_id = 70290820, pos = { x = -1707.490, y = 21.000, z = 5676.035 }, rot = { x = 0.000, y = 240.000, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 第一次触摸
	{ config_id = 1015003, name = "QUEST_START_15003", event = EventType.EVENT_QUEST_START, source = "7321912", condition = "condition_EVENT_QUEST_START_15003", action = "action_EVENT_QUEST_START_15003", trigger_count = 0 },
	-- 第一次触摸
	{ config_id = 1015004, name = "SELECT_OPTION_15004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_15004", action = "action_EVENT_SELECT_OPTION_15004", trigger_count = 0 },
	{ config_id = 1015005, name = "QUEST_START_15005", event = EventType.EVENT_QUEST_START, source = "7321929", condition = "condition_EVENT_QUEST_START_15005", action = "action_EVENT_QUEST_START_15005", trigger_count = 0 },
	{ config_id = 1015006, name = "SELECT_OPTION_15006", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_15006", action = "action_EVENT_SELECT_OPTION_15006", trigger_count = 0 }
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
		gadgets = { 15001 },
		regions = { },
		triggers = { "QUEST_START_15003", "SELECT_OPTION_15004", "QUEST_START_15005", "SELECT_OPTION_15006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_QUEST_START_15003(context, evt)
	local curQuestState = ScriptLib.GetHostQuestState(context,7321912)
	if -1 == curQuestState or 0 == curQuestState then
	  return false
	end
	if curQuestState ~= 2 then
	   return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_15003(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133307015, 15001, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_15004(context, evt)
	-- 判断是gadgetid 15001 option_id 7
	if 15001 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133307015, 15001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_15004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7321912") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 删除指定group： 133307015 ；指定config：15001；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133307015, 15001, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_15005(context, evt)
	local curQuestState = ScriptLib.GetHostQuestState(context,7321929)
	if -1 == curQuestState or 0 == curQuestState then
	  return false
	end
	if curQuestState ~= 2 then
	   return false
	end
	
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133307015, 15001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_15005(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133307015, 15001, {24}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_15006(context, evt)
	-- 判断是gadgetid 15001 option_id 24
	if 15001 ~= evt.param1 then
		return false	
	end
	
	if 24 ~= evt.param2 then
		return false
	end
	
	
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133307015, 15001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_15006(context, evt)
	-- 将configid为 15001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 15001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133307015 ；指定config：15001；物件身上指定option：24；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133307015, 15001, 24) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end