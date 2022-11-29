-- 基础信息
local base_info = {
	group_id = 133220671
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
	{ config_id = 671001, gadget_id = 70500000, pos = { x = -2471.951, y = 200.081, z = -4679.061 }, rot = { x = 0.000, y = 140.100, z = 0.000 }, level = 27, point_type = 9146, isOneoff = true, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 第三块：拾取后slabstone3=1
	{ config_id = 1671002, name = "GATHER_671002", event = EventType.EVENT_GATHER, source = "", condition = "condition_EVENT_GATHER_671002", action = "action_EVENT_GATHER_671002", trigger_count = 0 },
	-- 第三块：当slabstone3=1的时候给290发消息
	{ config_id = 1671003, name = "VARIABLE_CHANGE_671003", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_671003", action = "action_EVENT_VARIABLE_CHANGE_671003", trigger_count = 0 },
	{ config_id = 1671004, name = "GROUP_LOAD_671004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_671004", action = "action_EVENT_GROUP_LOAD_671004", trigger_count = 0 },
	-- 09
	{ config_id = 1671005, name = "QUEST_START_671005", event = EventType.EVENT_QUEST_START, source = "7219909", condition = "condition_EVENT_QUEST_START_671005", action = "action_EVENT_QUEST_START_671005", trigger_count = 0 },
	-- 23
	{ config_id = 1671006, name = "QUEST_START_671006", event = EventType.EVENT_QUEST_START, source = "7219923", condition = "condition_EVENT_QUEST_START_671006", action = "action_EVENT_QUEST_START_671006", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "slabstone3", value = 0, no_refresh = true }
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
		gadgets = { 671001 },
		regions = { },
		triggers = { "GATHER_671002", "VARIABLE_CHANGE_671003", "GROUP_LOAD_671004", "QUEST_START_671005", "QUEST_START_671006" },
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
function condition_EVENT_GATHER_671002(context, evt)
	if 671001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_671002(context, evt)
	-- 将本组内变量名为 "slabstone3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "slabstone3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_671003(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"slabstone3"为1
	if ScriptLib.GetGroupVariableValue(context, "slabstone3") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_671003(context, evt)
	-- 针对当前group内变量名为 "slabcount" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "slabcount", 1, 133220290) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_671004(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133220671}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_671004(context, evt)
	-- 将本组内变量名为 "slabstone3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "slabstone3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_671005(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133220671}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_671005(context, evt)
	-- 将本组内变量名为 "slabstone3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "slabstone3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_671006(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133220671}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_671006(context, evt)
	-- 将本组内变量名为 "slabstone3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "slabstone3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end