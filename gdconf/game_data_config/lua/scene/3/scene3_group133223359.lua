-- 基础信息
local base_info = {
	group_id = 133223359
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 359004, monster_id = 21010301, pos = { x = -6055.409, y = 207.487, z = -2907.669 }, rot = { x = 0.000, y = 42.607, z = 0.000 }, level = 33, drop_id = 1000100, pose_id = 9013, climate_area_id = 7, area_id = 18 },
	{ config_id = 359005, monster_id = 21010301, pos = { x = -6053.482, y = 207.465, z = -2903.688 }, rot = { x = 0.000, y = 160.919, z = 0.000 }, level = 33, drop_id = 1000100, pose_id = 9013, climate_area_id = 7, area_id = 18 },
	{ config_id = 359007, monster_id = 22010401, pos = { x = -6059.763, y = 207.664, z = -2908.398 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_id = 1000100, climate_area_id = 7, area_id = 18 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 359001, gadget_id = 70220091, pos = { x = -6052.757, y = 208.882, z = -2905.935 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1359003, name = "ANY_GADGET_DIE_359003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_359003", action = "action_EVENT_ANY_GADGET_DIE_359003", trigger_count = 0 },
	{ config_id = 1359006, name = "MONSTER_BATTLE_359006", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_359006", action = "action_EVENT_MONSTER_BATTLE_359006" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 359002, gadget_id = 70330114, pos = { x = -6087.496, y = 208.708, z = -2886.679 }, rot = { x = 356.397, y = 141.986, z = 3.261 }, level = 1, area_id = 18 }
	},
	triggers = {
		{ config_id = 1359008, name = "GROUP_LOAD_359008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_359008", action = "action_EVENT_GROUP_LOAD_359008", trigger_count = 0 }
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
		monsters = { 359004, 359005 },
		gadgets = { 359001 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_359003", "MONSTER_BATTLE_359006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 359007 },
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
function condition_EVENT_ANY_GADGET_DIE_359003(context, evt)
	if 359001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_359003(context, evt)
	-- 针对当前group内变量名为 "EnergyBall_Succ_Count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "EnergyBall_Succ_Count", 1, 133223123) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 针对当前group内变量名为 "group_4_progress" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "group_4_progress", 1, 133223501) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_359006(context, evt)
	if 359004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_359006(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133223359, 2)
	
	return 0
end