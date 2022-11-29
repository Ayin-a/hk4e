-- 基础信息
local base_info = {
	group_id = 166001325
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 325002, monster_id = 20011101, pos = { x = 1022.599, y = 900.440, z = 742.177 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "大史莱姆", area_id = 300 },
	{ config_id = 325003, monster_id = 20011101, pos = { x = 1010.245, y = 900.440, z = 771.435 }, rot = { x = 0.000, y = 210.554, z = 0.000 }, level = 36, drop_tag = "大史莱姆", area_id = 300 },
	{ config_id = 325004, monster_id = 20011001, pos = { x = 1019.058, y = 900.440, z = 737.060 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "史莱姆", area_id = 300 },
	{ config_id = 325005, monster_id = 20011001, pos = { x = 1025.930, y = 900.440, z = 738.357 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "史莱姆", area_id = 300 },
	{ config_id = 325006, monster_id = 20011001, pos = { x = 1023.981, y = 900.440, z = 747.486 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "史莱姆", area_id = 300 },
	{ config_id = 325007, monster_id = 20011001, pos = { x = 1022.100, y = 900.440, z = 785.502 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "史莱姆", area_id = 300 },
	{ config_id = 325008, monster_id = 20011001, pos = { x = 1011.667, y = 900.440, z = 778.059 }, rot = { x = 0.000, y = 50.350, z = 0.000 }, level = 36, drop_tag = "史莱姆", area_id = 300 },
	{ config_id = 325010, monster_id = 28050301, pos = { x = 1027.229, y = 928.725, z = 784.807 }, rot = { x = 0.000, y = 269.628, z = 0.000 }, level = 36, drop_tag = "采集动物", area_id = 300 },
	{ config_id = 325011, monster_id = 28010302, pos = { x = 998.283, y = 903.024, z = 761.545 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "采集动物", area_id = 300 },
	{ config_id = 325012, monster_id = 28010302, pos = { x = 1025.339, y = 901.681, z = 754.076 }, rot = { x = 0.000, y = 228.339, z = 0.000 }, level = 36, drop_tag = "采集动物", area_id = 300 },
	{ config_id = 325013, monster_id = 28010302, pos = { x = 1019.020, y = 900.602, z = 762.719 }, rot = { x = 0.000, y = 203.063, z = 0.000 }, level = 36, drop_tag = "采集动物", area_id = 300 },
	{ config_id = 325014, monster_id = 28010302, pos = { x = 1015.175, y = 903.585, z = 789.711 }, rot = { x = 0.000, y = 109.255, z = 0.000 }, level = 36, drop_tag = "采集动物", area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 325021, gadget_id = 70217014, pos = { x = 1031.423, y = 979.882, z = 781.982 }, rot = { x = 18.608, y = 283.091, z = 8.525 }, level = 26, drop_tag = "摩拉石箱璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1325009, name = "MONSTER_BATTLE_325009", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_325009", action = "action_EVENT_MONSTER_BATTLE_325009" },
	{ config_id = 1325020, name = "MONSTER_BATTLE_325020", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_325020", action = "action_EVENT_MONSTER_BATTLE_325020" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 325015, gadget_id = 70500000, pos = { x = 1013.476, y = 900.506, z = 768.496 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 2005, area_id = 300 },
		{ config_id = 325016, gadget_id = 70500000, pos = { x = 1014.042, y = 900.809, z = 736.065 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 2005, area_id = 300 },
		{ config_id = 325017, gadget_id = 70500000, pos = { x = 999.911, y = 900.450, z = 779.387 }, rot = { x = 0.000, y = 167.866, z = 0.000 }, level = 36, point_type = 2005, area_id = 300 },
		{ config_id = 325018, gadget_id = 70500000, pos = { x = 1017.583, y = 976.345, z = 711.161 }, rot = { x = 0.000, y = 91.597, z = 0.000 }, level = 36, point_type = 3010, area_id = 300 },
		{ config_id = 325019, gadget_id = 70500000, pos = { x = 1014.332, y = 975.671, z = 703.152 }, rot = { x = 0.000, y = 64.592, z = 0.000 }, level = 36, point_type = 3010, area_id = 300 }
	}
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
		monsters = { 325002, 325003, 325010, 325011, 325012, 325013, 325014 },
		gadgets = { 325021 },
		regions = { },
		triggers = { "MONSTER_BATTLE_325009", "MONSTER_BATTLE_325020" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_325009(context, evt)
	if 325002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_325009(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 325004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 325005, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟6秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 325006, delay_time = 6 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_325020(context, evt)
	if 325003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_325020(context, evt)
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 325007, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 325008, delay_time = 2 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end