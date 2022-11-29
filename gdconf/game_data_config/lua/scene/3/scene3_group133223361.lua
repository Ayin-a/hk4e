-- 基础信息
local base_info = {
	group_id = 133223361
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 361009, monster_id = 20010501, pos = { x = -6276.324, y = 222.154, z = -2947.115 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_id = 1000100, climate_area_id = 7, area_id = 18 },
	{ config_id = 361010, monster_id = 20010501, pos = { x = -6279.470, y = 221.598, z = -2941.101 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_id = 1000100, climate_area_id = 7, area_id = 18 },
	{ config_id = 361011, monster_id = 20010501, pos = { x = -6273.184, y = 223.639, z = -2944.006 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_id = 1000100, climate_area_id = 7, area_id = 18 },
	{ config_id = 361012, monster_id = 20010601, pos = { x = -6277.951, y = 221.929, z = -2943.721 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_id = 1000100, climate_area_id = 7, area_id = 18 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 361001, gadget_id = 70220089, pos = { x = -6253.522, y = 232.848, z = -2954.664 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 18 },
	{ config_id = 361005, gadget_id = 70220091, pos = { x = -6278.052, y = 223.764, z = -2946.550 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 18 },
	{ config_id = 361014, gadget_id = 70220089, pos = { x = -6248.868, y = 233.291, z = -2948.857 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 18 }
}

-- 区域
regions = {
	-- 伏击怪
	{ config_id = 361008, shape = RegionShape.SPHERE, radius = 8, pos = { x = -6277.854, y = 222.044, z = -2947.316 }, area_id = 18 }
}

-- 触发器
triggers = {
	{ config_id = 1361003, name = "ANY_GADGET_DIE_361003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_361003", action = "action_EVENT_ANY_GADGET_DIE_361003" },
	{ config_id = 1361006, name = "ANY_GADGET_DIE_361006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_361006", action = "action_EVENT_ANY_GADGET_DIE_361006" },
	-- 伏击怪
	{ config_id = 1361008, name = "ENTER_REGION_361008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_361008", action = "action_EVENT_ENTER_REGION_361008" },
	{ config_id = 1361015, name = "ANY_GADGET_DIE_361015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_361015", action = "action_EVENT_ANY_GADGET_DIE_361015" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 361002, gadget_id = 70330114, pos = { x = -6251.221, y = 231.866, z = -2948.186 }, rot = { x = 14.487, y = 270.855, z = 287.365 }, level = 1, area_id = 18 }
	},
	triggers = {
		{ config_id = 1361004, name = "GROUP_LOAD_361004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_361004", action = "action_EVENT_GROUP_LOAD_361004", trigger_count = 0 },
		{ config_id = 1361007, name = "ANY_GADGET_DIE_361007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_361007" }
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
		gadgets = { 361001, 361005, 361014 },
		regions = { 361008 },
		triggers = { "ANY_GADGET_DIE_361003", "ANY_GADGET_DIE_361006", "ENTER_REGION_361008", "ANY_GADGET_DIE_361015" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 无掉落,
		monsters = { 361009, 361010, 361011, 361012 },
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
function condition_EVENT_ANY_GADGET_DIE_361003(context, evt)
	if 361001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_361003(context, evt)
	-- 针对当前group内变量名为 "EnergyBall_Succ_Count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "EnergyBall_Succ_Count", 1, 133223001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 针对当前group内变量名为 "group_1_progress" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "group_1_progress", 1, 133223500) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_361006(context, evt)
	if 361005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_361006(context, evt)
	-- 针对当前group内变量名为 "EnergyBall_Succ_Count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "EnergyBall_Succ_Count", 1, 133223001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 针对当前group内变量名为 "group_1_progress" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "group_1_progress", 1, 133223500) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_361008(context, evt)
	if evt.param1 ~= 361008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_361008(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133223361, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_361015(context, evt)
	if 361014 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_361015(context, evt)
	-- 针对当前group内变量名为 "EnergyBall_Succ_Count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "EnergyBall_Succ_Count", 1, 133223001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 针对当前group内变量名为 "group_1_progress" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "group_1_progress", 1, 133223500) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end