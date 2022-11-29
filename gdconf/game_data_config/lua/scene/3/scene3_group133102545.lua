-- 基础信息
local base_info = {
	group_id = 133102545
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 545001, monster_id = 21030101, pos = { x = 1267.198, y = 202.176, z = 954.887 }, rot = { x = 11.349, y = 0.884, z = 8.881 }, level = 21, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, area_id = 6 },
	{ config_id = 545004, monster_id = 21010901, pos = { x = 1269.790, y = 206.055, z = 944.601 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 21, drop_tag = "远程丘丘人", pose_id = 32, area_id = 6 },
	{ config_id = 545005, monster_id = 21010901, pos = { x = 1269.301, y = 202.269, z = 955.645 }, rot = { x = 12.214, y = 320.590, z = 356.838 }, level = 21, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32, area_id = 6 },
	{ config_id = 545010, monster_id = 21011201, pos = { x = 1273.137, y = 202.679, z = 954.563 }, rot = { x = 355.927, y = 249.479, z = 349.255 }, level = 21, drop_tag = "丘丘人", pose_id = 9012, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 545002, gadget_id = 70211012, pos = { x = 1269.767, y = 202.794, z = 952.724 }, rot = { x = 0.000, y = 318.816, z = 0.000 }, level = 16, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 545006, gadget_id = 70220013, pos = { x = 1269.618, y = 202.794, z = 950.150 }, rot = { x = 0.000, y = 359.436, z = 0.000 }, level = 19, area_id = 6 },
	{ config_id = 545007, gadget_id = 70220013, pos = { x = 1271.819, y = 202.794, z = 951.650 }, rot = { x = 0.000, y = 101.991, z = 0.000 }, level = 19, area_id = 6 },
	{ config_id = 545009, gadget_id = 70310001, pos = { x = 1267.441, y = 201.949, z = 956.520 }, rot = { x = 7.069, y = 9.112, z = 6.502 }, level = 19, state = GadgetState.GearStart, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1545003, name = "ANY_MONSTER_DIE_545003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_545003", action = "action_EVENT_ANY_MONSTER_DIE_545003" }
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
		monsters = { 545001, 545004, 545005, 545010 },
		gadgets = { 545002, 545006, 545007, 545009 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_545003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_545003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_545003(context, evt)
	-- 将configid为 545002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 545002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end