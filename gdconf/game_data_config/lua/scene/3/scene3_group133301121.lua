-- 基础信息
local base_info = {
	group_id = 133301121
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 121001, monster_id = 28060103, pos = { x = -1270.913, y = 176.500, z = 3035.363 }, rot = { x = 0.000, y = 272.682, z = 0.000 }, level = 30, drop_tag = "走兽", isOneoff = true, pose_id = 1, area_id = 21 },
	{ config_id = 121002, monster_id = 28060103, pos = { x = -1283.469, y = 176.500, z = 3046.001 }, rot = { x = 0.000, y = 121.051, z = 0.000 }, level = 30, drop_tag = "走兽", isOneoff = true, pose_id = 1, area_id = 21 },
	{ config_id = 121003, monster_id = 28060103, pos = { x = -1283.424, y = 176.500, z = 3034.145 }, rot = { x = 0.000, y = 144.769, z = 0.000 }, level = 30, drop_tag = "走兽", isOneoff = true, pose_id = 1, area_id = 21 },
	{ config_id = 121006, monster_id = 28060103, pos = { x = -1265.678, y = 176.500, z = 3026.376 }, rot = { x = 0.000, y = 332.036, z = 0.000 }, level = 30, drop_tag = "走兽", isOneoff = true, pose_id = 1, area_id = 21 },
	{ config_id = 121007, monster_id = 28060103, pos = { x = -1277.959, y = 176.500, z = 3026.601 }, rot = { x = 0.000, y = 340.205, z = 0.000 }, level = 30, drop_tag = "走兽", isOneoff = true, pose_id = 1, area_id = 21 },
	{ config_id = 121008, monster_id = 28060103, pos = { x = -1283.667, y = 176.500, z = 3051.740 }, rot = { x = 0.000, y = 157.702, z = 0.000 }, level = 30, drop_tag = "走兽", isOneoff = true, pose_id = 1, area_id = 21 },
	{ config_id = 121009, monster_id = 28060103, pos = { x = -1289.706, y = 176.500, z = 3051.104 }, rot = { x = 0.000, y = 126.455, z = 0.000 }, level = 30, drop_tag = "走兽", isOneoff = true, pose_id = 1, area_id = 21 },
	{ config_id = 121012, monster_id = 28060103, pos = { x = -1269.560, y = 176.500, z = 3018.217 }, rot = { x = 0.000, y = 123.490, z = 0.000 }, level = 30, drop_tag = "走兽", isOneoff = true, pose_id = 1, area_id = 21 },
	{ config_id = 121018, monster_id = 28060103, pos = { x = -1276.196, y = 176.500, z = 3048.485 }, rot = { x = 0.000, y = 228.059, z = 0.000 }, level = 30, drop_tag = "走兽", isOneoff = true, pose_id = 1, area_id = 21 },
	{ config_id = 121019, monster_id = 28060103, pos = { x = -1287.125, y = 176.788, z = 3049.388 }, rot = { x = 0.000, y = 121.051, z = 0.000 }, level = 30, drop_tag = "走兽", isOneoff = true, pose_id = 1, area_id = 21 },
	{ config_id = 121020, monster_id = 28060103, pos = { x = -1283.429, y = 176.500, z = 3035.473 }, rot = { x = 0.000, y = 74.282, z = 0.000 }, level = 30, drop_tag = "走兽", isOneoff = true, pose_id = 1, area_id = 21 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 121011, gadget_id = 70210105, pos = { x = -1280.930, y = 176.500, z = 3042.840 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "水上搜刮点须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 21 },
	{ config_id = 121017, gadget_id = 70360001, pos = { x = -1275.980, y = 176.500, z = 3041.764 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 }
}

-- 区域
regions = {
	{ config_id = 121004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -1280.648, y = 176.500, z = 3041.917 }, area_id = 21 }
}

-- 触发器
triggers = {
	{ config_id = 1121004, name = "ENTER_REGION_121004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_121004", action = "action_EVENT_ENTER_REGION_121004", trigger_count = 0 },
	{ config_id = 1121005, name = "GROUP_LOAD_121005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_121005", action = "action_EVENT_GROUP_LOAD_121005", trigger_count = 0 },
	-- 1
	{ config_id = 1121013, name = "ANY_MONSTER_DIE_121013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_121013", action = "action_EVENT_ANY_MONSTER_DIE_121013" },
	-- 2
	{ config_id = 1121016, name = "ANY_MONSTER_DIE_121016", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_121016", action = "action_EVENT_ANY_MONSTER_DIE_121016", trigger_count = 0 }
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
	suite = 4,
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
		monsters = { 121018, 121019, 121020 },
		gadgets = { 121011 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 121001, 121002, 121003, 121012 },
		gadgets = { 121011, 121017 },
		regions = { 121004 },
		triggers = { "ENTER_REGION_121004", "GROUP_LOAD_121005", "ANY_MONSTER_DIE_121013" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 121006, 121007, 121008, 121009 },
		gadgets = { 121011, 121017 },
		regions = { },
		triggers = { "GROUP_LOAD_121005", "ANY_MONSTER_DIE_121016" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_121004(context, evt)
	if evt.param1 ~= 121004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_121004(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301121, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_121005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_121005(context, evt)
	-- 将configid为 121017 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 121017, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_121013(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_121013(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301121, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_121016(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_121016(context, evt)
	-- 将configid为 121017 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 121017, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end