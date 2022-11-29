-- 基础信息
local base_info = {
	group_id = 144001125
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 125001, monster_id = 21010901, pos = { x = 612.466, y = 122.014, z = 334.031 }, rot = { x = 0.000, y = 218.296, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32, area_id = 102 },
	{ config_id = 125002, monster_id = 21010901, pos = { x = 623.849, y = 121.924, z = 343.230 }, rot = { x = 0.000, y = 33.082, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32, area_id = 102 },
	{ config_id = 125003, monster_id = 21010301, pos = { x = 613.715, y = 121.932, z = 336.635 }, rot = { x = 0.000, y = 316.577, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, area_id = 102 },
	{ config_id = 125005, monster_id = 21020101, pos = { x = 618.786, y = 122.000, z = 335.915 }, rot = { x = 0.000, y = 230.182, z = 0.000 }, level = 20, drop_tag = "丘丘暴徒", disableWander = true, area_id = 102 },
	{ config_id = 125006, monster_id = 21010301, pos = { x = 613.575, y = 121.977, z = 337.290 }, rot = { x = 0.000, y = 172.589, z = 313.417 }, level = 20, drop_tag = "丘丘人", disableWander = true, area_id = 102 },
	{ config_id = 125007, monster_id = 21010301, pos = { x = 622.983, y = 121.955, z = 335.043 }, rot = { x = 0.000, y = 253.088, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, area_id = 102 },
	{ config_id = 125024, monster_id = 21010401, pos = { x = 615.596, y = 123.737, z = 321.082 }, rot = { x = 0.000, y = 273.523, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, pose_id = 402, area_id = 102 },
	{ config_id = 125025, monster_id = 21010401, pos = { x = 620.973, y = 123.755, z = 356.393 }, rot = { x = 0.000, y = 348.975, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, pose_id = 402, area_id = 102 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 125008, gadget_id = 70220005, pos = { x = 611.332, y = 122.014, z = 335.139 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 125009, gadget_id = 70220005, pos = { x = 622.080, y = 121.872, z = 344.323 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 125010, gadget_id = 70220005, pos = { x = 625.437, y = 121.899, z = 334.500 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 125011, gadget_id = 70300088, pos = { x = 611.719, y = 122.015, z = 336.389 }, rot = { x = 0.000, y = 12.749, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 125012, gadget_id = 70300088, pos = { x = 612.591, y = 121.962, z = 337.981 }, rot = { x = 0.000, y = 33.238, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 125013, gadget_id = 70220026, pos = { x = 620.197, y = 121.899, z = 344.528 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 125014, gadget_id = 70220026, pos = { x = 625.063, y = 121.899, z = 335.918 }, rot = { x = 0.000, y = 42.460, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 125015, gadget_id = 70950087, pos = { x = 604.039, y = 120.000, z = 331.381 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 125016, gadget_id = 70950087, pos = { x = 618.509, y = 120.000, z = 356.122 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 125017, gadget_id = 70950087, pos = { x = 613.575, y = 120.000, z = 317.272 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 125018, gadget_id = 70290057, pos = { x = 596.573, y = 119.539, z = 329.952 }, rot = { x = 0.000, y = 86.994, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 125019, gadget_id = 70290057, pos = { x = 604.252, y = 119.420, z = 354.699 }, rot = { x = 0.000, y = 132.481, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 125022, gadget_id = 70950092, pos = { x = 621.779, y = 120.000, z = 355.499 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 125023, gadget_id = 70950092, pos = { x = 616.732, y = 120.000, z = 318.952 }, rot = { x = 0.000, y = 293.090, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 125026, gadget_id = 70211002, pos = { x = 619.980, y = 121.988, z = 337.308 }, rot = { x = 0.000, y = 228.942, z = 0.000 }, level = 16, drop_tag = "战斗低级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 102 }
}

-- 区域
regions = {
	{ config_id = 125004, shape = RegionShape.SPHERE, radius = 8, pos = { x = 618.571, y = 121.968, z = 336.614 }, area_id = 102 }
}

-- 触发器
triggers = {
	{ config_id = 1125004, name = "ENTER_REGION_125004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_125004", action = "action_EVENT_ENTER_REGION_125004" },
	{ config_id = 1125027, name = "ANY_MONSTER_DIE_125027", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_125027", action = "action_EVENT_ANY_MONSTER_DIE_125027" }
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
		monsters = { 125001, 125002, 125003, 125005, 125024, 125025 },
		gadgets = { 125008, 125009, 125010, 125011, 125012, 125013, 125014, 125015, 125016, 125017, 125018, 125019, 125022, 125023, 125026 },
		regions = { 125004 },
		triggers = { "ENTER_REGION_125004", "ANY_MONSTER_DIE_125027" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 125006, 125007 },
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
function condition_EVENT_ENTER_REGION_125004(context, evt)
	if evt.param1 ~= 125004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_125004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144001125, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_125027(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_125027(context, evt)
	-- 将configid为 125026 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 125026, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end