-- 基础信息
local base_info = {
	group_id = 133304130
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 130006, monster_id = 22010101, pos = { x = -1101.911, y = 228.621, z = 2879.572 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "深渊法师", disableWander = true, pose_id = 9013, area_id = 21 },
	{ config_id = 130007, monster_id = 20011201, pos = { x = -1100.595, y = 228.219, z = 2881.571 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "史莱姆", disableWander = true, area_id = 21 },
	{ config_id = 130009, monster_id = 21011001, pos = { x = -1122.123, y = 234.699, z = 2910.586 }, rot = { x = 0.000, y = 197.068, z = 0.000 }, level = 30, drop_tag = "远程丘丘人", disableWander = true, area_id = 21 },
	{ config_id = 130010, monster_id = 21020201, pos = { x = -1111.014, y = 228.903, z = 2901.761 }, rot = { x = 0.000, y = 278.102, z = 0.000 }, level = 30, drop_tag = "丘丘暴徒", disableWander = true, area_id = 21 },
	{ config_id = 130012, monster_id = 21010201, pos = { x = -1099.382, y = 227.212, z = 2883.157 }, rot = { x = 0.000, y = 215.430, z = 0.000 }, level = 30, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 21 },
	{ config_id = 130013, monster_id = 21010201, pos = { x = -1097.960, y = 226.333, z = 2884.796 }, rot = { x = 0.000, y = 74.360, z = 0.000 }, level = 30, drop_tag = "丘丘人", area_id = 21 },
	{ config_id = 130015, monster_id = 21010501, pos = { x = -1110.346, y = 232.583, z = 2889.229 }, rot = { x = 0.000, y = 56.084, z = 0.000 }, level = 30, drop_tag = "远程丘丘人", area_id = 21 },
	{ config_id = 130017, monster_id = 21011001, pos = { x = -1112.017, y = 232.573, z = 2890.616 }, rot = { x = 0.000, y = 37.038, z = 0.000 }, level = 30, drop_tag = "远程丘丘人", area_id = 21 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 130001, gadget_id = 70211012, pos = { x = -1104.242, y = 229.285, z = 2898.175 }, rot = { x = 0.000, y = 46.048, z = 0.000 }, level = 26, drop_tag = "战斗中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, explore = { name = "chest", exp = 10 }, area_id = 21 },
	{ config_id = 130002, gadget_id = 70220013, pos = { x = -1116.403, y = 232.582, z = 2880.466 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 130003, gadget_id = 70220013, pos = { x = -1118.501, y = 232.579, z = 2881.612 }, rot = { x = 0.000, y = 330.897, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 130004, gadget_id = 70220013, pos = { x = -1119.591, y = 232.584, z = 2888.543 }, rot = { x = 0.000, y = 336.075, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 130011, gadget_id = 70220013, pos = { x = -1111.650, y = 232.583, z = 2883.726 }, rot = { x = 0.000, y = 319.578, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 130018, gadget_id = 70220005, pos = { x = -1117.740, y = 232.578, z = 2880.504 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1130008, name = "MONSTER_BATTLE_130008", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_130008" },
	{ config_id = 1130014, name = "ANY_MONSTER_DIE_130014", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_130014", action = "action_EVENT_ANY_MONSTER_DIE_130014", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 130016, monster_id = 21010901, pos = { x = -1114.143, y = 232.581, z = 2881.180 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "远程丘丘人", area_id = 21 }
	},
	regions = {
		{ config_id = 130005, shape = RegionShape.SPHERE, radius = 5, pos = { x = -1116.199, y = 232.572, z = 2884.796 }, area_id = 21 }
	},
	triggers = {
		{ config_id = 1130005, name = "ENTER_REGION_130005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_130005", action = "action_EVENT_ENTER_REGION_130005" }
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
		monsters = { 130007, 130009, 130010, 130012, 130013 },
		gadgets = { 130001, 130002, 130003, 130004, 130011, 130018 },
		regions = { },
		triggers = { "MONSTER_BATTLE_130008", "ANY_MONSTER_DIE_130014" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_MONSTER_BATTLE_130008(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 130006, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 130015, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 130017, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_130014(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_130014(context, evt)
	-- 将configid为 130001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 130001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end