-- 基础信息
local base_info = {
	group_id = 220113008
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
	{ config_id = 8001, gadget_id = 70360283, pos = { x = -66.763, y = 10.167, z = 51.978 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8002, gadget_id = 70360283, pos = { x = -57.619, y = 10.167, z = 51.978 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8003, gadget_id = 70220070, pos = { x = -62.687, y = 1.707, z = 52.279 }, rot = { x = 0.000, y = 300.000, z = 0.000 }, level = 1 },
	{ config_id = 8004, gadget_id = 70220071, pos = { x = -63.242, y = 1.707, z = 50.072 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 8005, gadget_id = 70220070, pos = { x = -53.442, y = 1.742, z = 53.764 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 8006, gadget_id = 70220071, pos = { x = -52.476, y = 1.703, z = 51.753 }, rot = { x = 0.000, y = 230.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 8010, shape = RegionShape.CUBIC, size = { x = 9.000, y = 4.000, z = 4.000 }, pos = { x = -67.078, y = 4.232, z = 51.978 } },
	{ config_id = 8011, shape = RegionShape.CUBIC, size = { x = 9.000, y = 4.000, z = 4.000 }, pos = { x = -57.619, y = 3.657, z = 51.978 } }
}

-- 触发器
triggers = {
	{ config_id = 1008010, name = "ENTER_REGION_8010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_8010", action = "action_EVENT_ENTER_REGION_8010" },
	{ config_id = 1008011, name = "ENTER_REGION_8011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_8011", action = "action_EVENT_ENTER_REGION_8011" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 8009, gadget_id = 70220071, pos = { x = -47.509, y = 1.631, z = 49.354 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 }
	},
	triggers = {
		{ config_id = 1008007, name = "ANY_GADGET_DIE_8007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_8007" },
		{ config_id = 1008008, name = "ANY_GADGET_DIE_8008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_8008", action = "action_EVENT_ANY_GADGET_DIE_8008" }
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
		gadgets = { 8001, 8002, 8003, 8004, 8005, 8006 },
		regions = { 8010, 8011 },
		triggers = { "ENTER_REGION_8010", "ENTER_REGION_8011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_8010(context, evt)
	if evt.param1 ~= 8010 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_8010(context, evt)
	-- 改变指定group组220113008中， configid为8001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220113008, 8001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_8011(context, evt)
	if evt.param1 ~= 8011 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_8011(context, evt)
	-- 改变指定group组220113008中， configid为8002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220113008, 8002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end