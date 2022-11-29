-- 基础信息
local base_info = {
	group_id = 133003027
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 761, monster_id = 20011201, pos = { x = 2568.723, y = 211.135, z = -1247.028 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, drop_tag = "史莱姆", area_id = 1 },
	{ config_id = 762, monster_id = 20011201, pos = { x = 2571.478, y = 211.208, z = -1248.062 }, rot = { x = 346.823, y = 179.690, z = 2.684 }, level = 1, drop_tag = "史莱姆", area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1353, gadget_id = 70211102, pos = { x = 2569.788, y = 211.355, z = -1248.408 }, rot = { x = 346.819, y = 171.707, z = 1.023 }, level = 1, drop_tag = "解谜低级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 }
}

-- 区域
regions = {
	{ config_id = 156, shape = RegionShape.SPHERE, radius = 3, pos = { x = 2569.698, y = 211.362, z = -1248.441 }, area_id = 1 }
}

-- 触发器
triggers = {
	{ config_id = 1000156, name = "ENTER_REGION_156", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_156", action = "action_EVENT_ENTER_REGION_156" },
	{ config_id = 1000164, name = "ANY_MONSTER_DIE_164", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_164", action = "action_EVENT_ANY_MONSTER_DIE_164" }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 1353 },
		regions = { 156 },
		triggers = { "ENTER_REGION_156", "ANY_MONSTER_DIE_164" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_156(context, evt)
	if evt.param1 ~= 156 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_156(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 761, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 762, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 将configid为 1353 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1353, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_164(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_164(context, evt)
	-- 解锁目标1353
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 1353, state = GadgetState.Default }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : unlock_gadget")
		return -1
	end
	
	return 0
end