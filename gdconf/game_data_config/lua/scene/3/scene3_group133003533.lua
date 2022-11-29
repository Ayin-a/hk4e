-- 基础信息
local base_info = {
	group_id = 133003533
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 533001, monster_id = 21030301, pos = { x = 2710.921, y = 285.633, z = -1401.760 }, rot = { x = 0.000, y = 186.145, z = 0.000 }, level = 18, drop_tag = "丘丘萨满", disableWander = true, area_id = 1 },
	{ config_id = 533002, monster_id = 21010101, pos = { x = 2712.609, y = 285.468, z = -1405.639 }, rot = { x = 0.000, y = 304.108, z = 0.000 }, level = 18, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 1 },
	{ config_id = 533003, monster_id = 20010301, pos = { x = 2713.091, y = 285.611, z = -1403.150 }, rot = { x = 0.000, y = 225.326, z = 0.000 }, level = 18, drop_tag = "史莱姆", disableWander = true, area_id = 1 },
	{ config_id = 533004, monster_id = 21010701, pos = { x = 2708.859, y = 285.024, z = -1402.866 }, rot = { x = 0.000, y = 86.736, z = 0.000 }, level = 18, drop_tag = "丘丘人", disableWander = true, area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 533005, gadget_id = 70211012, pos = { x = 2711.258, y = 285.434, z = -1397.960 }, rot = { x = 0.500, y = 202.948, z = 354.701 }, level = 26, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 },
	{ config_id = 533006, gadget_id = 70310003, pos = { x = 2713.338, y = 285.680, z = -1400.637 }, rot = { x = 0.000, y = 216.808, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 1 },
	{ config_id = 533007, gadget_id = 70220013, pos = { x = 2708.119, y = 284.974, z = -1399.576 }, rot = { x = 8.936, y = 312.229, z = 0.000 }, level = 30, area_id = 1 },
	{ config_id = 533008, gadget_id = 70220013, pos = { x = 2705.781, y = 284.555, z = -1400.840 }, rot = { x = 8.327, y = 290.085, z = 0.000 }, level = 30, area_id = 1 },
	{ config_id = 533009, gadget_id = 70220014, pos = { x = 2704.120, y = 284.224, z = -1400.239 }, rot = { x = 0.000, y = 204.400, z = 352.904 }, level = 30, area_id = 1 },
	{ config_id = 533010, gadget_id = 70310004, pos = { x = 2711.029, y = 285.315, z = -1403.511 }, rot = { x = 0.000, y = 157.612, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1533011, name = "ANY_MONSTER_DIE_533011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_533011", action = "action_EVENT_ANY_MONSTER_DIE_533011" }
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
		monsters = { 533001, 533002, 533003, 533004 },
		gadgets = { 533005, 533006, 533007, 533008, 533009, 533010 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_533011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_533011(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_533011(context, evt)
	-- 解锁目标533005
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 533005, state = GadgetState.Default }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : unlock_gadget")
		return -1
	end
	
	return 0
end