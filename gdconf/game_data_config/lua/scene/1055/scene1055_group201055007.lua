-- 基础信息
local base_info = {
	group_id = 201055007
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 7004, monster_id = 20011201, pos = { x = -19.680, y = 48.832, z = -89.968 }, rot = { x = 0.000, y = 276.429, z = 0.000 }, level = 1 },
	{ config_id = 7005, monster_id = 20011201, pos = { x = -19.697, y = 48.832, z = -87.212 }, rot = { x = 0.000, y = 271.430, z = 0.000 }, level = 1 },
	{ config_id = 7006, monster_id = 20011301, pos = { x = -18.606, y = 48.832, z = -88.561 }, rot = { x = 0.000, y = 270.741, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 7001, gadget_id = 70211001, pos = { x = -30.572, y = 53.813, z = -48.631 }, rot = { x = 0.000, y = 267.497, z = 0.000 }, level = 11, drop_tag = "战斗低级璃月", isOneoff = true, persistent = true },
	{ config_id = 7002, gadget_id = 70211102, pos = { x = -15.845, y = 48.578, z = -88.293 }, rot = { x = 0.000, y = 269.425, z = 0.000 }, level = 11, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true },
	{ config_id = 7007, gadget_id = 70211011, pos = { x = 19.692, y = 50.996, z = -96.166 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 11, drop_tag = "战斗中级璃月", isOneoff = true, persistent = true },
	{ config_id = 7008, gadget_id = 70220014, pos = { x = -38.610, y = 54.755, z = 8.779 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7009, gadget_id = 70220014, pos = { x = -37.812, y = 54.918, z = 7.409 }, rot = { x = 15.151, y = 57.165, z = 80.426 }, level = 1 },
	{ config_id = 7010, gadget_id = 70220014, pos = { x = -48.591, y = 54.968, z = 11.360 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7011, gadget_id = 70220014, pos = { x = -47.435, y = 54.927, z = 12.425 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7012, gadget_id = 70220014, pos = { x = -48.580, y = 54.962, z = 12.390 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7013, gadget_id = 70220013, pos = { x = -47.858, y = 54.897, z = 9.803 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7014, gadget_id = 70220013, pos = { x = -37.326, y = 53.546, z = -43.487 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7015, gadget_id = 70220014, pos = { x = -39.001, y = 53.648, z = -43.025 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7016, gadget_id = 70220014, pos = { x = -38.945, y = 53.555, z = -44.186 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7017, gadget_id = 70220013, pos = { x = -75.326, y = 53.766, z = -69.356 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7018, gadget_id = 70220014, pos = { x = -75.402, y = 53.766, z = -67.828 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7019, gadget_id = 70220014, pos = { x = -73.747, y = 53.779, z = -69.326 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7021, gadget_id = 70220013, pos = { x = -29.235, y = 48.902, z = -71.391 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7023, gadget_id = 70220014, pos = { x = -15.513, y = 48.657, z = -84.435 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7024, gadget_id = 70220014, pos = { x = -15.277, y = 48.604, z = -85.585 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7025, gadget_id = 70220036, pos = { x = -28.500, y = 50.943, z = -88.128 }, rot = { x = 358.208, y = 326.364, z = 343.304 }, level = 1 },
	{ config_id = 7026, gadget_id = 70220014, pos = { x = -42.371, y = 48.837, z = -63.924 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7027, gadget_id = 70220014, pos = { x = -39.157, y = 48.830, z = -65.591 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7028, gadget_id = 70220014, pos = { x = -40.181, y = 48.762, z = -66.800 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7029, gadget_id = 70220013, pos = { x = -40.823, y = 48.830, z = -64.619 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7030, gadget_id = 70220014, pos = { x = -80.295, y = 48.400, z = -75.389 }, rot = { x = 0.000, y = 0.000, z = 264.254 }, level = 1 },
	{ config_id = 7031, gadget_id = 70220014, pos = { x = -81.367, y = 48.400, z = -76.086 }, rot = { x = 276.054, y = 180.000, z = 180.000 }, level = 1 },
	{ config_id = 7032, gadget_id = 70220013, pos = { x = 56.847, y = 49.391, z = -47.922 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7033, gadget_id = 70220014, pos = { x = 58.351, y = 49.386, z = -47.415 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7034, gadget_id = 70220013, pos = { x = 59.059, y = 49.345, z = -49.317 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7035, gadget_id = 70220014, pos = { x = 60.590, y = 49.309, z = -47.704 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 7003, shape = RegionShape.SPHERE, radius = 5, pos = { x = -17.915, y = 48.832, z = -88.619 } }
}

-- 触发器
triggers = {
	{ config_id = 1007003, name = "ENTER_REGION_7003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_7003", action = "action_EVENT_ENTER_REGION_7003" },
	{ config_id = 1007036, name = "ANY_MONSTER_DIE_7036", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_7036", action = "action_EVENT_ANY_MONSTER_DIE_7036" }
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
		monsters = { },
		gadgets = { 7001, 7002, 7007, 7008, 7009, 7010, 7011, 7012, 7013, 7014, 7015, 7016, 7017, 7018, 7019, 7021, 7023, 7024, 7025, 7026, 7027, 7028, 7029, 7030, 7031, 7032, 7033, 7034, 7035 },
		regions = { 7003 },
		triggers = { "ENTER_REGION_7003", "ANY_MONSTER_DIE_7036" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 7004, 7005, 7006 },
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
function condition_EVENT_ENTER_REGION_7003(context, evt)
	if evt.param1 ~= 7003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_7003(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201055007, 2)
	
	-- 将configid为 7002 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 7002, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_7036(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_7036(context, evt)
	-- 将configid为 7002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 7002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end