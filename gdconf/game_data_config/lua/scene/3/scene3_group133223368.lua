-- 基础信息
local base_info = {
	group_id = 133223368
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 368005, monster_id = 22050201, pos = { x = -5984.996, y = 178.937, z = -2579.969 }, rot = { x = 0.197, y = 89.177, z = 0.719 }, level = 33, drop_id = 1000100, pose_id = 101, climate_area_id = 7, area_id = 18 },
	{ config_id = 368007, monster_id = 22040201, pos = { x = -5973.348, y = 178.896, z = -2586.166 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_id = 1000100, pose_id = 101, climate_area_id = 7, area_id = 18 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 368001, gadget_id = 70220091, pos = { x = -5987.583, y = 180.858, z = -2565.857 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 18 },
	{ config_id = 368004, gadget_id = 70220089, pos = { x = -5975.968, y = 180.815, z = -2581.792 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1368003, name = "ANY_GADGET_DIE_368003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_368003", action = "action_EVENT_ANY_GADGET_DIE_368003", trigger_count = 0 },
	{ config_id = 1368006, name = "ANY_GADGET_DIE_368006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_368006", action = "action_EVENT_ANY_GADGET_DIE_368006", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 368009, monster_id = 22040201, pos = { x = -5980.333, y = 178.934, z = -2585.689 }, rot = { x = 0.000, y = 43.965, z = 0.000 }, level = 33, drop_id = 1000100, pose_id = 101, climate_area_id = 7, area_id = 18 }
	},
	gadgets = {
		{ config_id = 368002, gadget_id = 70330114, pos = { x = -5986.515, y = 179.613, z = -2576.008 }, rot = { x = 355.646, y = 130.912, z = 107.009 }, level = 1, area_id = 18 }
	},
	triggers = {
		{ config_id = 1368008, name = "ANY_GADGET_DIE_368008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_368008", trigger_count = 0 },
		{ config_id = 1368010, name = "GROUP_LOAD_368010", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_368010", action = "action_EVENT_GROUP_LOAD_368010", trigger_count = 0 }
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
		gadgets = { 368001, 368004 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_368003", "ANY_GADGET_DIE_368006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 368005, 368007 },
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
function condition_EVENT_ANY_GADGET_DIE_368003(context, evt)
	if 368001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_368003(context, evt)
	-- 针对当前group内变量名为 "EnergyBall_Succ_Count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "EnergyBall_Succ_Count", 1, 133223122) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 针对当前group内变量名为 "group_2_progress" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "group_2_progress", 1, 133223502) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_368006(context, evt)
	if 368004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_368006(context, evt)
	-- 针对当前group内变量名为 "EnergyBall_Succ_Count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "EnergyBall_Succ_Count", 1, 133223122) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 针对当前group内变量名为 "group_2_progress" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "group_2_progress", 1, 133223502) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133223368, 2)
	
	return 0
end