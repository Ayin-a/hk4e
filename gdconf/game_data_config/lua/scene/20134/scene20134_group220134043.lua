-- 基础信息
local base_info = {
	group_id = 220134043
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 0 倒影亮 实体灭
	{ config_id = 43001, gadget_id = 70310238, pos = { x = 594.635, y = 604.728, z = -1476.796 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- 201 倒影亮 实体亮
	{ config_id = 43002, gadget_id = 70310238, pos = { x = 599.471, y = 604.740, z = -1474.197 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	-- 202 倒影灭 实体灭
	{ config_id = 43003, gadget_id = 70310238, pos = { x = 596.447, y = 604.728, z = -1471.517 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStop },
	-- 203 倒影灭 亮
	{ config_id = 43004, gadget_id = 70310238, pos = { x = 593.323, y = 604.727, z = -1473.760 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearAction1 },
	-- 0 倒影亮 实体灭
	{ config_id = 43005, gadget_id = 70310238, pos = { x = 596.855, y = 604.711, z = -1482.496 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 43007, gadget_id = 70211001, pos = { x = 602.729, y = 604.643, z = -1478.108 }, rot = { x = 0.000, y = 273.398, z = 0.000 }, level = 16, drop_tag = "战斗低级群岛", isOneoff = true, persistent = true },
	{ config_id = 43008, gadget_id = 70380306, pos = { x = 597.344, y = 604.962, z = -1477.270 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, persistent = true },
	{ config_id = 43011, gadget_id = 70220038, pos = { x = 590.380, y = 604.962, z = -1486.695 }, rot = { x = 0.000, y = 183.833, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 43009, shape = RegionShape.SPHERE, radius = 15, pos = { x = 594.176, y = 604.723, z = -1475.362 } },
	{ config_id = 43010, shape = RegionShape.SPHERE, radius = 15, pos = { x = 594.176, y = 604.723, z = -1475.362 } }
}

-- 触发器
triggers = {
	{ config_id = 1043006, name = "GADGET_STATE_CHANGE_43006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_43006", action = "action_EVENT_GADGET_STATE_CHANGE_43006" },
	{ config_id = 1043009, name = "ENTER_REGION_43009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_43009", action = "action_EVENT_ENTER_REGION_43009", trigger_count = 0 },
	{ config_id = 1043010, name = "LEAVE_REGION_43010", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_43010", action = "action_EVENT_LEAVE_REGION_43010", trigger_count = 0 },
	{ config_id = 1043012, name = "ANY_GADGET_DIE_43012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_43012", action = "action_EVENT_ANY_GADGET_DIE_43012", trigger_count = 0 }
}

-- 变量
variables = {
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
		gadgets = { 43001, 43002, 43003, 43004, 43005, 43011 },
		regions = { 43009, 43010 },
		triggers = { "GADGET_STATE_CHANGE_43006", "ENTER_REGION_43009", "LEAVE_REGION_43010", "ANY_GADGET_DIE_43012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_43006(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 220134043, 43001) then
		return false
	end
	
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 220134043, 43004) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 220134043, 43005) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 220134043, 43002) then
		return false
	end
	
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 220134043, 43003) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_43006(context, evt)
	-- 创建id为43007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 43007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_43009(context, evt)
	if evt.param1 ~= 43009 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_43009(context, evt)
	-- 将configid为 43008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 43008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 改变指定group组220134006中， configid为6012的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220134006, 6012, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组220134007中， configid为7002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220134007, 7002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组220134044中， configid为44007的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220134044, 44007, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_43010(context, evt)
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_43010(context, evt)
	-- 将configid为 43008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 43008, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_43012(context, evt)
	if 43011 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_43012(context, evt)
	-- 创建id为43008的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 43008 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将本组内变量名为 "kill" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "kill", 1, 220134006) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220134006, EntityType.GADGET, 6012 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220134012, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 220134012, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end