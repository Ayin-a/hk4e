-- 基础信息
local base_info = {
	group_id = 133220669
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
	{ config_id = 669001, gadget_id = 70500000, pos = { x = -2811.826, y = 190.263, z = -4058.793 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 9144, isOneoff = true, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 第一块：拾取后slabstone=1
	{ config_id = 1669002, name = "GATHER_669002", event = EventType.EVENT_GATHER, source = "", condition = "condition_EVENT_GATHER_669002", action = "action_EVENT_GATHER_669002", trigger_count = 0 },
	-- 第一块：当slabstone1=1的时候给290发消息
	{ config_id = 1669003, name = "VARIABLE_CHANGE_669003", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_669003", action = "action_EVENT_VARIABLE_CHANGE_669003", trigger_count = 0 },
	-- 第一块：保底load：当slabstone=1的时候给290发消息
	{ config_id = 1669004, name = "GROUP_LOAD_669004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_669004", action = "action_EVENT_GROUP_LOAD_669004", trigger_count = 0 },
	-- 第一块：任务09调取时改变变量
	{ config_id = 1669005, name = "QUEST_START_669005", event = EventType.EVENT_QUEST_START, source = "7219909", condition = "condition_EVENT_QUEST_START_669005", action = "action_EVENT_QUEST_START_669005", trigger_count = 0 },
	-- 第一块：任务23调取时改变变量
	{ config_id = 1669006, name = "QUEST_START_669006", event = EventType.EVENT_QUEST_START, source = "7219923", condition = "condition_EVENT_QUEST_START_669006", action = "action_EVENT_QUEST_START_669006", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "slabstone1", value = 0, no_refresh = true }
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
		gadgets = { 669001 },
		regions = { },
		triggers = { "GATHER_669002", "VARIABLE_CHANGE_669003", "GROUP_LOAD_669004", "QUEST_START_669005", "QUEST_START_669006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
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
function condition_EVENT_GATHER_669002(context, evt)
	if 669001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_669002(context, evt)
	-- 将本组内变量名为 "slabstone1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "slabstone1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_669003(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"slabstone1"为1
	if ScriptLib.GetGroupVariableValue(context, "slabstone1") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_669003(context, evt)
	-- 针对当前group内变量名为 "slabcount" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "slabcount", 1, 133220290) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_669004(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133220669}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_669004(context, evt)
	-- 将本组内变量名为 "slabstone1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "slabstone1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_669005(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133220669}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_669005(context, evt)
	-- 将本组内变量名为 "slabstone1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "slabstone1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_669006(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133220669}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_669006(context, evt)
	-- 将本组内变量名为 "slabstone1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "slabstone1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end