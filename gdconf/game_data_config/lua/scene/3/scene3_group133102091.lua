-- 基础信息
local base_info = {
	group_id = 133102091
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 91003, monster_id = 20010901, pos = { x = 1674.823, y = 278.800, z = 515.635 }, rot = { x = 0.000, y = 261.676, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 5 },
	{ config_id = 91005, monster_id = 20010901, pos = { x = 1670.030, y = 283.935, z = 511.411 }, rot = { x = 0.000, y = 301.563, z = 0.000 }, level = 18, drop_id = 1000100, affix = { 1008, 1014 }, isElite = true, isOneoff = true, area_id = 5 },
	{ config_id = 91006, monster_id = 20010801, pos = { x = 1674.263, y = 278.673, z = 516.597 }, rot = { x = 0.114, y = 267.901, z = 3.101 }, level = 18, drop_id = 1000100, area_id = 5 },
	{ config_id = 91007, monster_id = 20010901, pos = { x = 1671.683, y = 278.800, z = 504.244 }, rot = { x = 0.000, y = 295.515, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 5 },
	{ config_id = 91008, monster_id = 20010801, pos = { x = 1674.144, y = 278.737, z = 514.595 }, rot = { x = 0.156, y = 278.563, z = 0.028 }, level = 18, drop_id = 1000100, area_id = 5 },
	{ config_id = 91009, monster_id = 20010801, pos = { x = 1671.538, y = 278.764, z = 506.226 }, rot = { x = 0.000, y = 297.619, z = 0.000 }, level = 18, drop_id = 1000100, area_id = 5 },
	{ config_id = 91010, monster_id = 20010801, pos = { x = 1671.109, y = 278.764, z = 504.509 }, rot = { x = 0.000, y = 317.726, z = 0.000 }, level = 18, drop_id = 1000100, area_id = 5 },
	{ config_id = 91013, monster_id = 20010801, pos = { x = 1674.085, y = 278.737, z = 518.443 }, rot = { x = 0.144, y = 243.534, z = 359.933 }, level = 18, drop_id = 1000100, area_id = 5 },
	{ config_id = 91024, monster_id = 20010801, pos = { x = 1674.297, y = 279.069, z = 517.094 }, rot = { x = 0.000, y = 246.207, z = 0.000 }, level = 18, drop_id = 1000100, area_id = 5 },
	{ config_id = 91025, monster_id = 20010801, pos = { x = 1670.804, y = 279.069, z = 502.913 }, rot = { x = 0.000, y = 300.041, z = 0.000 }, level = 18, drop_id = 1000100, area_id = 5 },
	{ config_id = 91038, monster_id = 20010801, pos = { x = 1670.016, y = 279.122, z = 503.099 }, rot = { x = 0.208, y = 305.724, z = 1.556 }, level = 18, drop_id = 1000100, area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 91002, gadget_id = 70211022, pos = { x = 1674.946, y = 279.885, z = 509.876 }, rot = { x = 0.000, y = 289.766, z = 358.118 }, level = 16, drop_tag = "战斗高级璃月", state = GadgetState.ChestTrap, isOneoff = true, persistent = true, autopick = true, explore = { name = "chest", exp = 1 }, area_id = 5 }
}

-- 区域
regions = {
	{ config_id = 91011, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1671.950, y = 278.554, z = 511.303 }, area_id = 5 },
	{ config_id = 91049, shape = RegionShape.SPHERE, radius = 20, pos = { x = 1658.042, y = 278.800, z = 513.853 }, area_id = 5 }
}

-- 触发器
triggers = {
	{ config_id = 1091004, name = "GROUP_LOAD_91004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_91004", action = "action_EVENT_GROUP_LOAD_91004", trigger_count = 0 },
	{ config_id = 1091011, name = "ENTER_REGION_91011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_91011", action = "action_EVENT_ENTER_REGION_91011" },
	{ config_id = 1091012, name = "ANY_MONSTER_DIE_91012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_91012", action = "action_EVENT_ANY_MONSTER_DIE_91012" },
	{ config_id = 1091015, name = "GROUP_LOAD_91015", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_91015", action = "action_EVENT_GROUP_LOAD_91015", trigger_count = 0 },
	{ config_id = 1091030, name = "SPECIFIC_MONSTER_HP_CHANGE_91030", event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = "91005", condition = "condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_91030", action = "action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_91030", trigger_count = 0 },
	{ config_id = 1091047, name = "ANY_MONSTER_DIE_91047", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_91047", action = "action_EVENT_ANY_MONSTER_DIE_91047", trigger_count = 0 },
	{ config_id = 1091048, name = "GADGET_STATE_CHANGE_91048", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_91048", action = "action_EVENT_GADGET_STATE_CHANGE_91048", trigger_count = 0 },
	{ config_id = 1091049, name = "ENTER_REGION_91049", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_91049", action = "action_EVENT_ENTER_REGION_91049", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "fin1", value = 0, no_refresh = true },
	{ config_id = 2, name = "fin2", value = 0, no_refresh = true }
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
		gadgets = { 91002 },
		regions = { 91011, 91049 },
		triggers = { "GROUP_LOAD_91004", "ENTER_REGION_91011", "ANY_MONSTER_DIE_91012", "GROUP_LOAD_91015", "SPECIFIC_MONSTER_HP_CHANGE_91030", "ANY_MONSTER_DIE_91047", "GADGET_STATE_CHANGE_91048", "ENTER_REGION_91049" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GROUP_LOAD_91004(context, evt)
	-- 判断变量"fin1"为1
	if ScriptLib.GetGroupVariableValue(context, "fin1") ~= 1 then
			return false
	end
	
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133102091}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_91004(context, evt)
	-- 将configid为 91002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 91002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_91011(context, evt)
	if evt.param1 ~= 91011 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_91011(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 91005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 将configid为 91002 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 91002, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_91012(context, evt)
	-- 判断剩余怪物数量是否是7
	if ScriptLib.GetGroupMonsterCount(context) ~= 7 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_91012(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 91003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 91024, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 91007, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 91025, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_91015(context, evt)
	-- 判断变量"fin2"为1
	if ScriptLib.GetGroupVariableValue(context, "fin2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_91015(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "finish_133102091") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_91030(context, evt)
	--[[判断指定configid的怪物的血量小于%85时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE or evt.param3 > 85 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_91030(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 91013, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 91006, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 91008, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 91009, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 91010, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 91038, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_91047(context, evt)
	--判断死亡怪物的configid是否为 91005
	if evt.param1 ~= 91005 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_91047(context, evt)
	-- 将configid为 91002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 91002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "fin1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "fin1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_91048(context, evt)
	if 91002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_91048(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "finish_133102091") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将configid为 91001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 91001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "fin2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "fin2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_91049(context, evt)
	if evt.param1 ~= 91049 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_91049(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "finish_133102091_zhiyin") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end