-- 基础信息
local base_info = {
	group_id = 133225079
}

-- DEFS_MISCS
defs = {
        group_id = 133225079,
       questList = {7216719,7216619,7217226,7217320},         --按天填入完成的任务ID
        chestList = {79004,79005,79006},        --按Suite组填入每组Suite完成时打开的宝箱ID
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 79001, monster_id = 22010401, pos = { x = -6223.989, y = 204.497, z = -2781.433 }, rot = { x = 1.853, y = 354.951, z = 2.140 }, level = 33, drop_tag = "深渊法师", disableWander = true, pose_id = 9013, climate_area_id = 7, area_id = 18 },
	{ config_id = 79002, monster_id = 22010401, pos = { x = -6253.741, y = 202.917, z = -2829.545 }, rot = { x = 331.162, y = 255.472, z = 12.735 }, level = 33, drop_tag = "深渊法师", disableWander = true, pose_id = 9013, climate_area_id = 7, area_id = 18 },
	{ config_id = 79003, monster_id = 22010401, pos = { x = -6255.508, y = 204.212, z = -2826.878 }, rot = { x = 355.637, y = 192.497, z = 32.064 }, level = 33, drop_tag = "深渊法师", disableWander = true, pose_id = 9013, climate_area_id = 7, area_id = 18 },
	{ config_id = 79010, monster_id = 22010401, pos = { x = -6221.435, y = 204.523, z = -2779.927 }, rot = { x = 0.000, y = 290.660, z = 0.000 }, level = 33, drop_tag = "深渊法师", disableWander = true, pose_id = 9013, climate_area_id = 7, area_id = 18 },
	{ config_id = 79011, monster_id = 22010401, pos = { x = -6238.885, y = 207.719, z = -2854.585 }, rot = { x = 352.118, y = 236.338, z = 6.733 }, level = 33, drop_tag = "深渊法师", disableWander = true, pose_id = 9013, climate_area_id = 7, area_id = 18 },
	{ config_id = 79012, monster_id = 22010401, pos = { x = -6241.834, y = 207.666, z = -2852.839 }, rot = { x = 359.895, y = 172.280, z = 10.759 }, level = 33, drop_tag = "深渊法师", disableWander = true, pose_id = 9013, climate_area_id = 7, area_id = 18 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 79004, gadget_id = 70211002, pos = { x = -6223.806, y = 204.409, z = -2778.635 }, rot = { x = 0.000, y = 153.344, z = 0.000 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
	{ config_id = 79005, gadget_id = 70211151, pos = { x = -6256.272, y = 203.598, z = -2829.888 }, rot = { x = 2.123, y = 53.454, z = 359.319 }, level = 26, chest_drop_id = 21910017, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
	{ config_id = 79006, gadget_id = 70211151, pos = { x = -6241.995, y = 208.523, z = -2857.353 }, rot = { x = 0.000, y = 24.722, z = 0.000 }, level = 26, chest_drop_id = 21910018, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 }
}

-- 区域
regions = {
	{ config_id = 79013, shape = RegionShape.SPHERE, radius = 5, pos = { x = -6240.986, y = 207.580, z = -2854.994 }, area_id = 18 }
}

-- 触发器
triggers = {
	{ config_id = 1079007, name = "ANY_MONSTER_DIE_79007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_79007", action = "action_EVENT_ANY_MONSTER_DIE_79007" },
	{ config_id = 1079008, name = "ANY_MONSTER_DIE_79008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_79008", action = "action_EVENT_ANY_MONSTER_DIE_79008" },
	{ config_id = 1079009, name = "ANY_MONSTER_DIE_79009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_79009", action = "action_EVENT_ANY_MONSTER_DIE_79009" },
	{ config_id = 1079013, name = "ENTER_REGION_79013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_79013", action = "action_EVENT_ENTER_REGION_79013" }
}

-- 变量
variables = {
	{ config_id = 1, name = "chestState", value = 0, no_refresh = true },
	{ config_id = 2, name = "suiteBySeq", value = 0, no_refresh = true }
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
		monsters = { 79001, 79010 },
		gadgets = { 79004 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_79007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 79002, 79003 },
		gadgets = { 79005 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_79008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 79006 },
		regions = { 79013 },
		triggers = { "ANY_MONSTER_DIE_79009", "ENTER_REGION_79013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_79007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_79007(context, evt)
	-- 将configid为 79004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 79004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_79008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_79008(context, evt)
	-- 将configid为 79005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 79005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_79009(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_79009(context, evt)
	-- 将configid为 79006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 79006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_79013(context, evt)
	if evt.param1 ~= 79013 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_79013(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 79011, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 79012, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

require "V2_2/DayFinishSuite"