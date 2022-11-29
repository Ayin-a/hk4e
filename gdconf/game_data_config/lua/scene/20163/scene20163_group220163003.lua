-- 基础信息
local base_info = {
	group_id = 220163003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 3001, monster_id = 23010301, pos = { x = 1.573, y = 35.700, z = 64.326 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 9001 },
	{ config_id = 3005, monster_id = 23010201, pos = { x = 2.851, y = 35.757, z = 69.862 }, rot = { x = 0.000, y = 221.666, z = 0.000 }, level = 1, disableWander = true, pose_id = 9011 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3003, gadget_id = 70350464, pos = { x = -13.508, y = 39.277, z = 67.115 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 3004, gadget_id = 70350464, pos = { x = 19.018, y = 39.313, z = 67.114 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 3006, shape = RegionShape.SPHERE, radius = 10, pos = { x = -15.975, y = 36.582, z = 66.710 } }
}

-- 触发器
triggers = {
	{ config_id = 1003006, name = "ENTER_REGION_3006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3006", action = "action_EVENT_ENTER_REGION_3006", trigger_count = 0 },
	{ config_id = 1003007, name = "ANY_MONSTER_DIE_3007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3007", action = "action_EVENT_ANY_MONSTER_DIE_3007" },
	{ config_id = 1003008, name = "GADGET_STATE_CHANGE_3008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_3008", action = "action_EVENT_GADGET_STATE_CHANGE_3008" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 3002, monster_id = 23010601, pos = { x = 3.605, y = 35.634, z = 71.267 }, rot = { x = 0.000, y = 172.957, z = 0.000 }, level = 1, pose_id = 9012 }
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
		monsters = { 3001, 3005 },
		gadgets = { 3003, 3004 },
		regions = { 3006 },
		triggers = { "ENTER_REGION_3006", "ANY_MONSTER_DIE_3007", "GADGET_STATE_CHANGE_3008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_3006(context, evt)
	if evt.param1 ~= 3006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 220163003, 3003) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_3006(context, evt)
	-- 将configid为 3003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3007(context, evt)
	-- 将configid为 3004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_3008(context, evt)
	if 3004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_3008(context, evt)
	-- 将本组内变量名为 "default" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "default", 1, 220163001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end