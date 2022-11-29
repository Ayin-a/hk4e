-- 基础信息
local base_info = {
	group_id = 133107064
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 64006, monster_id = 21010701, pos = { x = -427.147, y = 273.926, z = 639.478 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, drop_tag = "丘丘人", area_id = 7 },
	{ config_id = 64007, monster_id = 21010701, pos = { x = -430.600, y = 273.157, z = 639.112 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, drop_tag = "丘丘人", area_id = 7 },
	{ config_id = 64008, monster_id = 21010701, pos = { x = -428.852, y = 273.695, z = 639.462 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, drop_tag = "丘丘人", area_id = 7 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 64001, gadget_id = 70350004, pos = { x = -428.712, y = 272.638, z = 636.754 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, persistent = true, area_id = 7 },
	{ config_id = 64002, gadget_id = 70210063, pos = { x = -428.508, y = 273.313, z = 651.850 }, rot = { x = 0.344, y = 191.085, z = 358.243 }, level = 21, drop_tag = "解谜低级璃月", state = GadgetState.ChestRock, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 7 },
	{ config_id = 64003, gadget_id = 70210063, pos = { x = -428.104, y = 273.464, z = 648.391 }, rot = { x = 10.752, y = 286.610, z = 357.422 }, level = 21, drop_tag = "解谜低级璃月", state = GadgetState.ChestRock, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 7 },
	{ config_id = 64004, gadget_id = 70210063, pos = { x = -428.418, y = 273.607, z = 644.321 }, rot = { x = 353.837, y = 12.423, z = 13.859 }, level = 21, drop_tag = "解谜低级璃月", state = GadgetState.ChestRock, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 7 },
	{ config_id = 64010, gadget_id = 70210063, pos = { x = -429.833, y = 279.867, z = 658.722 }, rot = { x = 0.000, y = 222.700, z = 0.000 }, level = 21, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 7 }
}

-- 区域
regions = {
	{ config_id = 64005, shape = RegionShape.SPHERE, radius = 3, pos = { x = -428.555, y = 273.533, z = 645.609 }, area_id = 7 }
}

-- 触发器
triggers = {
	{ config_id = 1064005, name = "ENTER_REGION_64005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_64005", action = "action_EVENT_ENTER_REGION_64005" },
	{ config_id = 1064009, name = "ANY_MONSTER_DIE_64009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_64009", action = "action_EVENT_ANY_MONSTER_DIE_64009" }
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
		gadgets = { 64001, 64002, 64003, 64004, 64010 },
		regions = { 64005 },
		triggers = { "ENTER_REGION_64005", "ANY_MONSTER_DIE_64009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_64005(context, evt)
	if evt.param1 ~= 64005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_64005(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 64006, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 64007, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 64008, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_64009(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_64009(context, evt)
	-- 将configid为 64001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 64001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end