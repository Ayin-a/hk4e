-- 基础信息
local base_info = {
	group_id = 133220670
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
	{ config_id = 670001, gadget_id = 70500000, pos = { x = -2124.947, y = 161.767, z = -4381.048 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 9145, isOneoff = true, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 第二块：拾取后slabstone2=1
	{ config_id = 1670002, name = "GATHER_670002", event = EventType.EVENT_GATHER, source = "", condition = "condition_EVENT_GATHER_670002", action = "action_EVENT_GATHER_670002", trigger_count = 0 },
	-- 第二块：当slabcount2=1的时候给290发消息
	{ config_id = 1670003, name = "VARIABLE_CHANGE_670003", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_670003", action = "action_EVENT_VARIABLE_CHANGE_670003", trigger_count = 0 },
	-- 第二块：load保底：当slabstone2=1的时候给290发消息
	{ config_id = 1670004, name = "GROUP_LOAD_670004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_670004", action = "action_EVENT_GROUP_LOAD_670004", trigger_count = 0 },
	-- 第二块：09发消息
	{ config_id = 1670005, name = "QUEST_START_670005", event = EventType.EVENT_QUEST_START, source = "7219909", condition = "condition_EVENT_QUEST_START_670005", action = "action_EVENT_QUEST_START_670005", trigger_count = 0 },
	-- 第二块：23发消息
	{ config_id = 1670006, name = "QUEST_START_670006", event = EventType.EVENT_QUEST_START, source = "7219923", condition = "condition_EVENT_QUEST_START_670006", action = "action_EVENT_QUEST_START_670006", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "slabstone2", value = 0, no_refresh = true }
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
		gadgets = { 670001 },
		regions = { },
		triggers = { "GATHER_670002", "VARIABLE_CHANGE_670003", "GROUP_LOAD_670004", "QUEST_START_670005", "QUEST_START_670006" },
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
function condition_EVENT_GATHER_670002(context, evt)
	if 670001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_670002(context, evt)
	-- 将本组内变量名为 "slabstone2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "slabstone2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_670003(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"slabstone2"为1
	if ScriptLib.GetGroupVariableValue(context, "slabstone2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_670003(context, evt)
	-- 针对当前group内变量名为 "slabcount" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "slabcount", 1, 133220290) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_670004(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133220670}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_670004(context, evt)
	-- 将本组内变量名为 "slabstone2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "slabstone2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_670005(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133220670}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_670005(context, evt)
	-- 将本组内变量名为 "slabstone2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "slabstone2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_670006(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133220670}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_670006(context, evt)
	-- 将本组内变量名为 "slabstone2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "slabstone2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end