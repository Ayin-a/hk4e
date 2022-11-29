-- 基础信息
local base_info = {
	group_id = 220163004
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 4001, monster_id = 23010101, pos = { x = -33.992, y = 84.155, z = -39.746 }, rot = { x = 0.000, y = 238.714, z = 0.000 }, level = 1, disableWander = true, pose_id = 9001 },
	{ config_id = 4002, monster_id = 23020101, pos = { x = -33.131, y = 84.154, z = -39.805 }, rot = { x = 0.000, y = 210.743, z = 0.000 }, level = 1, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 4003, gadget_id = 70350464, pos = { x = -23.477, y = 86.510, z = -40.015 }, rot = { x = 0.000, y = 90.259, z = 0.000 }, level = 1 },
	{ config_id = 4004, gadget_id = 70350464, pos = { x = -43.873, y = 86.509, z = -39.989 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 4005, gadget_id = 70350464, pos = { x = -33.594, y = 86.543, z = -50.188 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4013, gadget_id = 70211011, pos = { x = -28.465, y = 83.710, z = -45.401 }, rot = { x = 0.000, y = 312.770, z = 0.000 }, level = 1, drop_tag = "战斗中级须弥", isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 4006, shape = RegionShape.SPHERE, radius = 5, pos = { x = -46.125, y = 85.470, z = -41.192 } }
}

-- 触发器
triggers = {
	{ config_id = 1004006, name = "ENTER_REGION_4006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4006", action = "action_EVENT_ENTER_REGION_4006" },
	{ config_id = 1004007, name = "ANY_MONSTER_DIE_4007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4007", action = "action_EVENT_ANY_MONSTER_DIE_4007" },
	{ config_id = 1004008, name = "VARIABLE_CHANGE_4008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_4008", action = "action_EVENT_VARIABLE_CHANGE_4008", trigger_count = 0 },
	{ config_id = 1004009, name = "VARIABLE_CHANGE_4009", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_4009", action = "action_EVENT_VARIABLE_CHANGE_4009", trigger_count = 0 },
	{ config_id = 1004014, name = "ANY_MONSTER_DIE_4014", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4014", action = "action_EVENT_ANY_MONSTER_DIE_4014" }
}

-- 变量
variables = {
	{ config_id = 1, name = "discSuccess2", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 4011, gadget_id = 70900201, pos = { x = -33.264, y = 85.421, z = -55.781 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
	},
	regions = {
		{ config_id = 4012, shape = RegionShape.SPHERE, radius = 5, pos = { x = -33.831, y = 83.782, z = -56.406 } }
	},
	triggers = {
		{ config_id = 1004010, name = "VARIABLE_CHANGE_4010", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_4010", action = "action_EVENT_VARIABLE_CHANGE_4010" },
		{ config_id = 1004012, name = "ENTER_REGION_4012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4012", action = "action_EVENT_ENTER_REGION_4012" }
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
		monsters = { 4001 },
		gadgets = { 4003, 4004, 4005 },
		regions = { 4006 },
		triggers = { "ENTER_REGION_4006", "ANY_MONSTER_DIE_4007", "VARIABLE_CHANGE_4008", "VARIABLE_CHANGE_4009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 4002 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_4014" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
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
function condition_EVENT_ENTER_REGION_4006(context, evt)
	if evt.param1 ~= 4006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4006(context, evt)
	-- 将configid为 4004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_4007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_4007(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220163004, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_4008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"discSuccess2"为1
	if ScriptLib.GetGroupVariableValue(context, "discSuccess2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_4008(context, evt)
	-- 将configid为 4005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "discSuccess2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "discSuccess2", 1, 220163002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_4009(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"discSuccess2"为0
	if ScriptLib.GetGroupVariableValue(context, "discSuccess2") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_4009(context, evt)
	-- 将configid为 4005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "discSuccess2" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "discSuccess2", 0, 220163002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_4014(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_4014(context, evt)
	-- 将configid为 4003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "fightRoom2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "fightRoom2", 1, 220163002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 创建id为4013的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 4013 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end