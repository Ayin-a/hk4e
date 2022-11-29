-- 基础信息
local base_info = {
	group_id = 220023004
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 4001, monster_id = 20010501, pos = { x = 142.879, y = 2.767, z = 51.595 }, rot = { x = 0.000, y = 41.709, z = 0.000 }, level = 1 },
	{ config_id = 4002, monster_id = 20010501, pos = { x = 140.935, y = 2.766, z = 53.181 }, rot = { x = 0.000, y = 79.205, z = 0.000 }, level = 1 },
	{ config_id = 4003, monster_id = 20010501, pos = { x = 139.536, y = 2.766, z = 55.445 }, rot = { x = 0.000, y = 75.205, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 4004, gadget_id = 70211012, pos = { x = 144.172, y = 2.766, z = 55.921 }, rot = { x = 0.000, y = 180.454, z = 0.000 }, level = 6, drop_tag = "战斗中级蒙德", isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 4, shape = RegionShape.SPHERE, radius = 5, pos = { x = 145.291, y = 2.766, z = 55.759 } }
}

-- 触发器
triggers = {
	{ config_id = 1000004, name = "ENTER_REGION_4", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4", action = "action_EVENT_ENTER_REGION_4", forbid_guest = false },
	{ config_id = 1000005, name = "ANY_MONSTER_DIE_5", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_5", action = "action_EVENT_ANY_MONSTER_DIE_5" }
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
		gadgets = { 4004 },
		regions = { 4 },
		triggers = { "ENTER_REGION_4", "ANY_MONSTER_DIE_5" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_4(context, evt)
	if evt.param1 ~= 4 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4(context, evt)
	-- 将configid为 4004 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4004, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 4001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 4002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 4003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_5(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_5(context, evt)
	-- 解锁目标4004
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 4004, state = GadgetState.Default }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : unlock_gadget")
		return -1
	end
	
	return 0
end