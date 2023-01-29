-- 基础信息
local base_info = {
	group_id = 133307378
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 378009, monster_id = 24040101, pos = { x = -1695.988, y = 9.930, z = 5552.559 }, rot = { x = 0.000, y = 237.269, z = 0.000 }, level = 32, drop_tag = "元能构装体", isOneoff = true, pose_id = 1, area_id = 32, isBlockOneoff = true },
	{ config_id = 378010, monster_id = 24040201, pos = { x = -1708.225, y = 9.802, z = 5545.628 }, rot = { x = 0.000, y = 54.857, z = 0.000 }, level = 32, drop_tag = "元能构装体", isOneoff = true, pose_id = 1, area_id = 32, isBlockOneoff = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 378001, gadget_id = 70330396, pos = { x = -1685.853, y = 9.714, z = 5553.598 }, rot = { x = 26.923, y = 25.599, z = 22.584 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 378002, gadget_id = 70330397, pos = { x = -1694.298, y = 10.724, z = 5535.654 }, rot = { x = 0.000, y = 0.000, z = 16.620 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 378003, gadget_id = 70330397, pos = { x = -1698.457, y = 9.690, z = 5560.363 }, rot = { x = 0.000, y = 0.000, z = 16.620 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 378004, gadget_id = 70330396, pos = { x = -1713.518, y = 9.990, z = 5564.847 }, rot = { x = 2.202, y = 3.744, z = 347.798 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 378005, gadget_id = 70330397, pos = { x = -1719.559, y = 10.151, z = 5540.760 }, rot = { x = 0.000, y = 0.000, z = 324.900 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 378006, gadget_id = 70330396, pos = { x = -1693.174, y = 9.953, z = 5539.205 }, rot = { x = 5.054, y = 17.365, z = 21.892 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 378007, gadget_id = 70211021, pos = { x = -1701.909, y = 9.792, z = 5549.054 }, rot = { x = 0.000, y = 287.195, z = 0.000 }, level = 26, drop_tag = "战斗高级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- TODO手写
	{ config_id = 1378008, name = "GADGET_STATE_CHANGE_378008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_378008", action = "action_EVENT_GADGET_STATE_CHANGE_378008", trigger_count = 0 },
	{ config_id = 1378011, name = "ANY_MONSTER_DIE_378011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_378011", action = "action_EVENT_ANY_MONSTER_DIE_378011", trigger_count = 0 },
	-- 宝箱保底
	{ config_id = 1378012, name = "GROUP_LOAD_378012", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_378012", action = "action_EVENT_GROUP_LOAD_378012", trigger_count = 0 }
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
		gadgets = { 378001, 378002, 378003, 378004, 378005, 378006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_378008", "GROUP_LOAD_378012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 一次性掉落,
		monsters = { 378009, 378010 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_378011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 设置此group的variable
function TLA_set_groupvariable(context, evt, variable_name, value)
	-- 将本组内变量名为 variable_name 的变量设置为 value
	if 0 ~= ScriptLib.SetGroupVariableValue(context, variable_name, value) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_378008(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133307378, 378001) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133307378, 378002) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133307378, 378003) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133307378, 378004) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133307378, 378005) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133307378, 378006) then
		return false
	end
	
	-- 判断变量"progress"为0
	if ScriptLib.GetGroupVariableValue(context, "progress") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_378008(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133307378, 2)
	
	-- 将本组内变量名为 "progress" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "progress", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_378011(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_378011(context, evt)
	ScriptLib.CreateGadget(context, {config_id=378007})
	
	TLA_set_groupvariable(context, evt, "progress", 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_378012(context, evt)
	-- 判断变量"progress"为2
	if ScriptLib.GetGroupVariableValue(context, "progress") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_378012(context, evt)
	-- 创建id为378007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 378007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end