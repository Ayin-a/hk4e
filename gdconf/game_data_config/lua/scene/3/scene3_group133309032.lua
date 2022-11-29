-- 基础信息
local base_info = {
	group_id = 133309032
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
	{ config_id = 32001, gadget_id = 70360001, pos = { x = -2345.321, y = -265.038, z = 5546.555 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 27 },
	{ config_id = 32002, gadget_id = 70330268, pos = { x = -2345.300, y = -249.560, z = 5533.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 激活元能火炬，添加操作台
	{ config_id = 1032003, name = "QUEST_START_32003", event = EventType.EVENT_QUEST_START, source = "7308316", condition = "", action = "action_EVENT_QUEST_START_32003", trigger_count = 0 },
	-- 操作激活
	{ config_id = 1032005, name = "SELECT_OPTION_32005", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_32005", action = "action_EVENT_SELECT_OPTION_32005", trigger_count = 0 },
	{ config_id = 1032006, name = "GROUP_LOAD_32006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_32006", action = "action_EVENT_GROUP_LOAD_32006", trigger_count = 0 },
	-- CS完成，去掉热点
	{ config_id = 1032008, name = "QUEST_START_32008", event = EventType.EVENT_QUEST_START, source = "7308317", condition = "", action = "action_EVENT_QUEST_START_32008", trigger_count = 0 },
	{ config_id = 1032009, name = "GROUP_LOAD_32009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_32009", action = "action_EVENT_GROUP_LOAD_32009", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "queststart", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 32010, gadget_id = 70330467, pos = { x = -2345.399, y = -267.249, z = 5552.825 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 }
	},
	triggers = {
		{ config_id = 1032004, name = "GADGET_CREATE_32004", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_32004", action = "action_EVENT_GADGET_CREATE_32004", trigger_count = 0 },
		{ config_id = 1032007, name = "VARIABLE_CHANGE_32007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_32007", action = "action_EVENT_VARIABLE_CHANGE_32007" },
		{ config_id = 1032011, name = "QUEST_START_32011", event = EventType.EVENT_QUEST_START, source = "7308328", condition = "", action = "action_EVENT_QUEST_START_32011", trigger_count = 0 }
	}
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
		gadgets = { 32001, 32002 },
		regions = { },
		triggers = { "QUEST_START_32003", "SELECT_OPTION_32005", "GROUP_LOAD_32006", "QUEST_START_32008", "GROUP_LOAD_32009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_START_32003(context, evt)
	-- 将本组内变量名为 "queststart" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "queststart", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133309032, 32001, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_32005(context, evt)
	-- 判断是gadgetid 32001 option_id 7
	if 32001 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_32005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7308316") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 删除指定group： 133309032 ；指定config：32001；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133309032, 32001, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_32006(context, evt)
	-- 判断变量"queststart"为1
	if ScriptLib.GetGroupVariableValue(context, "queststart") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_32006(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133309032, 32001, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_32008(context, evt)
	ScriptLib.SetGroupVariableValue(context, "queststart", 2)
	
	ScriptLib.SetGadgetStateByConfigId(context, 32002, GadgetState.GearStart) 
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_32009(context, evt)
	-- 判断变量"queststart"为2
	if ScriptLib.GetGroupVariableValue(context, "queststart") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_32009(context, evt)
	-- 将configid为 32002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 32002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end