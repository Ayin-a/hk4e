-- 基础信息
local base_info = {
	group_id = 133106051
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 51001, monster_id = 21011001, pos = { x = -708.957, y = 207.310, z = 1258.202 }, rot = { x = 0.000, y = 159.100, z = 0.000 }, level = 26, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 8 },
	{ config_id = 51002, monster_id = 21011001, pos = { x = -707.504, y = 207.615, z = 1260.581 }, rot = { x = 0.000, y = 112.405, z = 0.000 }, level = 26, drop_id = 1000100, disableWander = true, pose_id = 9003, area_id = 8 },
	{ config_id = 51003, monster_id = 21010701, pos = { x = -705.660, y = 207.602, z = 1257.576 }, rot = { x = 0.000, y = 122.440, z = 0.000 }, level = 26, drop_id = 1000100, disableWander = true, area_id = 8 },
	{ config_id = 51004, monster_id = 21020201, pos = { x = -699.805, y = 207.663, z = 1244.246 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "丘丘暴徒", pose_id = 401, area_id = 8 },
	{ config_id = 51009, monster_id = 21010201, pos = { x = -698.995, y = 207.807, z = 1251.361 }, rot = { x = 0.000, y = 18.048, z = 0.000 }, level = 30, drop_tag = "丘丘人", pose_id = 9010, area_id = 8 },
	{ config_id = 51010, monster_id = 21010201, pos = { x = -704.171, y = 206.822, z = 1246.331 }, rot = { x = 0.000, y = 170.632, z = 0.000 }, level = 30, drop_tag = "丘丘人", pose_id = 9013, area_id = 8 },
	{ config_id = 51011, monster_id = 21010201, pos = { x = -703.124, y = 207.539, z = 1252.736 }, rot = { x = 0.000, y = 310.246, z = 0.000 }, level = 30, drop_tag = "丘丘人", pose_id = 9013, area_id = 8 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 51005, gadget_id = 70310001, pos = { x = -701.836, y = 207.394, z = 1242.039 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStart, area_id = 8 },
	{ config_id = 51006, gadget_id = 70300089, pos = { x = -704.096, y = 207.688, z = 1254.459 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 51007, gadget_id = 70300089, pos = { x = -698.378, y = 207.941, z = 1252.837 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 51008, gadget_id = 70300089, pos = { x = -704.042, y = 206.834, z = 1244.914 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 51012, gadget_id = 70211012, pos = { x = -698.217, y = 207.964, z = 1243.021 }, rot = { x = 7.928, y = 0.556, z = 8.005 }, level = 26, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 8 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1051013, name = "ANY_MONSTER_DIE_51013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_51013", action = "action_EVENT_ANY_MONSTER_DIE_51013" }
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
		monsters = { 51004, 51009, 51010, 51011 },
		gadgets = { 51005, 51006, 51007, 51008, 51012 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_51013" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 51001, 51002, 51003 },
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
function condition_EVENT_ANY_MONSTER_DIE_51013(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_51013(context, evt)
	-- 将configid为 51012 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 51012, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end