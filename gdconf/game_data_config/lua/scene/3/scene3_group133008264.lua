-- 基础信息
local base_info = {
	group_id = 133008264
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 264001, monster_id = 25030201, pos = { x = 1494.887, y = 267.920, z = -1146.543 }, rot = { x = 0.000, y = 139.347, z = 0.000 }, level = 30, drop_tag = "盗宝团", disableWander = true, pose_id = 9002, area_id = 10 },
	{ config_id = 264004, monster_id = 25070101, pos = { x = 1489.127, y = 267.786, z = -1147.881 }, rot = { x = 0.000, y = 48.084, z = 0.000 }, level = 30, drop_tag = "盗宝团", disableWander = true, pose_id = 4, area_id = 10 },
	{ config_id = 264005, monster_id = 25010301, pos = { x = 1491.868, y = 267.674, z = -1143.674 }, rot = { x = 0.000, y = 311.446, z = 0.000 }, level = 30, drop_tag = "盗宝团", disableWander = true, pose_id = 9006, area_id = 10 },
	{ config_id = 264006, monster_id = 25010201, pos = { x = 1490.953, y = 267.707, z = -1142.014 }, rot = { x = 0.000, y = 139.347, z = 0.000 }, level = 30, drop_tag = "盗宝团", disableWander = true, pose_id = 9009, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 264002, gadget_id = 70211012, pos = { x = 1495.830, y = 268.123, z = -1147.665 }, rot = { x = 7.660, y = 331.613, z = 2.931 }, level = 26, drop_tag = "雪山战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1264003, name = "ANY_MONSTER_DIE_264003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_264003", action = "action_EVENT_ANY_MONSTER_DIE_264003" },
	{ config_id = 1264007, name = "MONSTER_BATTLE_264007", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_264007", action = "action_EVENT_MONSTER_BATTLE_264007" }
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
		monsters = { 264001, 264005 },
		gadgets = { 264002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_264003", "MONSTER_BATTLE_264007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_264003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_264003(context, evt)
	-- 将configid为 264002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 264002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_264007(context, evt)
	if 264001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_264007(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 264004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 264006, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end