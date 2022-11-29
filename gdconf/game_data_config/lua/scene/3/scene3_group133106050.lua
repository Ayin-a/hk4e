-- 基础信息
local base_info = {
	group_id = 133106050
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 50001, monster_id = 21011201, pos = { x = -699.125, y = 215.846, z = 1307.097 }, rot = { x = 0.000, y = 245.845, z = 0.000 }, level = 26, drop_id = 1000100, disableWander = true, pose_id = 9013, area_id = 8 },
	{ config_id = 50002, monster_id = 21010601, pos = { x = -701.460, y = 214.765, z = 1304.446 }, rot = { x = 0.000, y = 339.617, z = 0.000 }, level = 26, drop_id = 1000100, disableWander = true, pose_id = 9016, area_id = 8 },
	{ config_id = 50003, monster_id = 21020301, pos = { x = -692.561, y = 217.481, z = 1311.745 }, rot = { x = 0.000, y = 227.834, z = 0.000 }, level = 30, drop_tag = "丘丘暴徒", disableWander = true, area_id = 8 },
	{ config_id = 50004, monster_id = 21030101, pos = { x = -694.690, y = 217.201, z = 1311.741 }, rot = { x = 0.000, y = 87.687, z = 0.000 }, level = 30, drop_tag = "丘丘萨满", disableWander = true, area_id = 8 },
	{ config_id = 50005, monster_id = 21010201, pos = { x = -693.381, y = 216.906, z = 1309.035 }, rot = { x = 0.000, y = 21.533, z = 0.000 }, level = 30, drop_tag = "丘丘人", disableWander = true, area_id = 8 },
	{ config_id = 50006, monster_id = 21010601, pos = { x = -700.227, y = 216.927, z = 1314.363 }, rot = { x = 0.000, y = 315.332, z = 0.000 }, level = 30, drop_tag = "丘丘人", pose_id = 9011, area_id = 8 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 50007, gadget_id = 70220013, pos = { x = -703.026, y = 216.847, z = 1316.204 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 50008, gadget_id = 70220013, pos = { x = -688.673, y = 217.707, z = 1311.329 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 50009, gadget_id = 70220014, pos = { x = -702.749, y = 216.750, z = 1314.526 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 50010, gadget_id = 70220014, pos = { x = -689.367, y = 217.926, z = 1312.724 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 50011, gadget_id = 70220014, pos = { x = -688.229, y = 218.053, z = 1312.785 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 50012, gadget_id = 70220005, pos = { x = -701.724, y = 216.907, z = 1314.768 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 50013, gadget_id = 70211012, pos = { x = -702.167, y = 216.722, z = 1312.775 }, rot = { x = 2.771, y = 176.291, z = 354.844 }, level = 26, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 8 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1050014, name = "ANY_MONSTER_DIE_50014", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_50014", action = "action_EVENT_ANY_MONSTER_DIE_50014" }
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
		monsters = { 50003, 50004, 50005, 50006 },
		gadgets = { 50007, 50008, 50009, 50010, 50011, 50012, 50013 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_50014" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 50001, 50002 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_50014(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_50014(context, evt)
	-- 将configid为 50013 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 50013, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end