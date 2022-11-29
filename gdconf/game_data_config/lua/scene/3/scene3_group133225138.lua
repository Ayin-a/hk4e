-- 基础信息
local base_info = {
	group_id = 133225138
}

-- DEFS_MISCS
defs = {
        group_id = 133225138,        --当前Group的ID
        isRandom = false,--定义这个组是否会随机取
        child_group = {}, --groupid和需要切到的SuiteID，一一对应
        notifyQuest = true, --修改Group里一个变量
        hasChild = false, --表示是否切当前Group的suite，true表示切自己的
        selfSuiteId = 2, --需要切的自己的suite
        hasMultiStatues = false, --是否有多个雷鸟雕像
        statuesMap = 
        {
                [10001] = 2, --雷鸟雕像和需要切出来的Suite的对应表
        },
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 138005, monster_id = 20010601, pos = { x = -6407.194, y = 256.984, z = -2593.716 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_id = 1000100, climate_area_id = 7, area_id = 18 },
	{ config_id = 138006, monster_id = 20010601, pos = { x = -6410.010, y = 257.104, z = -2590.861 }, rot = { x = 0.000, y = 83.007, z = 0.000 }, level = 33, drop_id = 1000100, climate_area_id = 7, area_id = 18 },
	{ config_id = 138009, monster_id = 20010501, pos = { x = -6407.456, y = 257.240, z = -2590.633 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_id = 1000100, climate_area_id = 7, area_id = 18 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 138001, gadget_id = 70290160, pos = { x = -6407.497, y = 256.897, z = -2588.330 }, rot = { x = 0.000, y = 357.744, z = 0.000 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
	{ config_id = 138002, gadget_id = 70310153, pos = { x = -6406.265, y = 256.860, z = -2589.850 }, rot = { x = 333.055, y = 260.169, z = 5.190 }, level = 33, persistent = true, area_id = 18 },
	{ config_id = 138003, gadget_id = 70330137, pos = { x = -6403.146, y = 257.078, z = -2591.483 }, rot = { x = 0.000, y = 0.000, z = 356.726 }, level = 33, persistent = true, interact_id = 35, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1138004, name = "VARIABLE_CHANGE_138004", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_138004", action = "action_EVENT_VARIABLE_CHANGE_138004" },
	{ config_id = 1138008, name = "GADGET_STATE_CHANGE_138008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_138008", action = "action_EVENT_GADGET_STATE_CHANGE_138008" },
	{ config_id = 1138010, name = "GROUP_LOAD_138010", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_138010", action = "action_EVENT_GROUP_LOAD_138010", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "Seed", value = 0, no_refresh = true },
	{ config_id = 2, name = "Notified", value = 0, no_refresh = true },
	{ config_id = 3, name = "Finish", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 138007, monster_id = 22050201, pos = { x = -6411.286, y = 256.733, z = -2596.774 }, rot = { x = 0.000, y = 30.409, z = 0.000 }, level = 33, drop_tag = "兽境猎犬", pose_id = 101, climate_area_id = 7, area_id = 18 }
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
		gadgets = { 138001 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_138004", "GADGET_STATE_CHANGE_138008", "GROUP_LOAD_138010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 138002, 138003 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 138005, 138006, 138009 },
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
function condition_EVENT_VARIABLE_CHANGE_138004(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Notified"为1
	if ScriptLib.GetGroupVariableValue(context, "Notified") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_138004(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133225138, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_138008(context, evt)
	if 138002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_138008(context, evt)
	-- 针对当前group内变量名为 "progress" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "progress", 1, 133223291) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "Finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_138010(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133225138, 138002) then
		return false
	end
	
	-- 判断变量"Finish"为0
	if ScriptLib.GetGroupVariableValue(context, "Finish") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_138010(context, evt)
	-- 针对当前group内变量名为 "progress" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "progress", 1, 133223291) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "Finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

require "V2_2/TsurumiBirdFather"