-- 基础信息
local base_info = {
	group_id = 133003316
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1031, monster_id = 20011101, pos = { x = 2706.083, y = 273.707, z = -1581.104 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 13, drop_tag = "大史莱姆", area_id = 1 },
	{ config_id = 1032, monster_id = 20011001, pos = { x = 2708.946, y = 273.895, z = -1580.520 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 13, drop_tag = "史莱姆", area_id = 1 },
	{ config_id = 1033, monster_id = 20011001, pos = { x = 2706.471, y = 273.687, z = -1578.332 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 13, drop_tag = "史莱姆", area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3286, gadget_id = 70211002, pos = { x = 2706.941, y = 273.719, z = -1579.951 }, rot = { x = 0.000, y = 322.544, z = 0.000 }, level = 26, drop_tag = "战斗低级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 }
}

-- 区域
regions = {
	{ config_id = 233, shape = RegionShape.SPHERE, radius = 3, pos = { x = 2707.326, y = 273.740, z = -1579.823 }, area_id = 1 }
}

-- 触发器
triggers = {
	{ config_id = 1000233, name = "ENTER_REGION_233", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_233", action = "action_EVENT_ENTER_REGION_233" },
	{ config_id = 1000234, name = "ANY_MONSTER_DIE_234", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_234", action = "action_EVENT_ANY_MONSTER_DIE_234" }
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
		monsters = { },
		gadgets = { 3286 },
		regions = { 233 },
		triggers = { "ENTER_REGION_233", "ANY_MONSTER_DIE_234" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_233(context, evt)
	if evt.param1 ~= 233 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_233(context, evt)
	-- 将configid为 3286 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3286, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1032, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1033, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1031, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_234(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_234(context, evt)
	-- 解锁目标3286
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 3286, state = GadgetState.Default }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : unlock_gadget")
		return -1
	end
	
	return 0
end