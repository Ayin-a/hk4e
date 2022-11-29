-- 基础信息
local base_info = {
	group_id = 201016007
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 16, monster_id = 21010501, pos = { x = 258.309, y = 1.611, z = -14.476 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 62, gadget_id = 70350004, pos = { x = 270.789, y = -1.926, z = -23.294 }, rot = { x = 0.000, y = 90.851, z = 0.000 }, level = 1 },
	{ config_id = 119, gadget_id = 70220005, pos = { x = 258.983, y = 1.322, z = -16.667 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 135, gadget_id = 70220005, pos = { x = 254.912, y = 1.256, z = -12.671 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 139, gadget_id = 70900201, pos = { x = 296.337, y = -0.723, z = -15.419 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 140, gadget_id = 70900202, pos = { x = 258.497, y = 3.217, z = -14.840 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 52, shape = RegionShape.CUBIC, size = { x = 10.000, y = 10.000, z = 20.000 }, pos = { x = 297.358, y = 1.389, z = -13.424 } },
	{ config_id = 78, shape = RegionShape.CUBIC, size = { x = 10.000, y = 10.000, z = 20.000 }, pos = { x = 335.539, y = 15.953, z = -13.424 } }
}

-- 触发器
triggers = {
	{ config_id = 1000051, name = "ANY_MONSTER_DIE_51", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_51", action = "action_EVENT_ANY_MONSTER_DIE_51" },
	{ config_id = 1000052, name = "ENTER_REGION_52", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_52", action = "action_EVENT_ENTER_REGION_52", forbid_guest = false },
	{ config_id = 1000078, name = "ENTER_REGION_78", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_78", action = "action_EVENT_ENTER_REGION_78", forbid_guest = false }
}

-- 变量
variables = {
	{ config_id = 1, name = "Die", value = 0, no_refresh = false }
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
	rand_suite = true
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
		monsters = { 16 },
		gadgets = { 62, 119, 135 },
		regions = { 52, 78 },
		triggers = { "ANY_MONSTER_DIE_51", "ENTER_REGION_52", "ENTER_REGION_78" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_51(context, evt)
	if 16 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_51(context, evt)
	-- 将configid为 62 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 62, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 201016007, monsters = {}, gadgets = {140} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_52(context, evt)
	if evt.param1 ~= 52 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_52(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 201016007, monsters = {}, gadgets = {139} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	-- 创建id为140的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 140 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_78(context, evt)
	if evt.param1 ~= 78 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_78(context, evt)
	-- 创建id为139的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 139 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end