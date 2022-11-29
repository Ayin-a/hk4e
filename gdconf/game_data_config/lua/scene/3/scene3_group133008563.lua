-- 基础信息
local base_info = {
	group_id = 133008563
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 563001, monster_id = 21010901, pos = { x = 992.000, y = 340.143, z = -979.133 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "远程丘丘人", disableWander = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 563005, monster_id = 21011401, pos = { x = 992.394, y = 337.504, z = -976.677 }, rot = { x = 0.000, y = 355.381, z = 0.000 }, level = 30, drop_tag = "丘丘人", disableWander = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 563006, monster_id = 21011401, pos = { x = 987.242, y = 336.720, z = -963.406 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, climate_area_id = 1, area_id = 10 },
	{ config_id = 563007, monster_id = 21011301, pos = { x = 989.257, y = 338.750, z = -977.123 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "丘丘人", disableWander = true, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 563002, gadget_id = 70211012, pos = { x = 989.878, y = 336.187, z = -966.511 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "雪山战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 },
	{ config_id = 563004, gadget_id = 70360099, pos = { x = 988.917, y = 336.603, z = -969.433 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1563003, name = "ANY_MONSTER_DIE_563003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_563003", action = "action_EVENT_ANY_MONSTER_DIE_563003" },
	{ config_id = 1563008, name = "MONSTER_BATTLE_563008", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_563008", action = "action_EVENT_MONSTER_BATTLE_563008" }
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
		monsters = { 563006 },
		gadgets = { 563002, 563004 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_563003", "MONSTER_BATTLE_563008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_563003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_563003(context, evt)
	-- 将configid为 563002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 563002, GadgetState.Default) then
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
function condition_EVENT_MONSTER_BATTLE_563008(context, evt)
	if 563006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_563008(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 563001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 563005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 563007, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end