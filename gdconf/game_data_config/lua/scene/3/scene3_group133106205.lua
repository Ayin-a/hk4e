-- 基础信息
local base_info = {
	group_id = 133106205
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 205002, monster_id = 26010201, pos = { x = -956.979, y = 198.228, z = 899.272 }, rot = { x = 351.882, y = 20.588, z = 358.855 }, level = 32, drop_tag = "骗骗花", area_id = 8 },
	{ config_id = 205003, monster_id = 20011201, pos = { x = -960.453, y = 198.689, z = 903.351 }, rot = { x = 354.814, y = 63.478, z = 353.642 }, level = 32, drop_tag = "史莱姆", area_id = 8 },
	{ config_id = 205004, monster_id = 20011201, pos = { x = -956.600, y = 198.600, z = 902.864 }, rot = { x = 353.677, y = 332.809, z = 5.228 }, level = 32, drop_tag = "史莱姆", area_id = 8 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 205005, gadget_id = 70290009, pos = { x = -955.308, y = 198.254, z = 901.296 }, rot = { x = 351.882, y = 20.588, z = 358.855 }, level = 32, area_id = 8 },
	{ config_id = 205006, gadget_id = 70500000, pos = { x = -955.308, y = 198.254, z = 901.296 }, rot = { x = 351.882, y = 20.585, z = 358.855 }, level = 32, point_type = 3005, owner = 205005, area_id = 8 },
	{ config_id = 205007, gadget_id = 70290009, pos = { x = -962.437, y = 198.628, z = 901.540 }, rot = { x = 358.603, y = 92.780, z = 351.921 }, level = 32, area_id = 8 },
	{ config_id = 205008, gadget_id = 70500000, pos = { x = -962.437, y = 198.628, z = 901.540 }, rot = { x = 358.602, y = 92.777, z = 351.921 }, level = 32, point_type = 3005, owner = 205007, area_id = 8 },
	{ config_id = 205009, gadget_id = 70290009, pos = { x = -962.167, y = 198.703, z = 905.431 }, rot = { x = 358.826, y = 290.707, z = 8.114 }, level = 32, area_id = 8 },
	{ config_id = 205010, gadget_id = 70500000, pos = { x = -962.167, y = 198.703, z = 905.431 }, rot = { x = 358.826, y = 290.707, z = 8.114 }, level = 32, point_type = 3005, owner = 205009, area_id = 8 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1205011, name = "MONSTER_BATTLE_205011", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_205011", action = "action_EVENT_MONSTER_BATTLE_205011" }
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
		monsters = { 205003, 205004 },
		gadgets = { 205005, 205006, 205007, 205008, 205009, 205010 },
		regions = { },
		triggers = { "MONSTER_BATTLE_205011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_205011(context, evt)
	if 205003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_205011(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 205001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 205002, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end