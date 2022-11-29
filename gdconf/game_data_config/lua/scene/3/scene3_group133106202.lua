-- 基础信息
local base_info = {
	group_id = 133106202
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 202008, monster_id = 20011301, pos = { x = -427.586, y = 243.711, z = 974.164 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "大史莱姆", area_id = 8 },
	{ config_id = 202009, monster_id = 20011201, pos = { x = -432.374, y = 243.651, z = 977.202 }, rot = { x = 0.000, y = 42.684, z = 0.000 }, level = 32, drop_tag = "史莱姆", area_id = 8 },
	{ config_id = 202010, monster_id = 20011201, pos = { x = -428.507, y = 244.395, z = 978.241 }, rot = { x = 0.000, y = 312.592, z = 0.000 }, level = 32, drop_tag = "史莱姆", area_id = 8 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 202003, gadget_id = 70290009, pos = { x = -433.602, y = 243.134, z = 974.483 }, rot = { x = 0.000, y = 72.175, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 202004, gadget_id = 70500000, pos = { x = -433.602, y = 243.134, z = 974.483 }, rot = { x = 0.000, y = 72.172, z = 0.000 }, level = 32, point_type = 3005, owner = 202003, area_id = 8 },
	{ config_id = 202005, gadget_id = 70290009, pos = { x = -434.774, y = 243.283, z = 978.821 }, rot = { x = 0.000, y = 270.284, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 202006, gadget_id = 70500000, pos = { x = -434.774, y = 243.283, z = 978.821 }, rot = { x = 0.000, y = 270.284, z = 0.000 }, level = 32, point_type = 3005, owner = 202005, area_id = 8 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1202011, name = "MONSTER_BATTLE_202011", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_202011", action = "action_EVENT_MONSTER_BATTLE_202011" }
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
		monsters = { 202008 },
		gadgets = { 202003, 202004, 202005, 202006 },
		regions = { },
		triggers = { "MONSTER_BATTLE_202011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_202011(context, evt)
	if 202008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_202011(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 202009, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 202010, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end