-- 基础信息
local base_info = {
	group_id = 201017014
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 14001, monster_id = 20011501, pos = { x = -104.826, y = 111.802, z = 29.970 }, rot = { x = 0.000, y = 301.167, z = 0.000 }, level = 1 },
	{ config_id = 14002, monster_id = 20011501, pos = { x = -104.314, y = 111.749, z = 37.565 }, rot = { x = 0.000, y = 301.167, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 14004, gadget_id = 70220036, pos = { x = -110.730, y = 112.600, z = 32.209 }, rot = { x = 305.707, y = 85.638, z = 349.994 }, level = 1 },
	{ config_id = 14006, gadget_id = 70900201, pos = { x = -101.001, y = 111.722, z = 34.250 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 14009, gadget_id = 70900202, pos = { x = -112.339, y = 112.541, z = 32.936 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 14005, shape = RegionShape.SPHERE, radius = 12, pos = { x = -101.157, y = 111.824, z = 34.104 } }
}

-- 触发器
triggers = {
	{ config_id = 1014003, name = "ANY_MONSTER_DIE_14003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_14003", action = "action_EVENT_ANY_MONSTER_DIE_14003" },
	{ config_id = 1014005, name = "ENTER_REGION_14005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_14005", action = "action_EVENT_ENTER_REGION_14005" },
	{ config_id = 1014007, name = "ANY_GADGET_DIE_14007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_14007", action = "action_EVENT_ANY_GADGET_DIE_14007" },
	{ config_id = 1014008, name = "VARIABLE_CHANGE_14008", event = EventType.EVENT_VARIABLE_CHANGE, source = "deathCount", condition = "condition_EVENT_VARIABLE_CHANGE_14008", action = "action_EVENT_VARIABLE_CHANGE_14008" }
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
		gadgets = { 14006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 14001, 14002 },
		gadgets = { 14004, 14009 },
		regions = { 14005 },
		triggers = { "ANY_MONSTER_DIE_14003", "ENTER_REGION_14005", "ANY_GADGET_DIE_14007", "VARIABLE_CHANGE_14008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_14003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_14003(context, evt)
	-- 针对当前group内变量名为 "deathCount" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "deathCount", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_14005(context, evt)
	if evt.param1 ~= 14005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_14005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201017014, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_14007(context, evt)
	if 14004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_14007(context, evt)
	-- 针对当前group内变量名为 "deathCount" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "deathCount", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 14009 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_14008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"deathCount"为2
	if ScriptLib.GetGroupVariableValue(context, "deathCount") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_14008(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 14006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 针对当前group内变量名为 "deathCount" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "deathCount", 1, 201017013) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end