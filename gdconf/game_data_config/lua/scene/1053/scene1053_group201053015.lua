-- 基础信息
local base_info = {
	group_id = 201053015
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 15001, monster_id = 20011101, pos = { x = -91.736, y = 117.568, z = 107.713 }, rot = { x = 0.000, y = 301.167, z = 0.000 }, level = 1 },
	{ config_id = 15002, monster_id = 20010901, pos = { x = -89.533, y = 117.566, z = 110.755 }, rot = { x = 0.000, y = 301.167, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 15004, gadget_id = 70220036, pos = { x = -95.962, y = 118.648, z = 111.402 }, rot = { x = 334.337, y = 111.552, z = 347.407 }, level = 1 },
	{ config_id = 15006, gadget_id = 70900201, pos = { x = -87.153, y = 117.508, z = 108.760 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 15009, gadget_id = 70900202, pos = { x = -96.696, y = 119.528, z = 111.998 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 15005, shape = RegionShape.SPHERE, radius = 12, pos = { x = -90.621, y = 117.538, z = 107.294 } }
}

-- 触发器
triggers = {
	{ config_id = 1015003, name = "ANY_MONSTER_DIE_15003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_15003", action = "action_EVENT_ANY_MONSTER_DIE_15003" },
	{ config_id = 1015005, name = "ENTER_REGION_15005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_15005", action = "action_EVENT_ENTER_REGION_15005" },
	{ config_id = 1015007, name = "ANY_GADGET_DIE_15007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_15007", action = "action_EVENT_ANY_GADGET_DIE_15007" },
	{ config_id = 1015008, name = "VARIABLE_CHANGE_15008", event = EventType.EVENT_VARIABLE_CHANGE, source = "deathCount", condition = "condition_EVENT_VARIABLE_CHANGE_15008", action = "action_EVENT_VARIABLE_CHANGE_15008" }
}

-- 变量
variables = {
	{ config_id = 1, name = "deathCount", value = 0, no_refresh = false }
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
		triggers = { },
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
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 15006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 15001, 15002 },
		gadgets = { 15004, 15009 },
		regions = { 15005 },
		triggers = { "ANY_MONSTER_DIE_15003", "ENTER_REGION_15005", "ANY_GADGET_DIE_15007", "VARIABLE_CHANGE_15008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_15003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_15003(context, evt)
	-- 针对当前group内变量名为 "deathCount" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "deathCount", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_15005(context, evt)
	if evt.param1 ~= 15005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_15005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201053015, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_15007(context, evt)
	if 15004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_15007(context, evt)
	-- 针对当前group内变量名为 "deathCount" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "deathCount", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 15009 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_15008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"deathCount"为2
	if ScriptLib.GetGroupVariableValue(context, "deathCount") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_15008(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 15006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 针对当前group内变量名为 "deathCount" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "deathCount", 1, 201053013) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end