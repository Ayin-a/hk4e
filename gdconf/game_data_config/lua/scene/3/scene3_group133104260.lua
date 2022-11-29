-- 基础信息
local base_info = {
	group_id = 133104260
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 260001, monster_id = 22010201, pos = { x = 525.817, y = 194.990, z = 233.176 }, rot = { x = 0.000, y = 47.921, z = 0.000 }, level = 17, drop_tag = "深渊法师", disableWander = true, area_id = 9 },
	{ config_id = 260003, monster_id = 20011001, pos = { x = 533.752, y = 194.990, z = 233.473 }, rot = { x = 0.000, y = 245.543, z = 0.000 }, level = 19, drop_tag = "史莱姆", area_id = 9 },
	{ config_id = 260004, monster_id = 20011001, pos = { x = 534.896, y = 194.990, z = 239.822 }, rot = { x = 0.000, y = 65.777, z = 0.000 }, level = 19, drop_tag = "史莱姆", area_id = 9 },
	{ config_id = 260005, monster_id = 20011001, pos = { x = 540.174, y = 194.990, z = 235.154 }, rot = { x = 0.000, y = 117.833, z = 0.000 }, level = 19, drop_tag = "史莱姆", area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 260006, gadget_id = 70211022, pos = { x = 535.362, y = 194.104, z = 235.807 }, rot = { x = 0.000, y = 46.099, z = 0.000 }, level = 16, drop_tag = "战斗高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 }
}

-- 区域
regions = {
	{ config_id = 260002, shape = RegionShape.SPHERE, radius = 5, pos = { x = 536.215, y = 194.990, z = 236.214 }, area_id = 9 }
}

-- 触发器
triggers = {
	{ config_id = 1260002, name = "ENTER_REGION_260002", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_260002", action = "" },
	{ config_id = 1260007, name = "MONSTER_BATTLE_260007", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_260007", action = "action_EVENT_MONSTER_BATTLE_260007" },
	{ config_id = 1260008, name = "ANY_MONSTER_DIE_260008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_260008", action = "action_EVENT_ANY_MONSTER_DIE_260008" }
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
		monsters = { 260001 },
		gadgets = { 260006 },
		regions = { 260002 },
		triggers = { "ENTER_REGION_260002", "MONSTER_BATTLE_260007", "ANY_MONSTER_DIE_260008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_260002(context, evt)
	if evt.param1 ~= 260002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_260007(context, evt)
	if 260001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_260007(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 260003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 260004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 260005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_260008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_260008(context, evt)
	-- 将configid为 260006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 260006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end