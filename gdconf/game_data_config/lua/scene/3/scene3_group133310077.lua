-- 基础信息
local base_info = {
	group_id = 133310077
}

-- Trigger变量
local defs = {
	gadget_door = 77002
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
	{ config_id = 77001, gadget_id = 70330333, pos = { x = -2928.918, y = 266.492, z = 4848.830 }, rot = { x = 0.000, y = 27.561, z = 0.000 }, level = 32, persistent = true, area_id = 28 },
	{ config_id = 77002, gadget_id = 70330420, pos = { x = -2946.472, y = 269.607, z = 4843.909 }, rot = { x = 0.000, y = 74.838, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 28 },
	{ config_id = 77007, gadget_id = 70950134, pos = { x = -2928.875, y = 267.218, z = 4848.868 }, rot = { x = 0.000, y = 78.403, z = 0.000 }, level = 32, persistent = true, area_id = 28 }
}

-- 区域
regions = {
	{ config_id = 77003, shape = RegionShape.SPHERE, radius = 10, pos = { x = -2928.975, y = 266.626, z = 4848.830 }, area_id = 28 }
}

-- 触发器
triggers = {
	{ config_id = 1077003, name = "ENTER_REGION_77003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_77003", action = "action_EVENT_ENTER_REGION_77003", trigger_count = 0 },
	{ config_id = 1077004, name = "GADGETTALK_DONE_77004", event = EventType.EVENT_GADGETTALK_DONE, source = "6801603", condition = "", action = "action_EVENT_GADGETTALK_DONE_77004", trigger_count = 0 },
	{ config_id = 1077005, name = "TIME_AXIS_PASS_77005", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_77005", action = "action_EVENT_TIME_AXIS_PASS_77005" },
	{ config_id = 1077006, name = "GROUP_LOAD_77006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_77006", action = "action_EVENT_GROUP_LOAD_77006", trigger_count = 0 },
	{ config_id = 1077008, name = "QUEST_START_77008", event = EventType.EVENT_QUEST_START, source = "7319001", condition = "", action = "action_EVENT_QUEST_START_77008", trigger_count = 0 },
	{ config_id = 1077011, name = "GADGET_STATE_CHANGE_77011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_77011", action = "action_EVENT_GADGET_STATE_CHANGE_77011" }
}

-- 变量
variables = {
	{ config_id = 4, name = "quest_accept", value = 0, no_refresh = true }
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
		gadgets = { 77001, 77002, 77007 },
		regions = { 77003 },
		triggers = { "ENTER_REGION_77003", "GADGETTALK_DONE_77004", "TIME_AXIS_PASS_77005", "GROUP_LOAD_77006", "QUEST_START_77008", "GADGET_STATE_CHANGE_77011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_77003(context, evt)
	if evt.param1 ~= 77003 then return false end
	
	-- 判断变量"open_the_door"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "open_the_door", 133310023) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_77003(context, evt)
	
	if 0 ~= ScriptLib.SetGadgetTalkByConfigId(context, 133310077, 77007, 6801602) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_talk_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GADGETTALK_DONE_77004(context, evt)
	-- 创建标识为"open"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "open", {1}, false)
	
	ScriptLib.SetGadgetStateByConfigId(context, 77001, GadgetState.GearStart)
	
	ScriptLib.RemoveEntityByConfigId(context, 133310077, EntityType.GADGET, 77007 )
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_77005(context, evt)
	if "open" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_77005(context, evt)
	-- 将configid为 77002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 77002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 调用提示id为 7319009 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if ScriptLib.GetGroupVariableValue(context, "quest_accept") == 1 then
		ScriptLib.ShowReminder(context, 7319009)
	end
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_77006(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133310077, 77001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_77006(context, evt)
	-- 将configid为 77002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 77002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133310077, EntityType.GADGET, 77007 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_77008(context, evt)
	-- 将本组内变量名为 "quest_accept" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "quest_accept", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_77011(context, evt)
	if 77002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_77011(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 6103, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end