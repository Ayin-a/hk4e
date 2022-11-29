-- 基础信息
local base_info = {
	group_id = 133008358
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 358002, monster_id = 21020601, pos = { x = 1410.275, y = 319.952, z = -966.241 }, rot = { x = 349.069, y = 298.799, z = 354.049 }, level = 30, drop_tag = "丘丘暴徒", pose_id = 401, climate_area_id = 1, area_id = 10 },
	{ config_id = 358003, monster_id = 21030501, pos = { x = 1405.695, y = 320.499, z = -963.390 }, rot = { x = 0.000, y = 69.578, z = 0.000 }, level = 30, drop_tag = "丘丘萨满", pose_id = 9012, climate_area_id = 1, area_id = 10 },
	{ config_id = 358004, monster_id = 21011401, pos = { x = 1409.600, y = 321.023, z = -960.414 }, rot = { x = 0.000, y = 194.851, z = 0.000 }, level = 30, drop_tag = "丘丘人", pose_id = 9003, climate_area_id = 1, area_id = 10 },
	{ config_id = 358005, monster_id = 21011401, pos = { x = 1407.531, y = 319.621, z = -968.496 }, rot = { x = 0.000, y = 0.788, z = 0.000 }, level = 30, drop_tag = "丘丘人", pose_id = 9010, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 358001, gadget_id = 70211022, pos = { x = 1411.365, y = 320.367, z = -963.624 }, rot = { x = 2.794, y = 269.355, z = 9.712 }, level = 26, drop_tag = "雪山战斗高级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 },
	{ config_id = 358006, gadget_id = 70310015, pos = { x = 1407.516, y = 319.104, z = -970.574 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 358007, gadget_id = 70310015, pos = { x = 1407.508, y = 322.872, z = -953.168 }, rot = { x = 0.000, y = 264.580, z = 0.000 }, level = 30, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1358008, name = "ANY_MONSTER_DIE_358008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_358008", action = "action_EVENT_ANY_MONSTER_DIE_358008" },
	{ config_id = 1358009, name = "MONSTER_BATTLE_358009", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_358009", action = "action_EVENT_MONSTER_BATTLE_358009" }
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
		monsters = { 358002, 358003 },
		gadgets = { 358001, 358006, 358007 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_358008", "MONSTER_BATTLE_358009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_358008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_358008(context, evt)
	-- 将configid为 358001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 358001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_358009(context, evt)
	if 358002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_358009(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 358004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 358005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end