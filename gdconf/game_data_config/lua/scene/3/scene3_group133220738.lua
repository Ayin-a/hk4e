-- 基础信息
local base_info = {
	group_id = 133220738
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
	{ config_id = 738001, gadget_id = 70900394, pos = { x = -2932.009, y = 208.116, z = -4166.048 }, rot = { x = 2.791, y = 11.485, z = 359.632 }, level = 27, persistent = true, area_id = 11 },
	{ config_id = 738002, gadget_id = 70380281, pos = { x = -2931.498, y = 208.048, z = -4165.482 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, interact_id = 100, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1738003, name = "QUEST_START_738003", event = EventType.EVENT_QUEST_START, source = "7228202", condition = "", action = "action_EVENT_QUEST_START_738003", trigger_count = 0 },
	{ config_id = 1738004, name = "GADGET_STATE_CHANGE_738004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_738004", action = "action_EVENT_GADGET_STATE_CHANGE_738004", trigger_count = 0 },
	{ config_id = 1738005, name = "GROUP_LOAD_738005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_738005", action = "action_EVENT_GROUP_LOAD_738005", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "katana", value = 0, no_refresh = true }
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
		gadgets = { },
		regions = { },
		triggers = { "QUEST_START_738003", "GADGET_STATE_CHANGE_738004", "GROUP_LOAD_738005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_START_738003(context, evt)
	-- 创建id为738002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 738002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_738004(context, evt)
	if 738002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_738004(context, evt)
	-- 将本组内变量名为 "katana" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "katana", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "fin_7228202") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 创建id为738001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 738001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_738005(context, evt)
	-- 判断变量"katana"为1
	if ScriptLib.GetGroupVariableValue(context, "katana") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_738005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "fin_7228202") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end