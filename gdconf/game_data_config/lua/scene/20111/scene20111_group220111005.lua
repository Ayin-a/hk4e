-- 基础信息
local base_info = {
	group_id = 220111005
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 5003, monster_id = 25080401, pos = { x = 43.130, y = 16.763, z = 146.578 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 1 },
	{ config_id = 5004, monster_id = 25080401, pos = { x = 42.999, y = 16.763, z = 132.169 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 1 },
	{ config_id = 5005, monster_id = 25050301, pos = { x = 47.445, y = 16.763, z = 145.362 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 5006, monster_id = 25050401, pos = { x = 48.115, y = 16.760, z = 139.160 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 5007, monster_id = 25050301, pos = { x = 47.538, y = 16.763, z = 132.880 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 5001, gadget_id = 70290137, pos = { x = 25.645, y = 17.612, z = 139.353 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 5002, gadget_id = 70290137, pos = { x = 53.507, y = 17.575, z = 139.326 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 5011, gadget_id = 70211012, pos = { x = 39.456, y = 16.814, z = 138.964 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, drop_tag = "战斗中级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 5008, shape = RegionShape.CUBIC, size = { x = 4.000, y = 10.000, z = 12.000 }, pos = { x = 29.138, y = 22.366, z = 139.184 } },
	{ config_id = 5010, shape = RegionShape.CUBIC, size = { x = 10.000, y = 10.000, z = 10.000 }, pos = { x = 19.362, y = 20.082, z = 128.378 } },
	{ config_id = 5012, shape = RegionShape.CUBIC, size = { x = 4.000, y = 10.000, z = 12.000 }, pos = { x = 29.138, y = 22.366, z = 139.184 } }
}

-- 触发器
triggers = {
	{ config_id = 1005008, name = "ENTER_REGION_5008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5008", action = "action_EVENT_ENTER_REGION_5008" },
	{ config_id = 1005009, name = "ANY_MONSTER_DIE_5009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_5009", action = "action_EVENT_ANY_MONSTER_DIE_5009" },
	{ config_id = 1005010, name = "ENTER_REGION_5010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5010", action = "action_EVENT_ENTER_REGION_5010", trigger_count = 0 },
	{ config_id = 1005012, name = "ENTER_REGION_5012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5012", action = "action_EVENT_ENTER_REGION_5012" }
}

-- 变量
variables = {
	{ config_id = 1, name = "alive", value = 0, no_refresh = false }
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
		monsters = { 5003, 5004, 5005, 5006, 5007 },
		gadgets = { 5001, 5002, 5011 },
		regions = { 5008, 5010, 5012 },
		triggers = { "ENTER_REGION_5008", "ANY_MONSTER_DIE_5009", "ENTER_REGION_5010", "ENTER_REGION_5012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_5008(context, evt)
	if evt.param1 ~= 5008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"alive"为0
	if ScriptLib.GetGroupVariableValue(context, "alive") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5008(context, evt)
	-- 改变指定group组220111005中， configid为5001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220111005, 5001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 将本组内变量名为 "alive" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "alive", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_5009(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 220111005) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_5009(context, evt)
	-- 改变指定group组220111005中， configid为5002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220111005, 5002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组220111005中， configid为5001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220111005, 5001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组220111005中， configid为5011的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220111005, 5011, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 将本组内变量名为 "alive" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "alive", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_5010(context, evt)
	if evt.param1 ~= 5010 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"alive"为1
	if ScriptLib.GetGroupVariableValue(context, "alive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5010(context, evt)
	-- 改变指定group组220111005中， configid为5001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220111005, 5001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_5012(context, evt)
	if evt.param1 ~= 5012 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"alive"为1
	if ScriptLib.GetGroupVariableValue(context, "alive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5012(context, evt)
	-- 改变指定group组220111005中， configid为5001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220111005, 5001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end