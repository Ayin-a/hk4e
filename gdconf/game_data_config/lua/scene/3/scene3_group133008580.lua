-- 基础信息
local base_info = {
	group_id = 133008580
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 580001, monster_id = 28020601, pos = { x = 1167.344, y = 269.260, z = -527.700 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "走兽", climate_area_id = 1, area_id = 10 },
	{ config_id = 580002, monster_id = 28050103, pos = { x = 1166.813, y = 269.781, z = -527.672 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "魔法生物", climate_area_id = 1, area_id = 10 },
	{ config_id = 580003, monster_id = 28050103, pos = { x = 1167.443, y = 270.063, z = -527.653 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "魔法生物", climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 580004, gadget_id = 70360001, pos = { x = 1167.193, y = 269.334, z = -527.921 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 580005, gadget_id = 70360102, pos = { x = 1167.267, y = 269.051, z = -527.893 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 580006, gadget_id = 70210101, pos = { x = 1167.286, y = 269.214, z = -528.049 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损蒙德", isOneoff = true, persistent = true, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1580007, name = "ANY_GADGET_DIE_580007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_580007", action = "action_EVENT_ANY_GADGET_DIE_580007" },
	{ config_id = 1580008, name = "GADGET_CREATE_580008", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_580008", action = "action_EVENT_GADGET_CREATE_580008" },
	{ config_id = 1580009, name = "ANY_GADGET_DIE_580009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_580009", action = "action_EVENT_ANY_GADGET_DIE_580009" },
	{ config_id = 1580010, name = "ANY_GADGET_DIE_580010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_580010", action = "action_EVENT_ANY_GADGET_DIE_580010" },
	{ config_id = 1580011, name = "ANY_GADGET_DIE_580011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_580011", action = "action_EVENT_ANY_GADGET_DIE_580011" }
}

-- 变量
variables = {
	{ config_id = 1, name = "progress", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 5,
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
		gadgets = { 580005 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_580007", "ANY_GADGET_DIE_580009", "ANY_GADGET_DIE_580010", "ANY_GADGET_DIE_580011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 580001 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 580002, 580003 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 580006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 580004 },
		regions = { },
		triggers = { "GADGET_CREATE_580008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_580007(context, evt)
	if 580005 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"progress"为0
	if ScriptLib.GetGroupVariableValueByGroup(context, "progress", 133008580) ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_580007(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133008580, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 针对当前group内变量名为 "progress" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "progress", 1, 133008579) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 针对当前group内变量名为 "progress" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "progress", 1, 133008580) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 针对当前group内变量名为 "progress" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "progress", 1, 133008581) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 针对当前group内变量名为 "progress" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "progress", 1, 133008582) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_580008(context, evt)
	if 580004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_580008(context, evt)
	-- 将本组内变量名为 "index" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "index", 2, 133008583) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_580009(context, evt)
	if 580005 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"progress"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "progress", 133008580) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_580009(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133008580, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 针对当前group内变量名为 "progress" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "progress", 1, 133008579) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 针对当前group内变量名为 "progress" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "progress", 1, 133008580) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 针对当前group内变量名为 "progress" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "progress", 1, 133008581) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 针对当前group内变量名为 "progress" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "progress", 1, 133008582) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_580010(context, evt)
	if 580005 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"progress"为2
	if ScriptLib.GetGroupVariableValueByGroup(context, "progress", 133008580) ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_580010(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133008580, 4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 针对当前group内变量名为 "progress" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "progress", 1, 133008579) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 针对当前group内变量名为 "progress" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "progress", 1, 133008580) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 针对当前group内变量名为 "progress" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "progress", 1, 133008581) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 针对当前group内变量名为 "progress" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "progress", 1, 133008582) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_580011(context, evt)
	if 580005 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"progress"为3
	if ScriptLib.GetGroupVariableValueByGroup(context, "progress", 133008580) ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_580011(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133008580, 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 针对当前group内变量名为 "progress" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "progress", 1, 133008579) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 针对当前group内变量名为 "progress" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "progress", 1, 133008580) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 针对当前group内变量名为 "progress" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "progress", 1, 133008581) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 针对当前group内变量名为 "progress" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "progress", 1, 133008582) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end