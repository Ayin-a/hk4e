-- 基础信息
local base_info = {
	group_id = 144001128
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 128001, monster_id = 21010301, pos = { x = 731.206, y = 122.050, z = 402.270 }, rot = { x = 0.000, y = 331.972, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, area_id = 102 },
	{ config_id = 128002, monster_id = 21010101, pos = { x = 732.055, y = 121.922, z = 397.015 }, rot = { x = 0.000, y = 214.991, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, pose_id = 9015, area_id = 102 },
	{ config_id = 128003, monster_id = 21010101, pos = { x = 742.357, y = 121.973, z = 403.382 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, area_id = 102 },
	{ config_id = 128004, monster_id = 21010401, pos = { x = 742.875, y = 128.618, z = 398.528 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, pose_id = 402, area_id = 102 },
	{ config_id = 128005, monster_id = 21010501, pos = { x = 743.638, y = 125.632, z = 389.353 }, rot = { x = 0.000, y = 226.552, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32, area_id = 102 },
	{ config_id = 128006, monster_id = 22010201, pos = { x = 739.003, y = 122.074, z = 398.843 }, rot = { x = 0.000, y = 278.395, z = 0.000 }, level = 20, drop_tag = "深渊法师", disableWander = true, area_id = 102 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 128007, gadget_id = 70211012, pos = { x = 736.216, y = 122.083, z = 399.752 }, rot = { x = 0.000, y = 96.009, z = 0.000 }, level = 16, drop_tag = "战斗中级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 102 },
	{ config_id = 128009, gadget_id = 70300089, pos = { x = 731.270, y = 121.903, z = 396.124 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 128010, gadget_id = 70950087, pos = { x = 736.158, y = 120.000, z = 417.224 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 128011, gadget_id = 70950087, pos = { x = 720.309, y = 120.000, z = 406.966 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 128012, gadget_id = 70950087, pos = { x = 751.600, y = 120.000, z = 399.813 }, rot = { x = 0.000, y = 316.979, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 128013, gadget_id = 70220013, pos = { x = 732.556, y = 122.036, z = 406.587 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 128014, gadget_id = 70220026, pos = { x = 734.490, y = 122.022, z = 406.041 }, rot = { x = 0.000, y = 30.366, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 128015, gadget_id = 70290061, pos = { x = 721.458, y = 119.896, z = 422.561 }, rot = { x = 0.000, y = 330.215, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 128016, gadget_id = 70290061, pos = { x = 746.653, y = 119.352, z = 413.118 }, rot = { x = 0.000, y = 43.359, z = 0.000 }, level = 1, area_id = 102 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1128008, name = "ANY_MONSTER_DIE_128008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_128008", action = "action_EVENT_ANY_MONSTER_DIE_128008" }
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
		monsters = { 128001, 128002, 128003, 128004, 128005, 128006 },
		gadgets = { 128007, 128009, 128010, 128011, 128012, 128013, 128014, 128015, 128016 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_128008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_128008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_128008(context, evt)
	-- 将configid为 128007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 128007, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end