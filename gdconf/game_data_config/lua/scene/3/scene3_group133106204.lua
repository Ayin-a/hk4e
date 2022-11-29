-- 基础信息
local base_info = {
	group_id = 133106204
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 204001, monster_id = 26010201, pos = { x = -763.433, y = 212.765, z = 1341.805 }, rot = { x = 348.629, y = 21.388, z = 354.310 }, level = 24, drop_tag = "骗骗花", area_id = 8 },
	{ config_id = 204003, monster_id = 20011201, pos = { x = -766.345, y = 212.501, z = 1340.106 }, rot = { x = 355.466, y = 63.976, z = 348.126 }, level = 24, drop_tag = "史莱姆", area_id = 8 },
	{ config_id = 204004, monster_id = 20011201, pos = { x = -762.355, y = 212.278, z = 1339.737 }, rot = { x = 348.171, y = 332.930, z = 4.652 }, level = 24, drop_tag = "史莱姆", area_id = 8 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 204005, gadget_id = 70290009, pos = { x = -761.117, y = 212.039, z = 1338.152 }, rot = { x = 348.629, y = 21.388, z = 354.310 }, level = 24, area_id = 8 },
	{ config_id = 204006, gadget_id = 70500000, pos = { x = -761.117, y = 212.039, z = 1338.152 }, rot = { x = 348.628, y = 21.385, z = 354.311 }, level = 24, point_type = 3005, owner = 204005, area_id = 8 },
	{ config_id = 204007, gadget_id = 70290009, pos = { x = -768.445, y = 211.902, z = 1338.234 }, rot = { x = 1.844, y = 92.793, z = 347.434 }, level = 24, area_id = 8 },
	{ config_id = 204008, gadget_id = 70500000, pos = { x = -768.445, y = 211.902, z = 1338.234 }, rot = { x = 1.843, y = 92.790, z = 347.434 }, level = 24, point_type = 3005, owner = 204007, area_id = 8 },
	{ config_id = 204009, gadget_id = 70290009, pos = { x = -768.023, y = 212.839, z = 1342.231 }, rot = { x = 354.366, y = 290.541, z = 11.399 }, level = 24, area_id = 8 },
	{ config_id = 204010, gadget_id = 70500000, pos = { x = -768.023, y = 212.839, z = 1342.231 }, rot = { x = 354.366, y = 290.541, z = 11.399 }, level = 24, point_type = 3005, owner = 204009, area_id = 8 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1204011, name = "MONSTER_BATTLE_204011", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_204011", action = "action_EVENT_MONSTER_BATTLE_204011" }
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
		monsters = { 204003, 204004 },
		gadgets = { 204005, 204006, 204007, 204008, 204009, 204010 },
		regions = { },
		triggers = { "MONSTER_BATTLE_204011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_204011(context, evt)
	if 204003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_204011(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 204001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 204002, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end