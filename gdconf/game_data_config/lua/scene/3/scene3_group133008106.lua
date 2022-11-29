-- 基础信息
local base_info = {
	group_id = 133008106
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 106001, monster_id = 21011401, pos = { x = 1259.047, y = 383.116, z = -891.712 }, rot = { x = 0.000, y = 262.789, z = 0.000 }, level = 30, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, climate_area_id = 1, area_id = 10 },
	{ config_id = 106004, monster_id = 21011301, pos = { x = 1267.210, y = 386.996, z = -893.741 }, rot = { x = 0.000, y = 256.729, z = 0.000 }, level = 30, drop_tag = "丘丘人", disableWander = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 106005, monster_id = 21011301, pos = { x = 1251.082, y = 387.125, z = -894.148 }, rot = { x = 0.000, y = 85.218, z = 0.000 }, level = 30, drop_tag = "丘丘人", disableWander = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 106007, monster_id = 21030501, pos = { x = 1256.383, y = 383.321, z = -889.760 }, rot = { x = 0.000, y = 156.451, z = 0.000 }, level = 30, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 106002, gadget_id = 70211012, pos = { x = 1266.283, y = 383.698, z = -888.100 }, rot = { x = 9.323, y = 255.336, z = 346.848 }, level = 26, drop_tag = "雪山战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 },
	{ config_id = 106006, gadget_id = 70360099, pos = { x = 1257.509, y = 382.910, z = -892.376 }, rot = { x = 353.847, y = 0.525, z = 358.463 }, level = 30, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1106003, name = "ANY_MONSTER_DIE_106003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_106003", action = "action_EVENT_ANY_MONSTER_DIE_106003" },
	{ config_id = 1106008, name = "MONSTER_BATTLE_106008", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_106008", action = "action_EVENT_MONSTER_BATTLE_106008" }
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
		monsters = { 106001, 106007 },
		gadgets = { 106002, 106006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_106003", "MONSTER_BATTLE_106008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_106003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_106003(context, evt)
	-- 将configid为 106002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 106002, GadgetState.Default) then
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
function condition_EVENT_MONSTER_BATTLE_106008(context, evt)
	if 106007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_106008(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 106004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 106005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end