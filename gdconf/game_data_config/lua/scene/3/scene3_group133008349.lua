-- 基础信息
local base_info = {
	group_id = 133008349
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 349001, monster_id = 21011301, pos = { x = 1221.512, y = 342.765, z = -1002.877 }, rot = { x = 11.510, y = 129.720, z = 339.673 }, level = 30, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, climate_area_id = 1, area_id = 10 },
	{ config_id = 349004, monster_id = 21011401, pos = { x = 1227.711, y = 347.492, z = -990.437 }, rot = { x = 25.404, y = 177.837, z = 352.164 }, level = 30, drop_tag = "丘丘人", disableWander = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 349005, monster_id = 21010901, pos = { x = 1231.629, y = 341.827, z = -1009.546 }, rot = { x = 20.448, y = 221.149, z = 11.286 }, level = 30, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 349002, gadget_id = 70211012, pos = { x = 1220.856, y = 343.277, z = -1001.566 }, rot = { x = 18.544, y = 145.030, z = 353.499 }, level = 26, drop_tag = "雪山战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1349003, name = "ANY_MONSTER_DIE_349003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_349003", action = "action_EVENT_ANY_MONSTER_DIE_349003" },
	{ config_id = 1349006, name = "MONSTER_BATTLE_349006", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_349006", action = "action_EVENT_MONSTER_BATTLE_349006" }
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
		monsters = { 349004, 349005 },
		gadgets = { 349002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_349003", "MONSTER_BATTLE_349006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_349003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_349003(context, evt)
	-- 将configid为 349002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 349002, GadgetState.Default) then
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
function condition_EVENT_MONSTER_BATTLE_349006(context, evt)
	if 349005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_349006(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 349001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end