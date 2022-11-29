-- 基础信息
local base_info = {
	group_id = 133223360
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 360009, monster_id = 22040201, pos = { x = -6047.410, y = 207.447, z = -2872.986 }, rot = { x = 0.000, y = 239.174, z = 0.000 }, level = 33, drop_id = 1000100, pose_id = 101, climate_area_id = 7, area_id = 18 },
	{ config_id = 360011, monster_id = 22040201, pos = { x = -6052.170, y = 207.447, z = -2871.815 }, rot = { x = 0.000, y = 185.537, z = 0.000 }, level = 33, drop_id = 1000100, pose_id = 101, climate_area_id = 7, area_id = 18 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 360001, gadget_id = 70220089, pos = { x = -6051.203, y = 220.030, z = -2857.648 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 18 },
	{ config_id = 360006, gadget_id = 70220091, pos = { x = -6053.607, y = 208.919, z = -2877.725 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 成功1
	{ config_id = 1360003, name = "ANY_GADGET_DIE_360003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_360003", action = "action_EVENT_ANY_GADGET_DIE_360003", trigger_count = 0 },
	-- 成功2，刷怪
	{ config_id = 1360007, name = "ANY_GADGET_DIE_360007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_360007", action = "action_EVENT_ANY_GADGET_DIE_360007", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 360008, monster_id = 22050201, pos = { x = -6045.673, y = 207.447, z = -2877.248 }, rot = { x = 0.000, y = 257.017, z = 0.000 }, level = 33, drop_id = 1000100, pose_id = 101, climate_area_id = 7, area_id = 18 }
	},
	gadgets = {
		{ config_id = 360002, gadget_id = 70330114, pos = { x = -6054.263, y = 209.027, z = -2864.636 }, rot = { x = 306.625, y = 1.518, z = 339.925 }, level = 1, area_id = 18 },
		{ config_id = 360005, gadget_id = 70330114, pos = { x = -6035.503, y = 209.080, z = -2887.909 }, rot = { x = 3.786, y = 325.315, z = 9.028 }, level = 1, area_id = 18 }
	},
	triggers = {
		{ config_id = 1360004, name = "GROUP_LOAD_360004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_360004", action = "action_EVENT_GROUP_LOAD_360004", trigger_count = 0 },
		{ config_id = 1360010, name = "ANY_GADGET_DIE_360010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_360010", trigger_count = 0 }
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
		gadgets = { 360001, 360006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_360003", "ANY_GADGET_DIE_360007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 360009, 360011 },
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
function condition_EVENT_ANY_GADGET_DIE_360003(context, evt)
	if 360001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_360003(context, evt)
	-- 针对当前group内变量名为 "EnergyBall_Succ_Count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "EnergyBall_Succ_Count", 1, 133223123) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 针对当前group内变量名为 "group_2_progress" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "group_2_progress", 1, 133223501) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_360007(context, evt)
	if 360006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_360007(context, evt)
	-- 针对当前group内变量名为 "EnergyBall_Succ_Count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "EnergyBall_Succ_Count", 1, 133223123) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133223360, 2)
	
	-- 针对当前group内变量名为 "group_2_progress" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "group_2_progress", 1, 133223501) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end