-- 基础信息
local base_info = {
	group_id = 133001326
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 326001, monster_id = 21010201, pos = { x = 1243.656, y = 261.052, z = -1657.111 }, rot = { x = 0.000, y = 350.508, z = 0.000 }, level = 21, drop_tag = "丘丘人", pose_id = 9011, area_id = 2 },
	{ config_id = 326002, monster_id = 21010301, pos = { x = 1252.805, y = 261.927, z = -1648.617 }, rot = { x = 0.000, y = 176.338, z = 0.000 }, level = 21, drop_tag = "丘丘人", pose_id = 9003, area_id = 2 },
	{ config_id = 326003, monster_id = 21010401, pos = { x = 1254.928, y = 261.927, z = -1647.798 }, rot = { x = 0.000, y = 189.149, z = 0.000 }, level = 21, drop_tag = "远程丘丘人", area_id = 2 },
	{ config_id = 326004, monster_id = 21010401, pos = { x = 1250.486, y = 261.927, z = -1647.817 }, rot = { x = 0.000, y = 162.167, z = 0.000 }, level = 21, drop_tag = "远程丘丘人", pose_id = 402, area_id = 2 },
	{ config_id = 326006, monster_id = 21010401, pos = { x = 1223.889, y = 263.401, z = -1672.819 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, drop_tag = "远程丘丘人", pose_id = 402, area_id = 2 },
	{ config_id = 326007, monster_id = 21010401, pos = { x = 1226.494, y = 263.585, z = -1672.410 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 21, drop_tag = "远程丘丘人", pose_id = 9003, area_id = 2 },
	{ config_id = 326010, monster_id = 21010501, pos = { x = 1221.544, y = 263.405, z = -1671.401 }, rot = { x = 0.000, y = 118.757, z = 0.000 }, level = 21, drop_tag = "远程丘丘人", pose_id = 9010, area_id = 2 },
	{ config_id = 326011, monster_id = 21010101, pos = { x = 1264.235, y = 261.842, z = -1724.547 }, rot = { x = 0.000, y = 122.738, z = 0.000 }, level = 21, drop_tag = "丘丘人", pose_id = 9011, area_id = 2 },
	{ config_id = 326012, monster_id = 21010901, pos = { x = 1259.250, y = 262.330, z = -1723.505 }, rot = { x = 0.000, y = 92.925, z = 0.000 }, level = 21, drop_tag = "远程丘丘人", pose_id = 9003, area_id = 2 },
	{ config_id = 326013, monster_id = 21011001, pos = { x = 1266.866, y = 261.927, z = -1721.102 }, rot = { x = 0.000, y = 299.694, z = 0.000 }, level = 21, drop_tag = "远程丘丘人", pose_id = 32, area_id = 2 },
	{ config_id = 326014, monster_id = 21010401, pos = { x = 1293.177, y = 266.532, z = -1656.659 }, rot = { x = 0.000, y = 152.813, z = 0.000 }, level = 21, drop_tag = "远程丘丘人", pose_id = 402, area_id = 2 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 326008, gadget_id = 70300088, pos = { x = 1225.258, y = 263.557, z = -1667.441 }, rot = { x = 0.000, y = 75.468, z = 0.000 }, level = 15, area_id = 2 },
	{ config_id = 326009, gadget_id = 70300088, pos = { x = 1222.533, y = 263.377, z = -1668.361 }, rot = { x = 10.135, y = 76.930, z = 0.000 }, level = 15, area_id = 2 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1326005, name = "MONSTER_BATTLE_326005", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_326005", action = "action_EVENT_MONSTER_BATTLE_326005" }
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
		monsters = { 326001, 326002, 326006, 326007, 326010, 326011, 326012, 326013, 326014 },
		gadgets = { 326008, 326009 },
		regions = { },
		triggers = { "MONSTER_BATTLE_326005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_326005(context, evt)
	if 326002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_326005(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 326003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 326004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end