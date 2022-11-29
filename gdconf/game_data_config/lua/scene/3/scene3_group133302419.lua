-- 基础信息
local base_info = {
	group_id = 133302419
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 419001, monster_id = 21030301, pos = { x = -869.185, y = 199.139, z = 2533.846 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "丘丘萨满", pose_id = 9012, area_id = 24 },
	{ config_id = 419003, monster_id = 21010701, pos = { x = -865.885, y = 197.046, z = 2538.703 }, rot = { x = 0.000, y = 159.511, z = 0.000 }, level = 27, drop_tag = "丘丘人", area_id = 24 },
	{ config_id = 419004, monster_id = 21010701, pos = { x = -864.296, y = 196.747, z = 2537.563 }, rot = { x = 0.000, y = 156.624, z = 0.000 }, level = 27, drop_tag = "丘丘人", area_id = 24 },
	{ config_id = 419007, monster_id = 28061401, pos = { x = -873.420, y = 197.586, z = 2544.195 }, rot = { x = 0.000, y = 172.388, z = 0.000 }, level = 27, drop_tag = "驮兽丘丘人", affix = { 5175 }, pose_id = 2, area_id = 24 },
	{ config_id = 419008, monster_id = 21011001, pos = { x = -886.836, y = 201.997, z = 2542.833 }, rot = { x = 0.000, y = 264.617, z = 0.000 }, level = 27, drop_tag = "远程丘丘人", area_id = 24 },
	{ config_id = 419013, monster_id = 28061402, pos = { x = -868.637, y = 197.329, z = 2545.087 }, rot = { x = 0.000, y = 172.388, z = 0.000 }, level = 27, drop_tag = "驮兽丘丘人", affix = { 5175 }, pose_id = 2, area_id = 24 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 419002, gadget_id = 70310006, pos = { x = -869.095, y = 197.970, z = 2536.491 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 24 },
	{ config_id = 419005, gadget_id = 70300086, pos = { x = -866.096, y = 197.303, z = 2531.154 }, rot = { x = 338.673, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 419006, gadget_id = 70300086, pos = { x = -871.948, y = 198.789, z = 2533.205 }, rot = { x = 13.827, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 419009, gadget_id = 70220013, pos = { x = -878.473, y = 199.622, z = 2537.710 }, rot = { x = 1.231, y = 327.506, z = 348.750 }, level = 27, area_id = 24 },
	{ config_id = 419010, gadget_id = 70220013, pos = { x = -879.075, y = 199.342, z = 2539.967 }, rot = { x = 9.638, y = 359.250, z = 351.119 }, level = 27, area_id = 24 },
	{ config_id = 419011, gadget_id = 70211002, pos = { x = -869.325, y = 197.629, z = 2539.297 }, rot = { x = 2.609, y = 3.491, z = 353.395 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, explore = { name = "chest", exp = 10 }, area_id = 24 },
	{ config_id = 419014, gadget_id = 70310001, pos = { x = -877.573, y = 199.760, z = 2534.285 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1419012, name = "ANY_MONSTER_DIE_419012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_419012", action = "action_EVENT_ANY_MONSTER_DIE_419012" },
	{ config_id = 1419015, name = "ANY_MONSTER_DIE_419015", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_419015", action = "action_EVENT_ANY_MONSTER_DIE_419015" }
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
		monsters = { 419003, 419004, 419008 },
		gadgets = { 419002, 419005, 419006, 419009, 419010, 419011, 419014 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_419015" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 419001 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_419012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_419012(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_419012(context, evt)
	-- 将configid为 419011 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 419011, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_419015(context, evt)
	-- 判断剩余怪物数量是否是1
	if ScriptLib.GetGroupMonsterCount(context) ~= 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_419015(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302419, 2)
	
	return 0
end