-- 基础信息
local base_info = {
	group_id = 133003523
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 523004, monster_id = 21010201, pos = { x = 2317.555, y = 217.254, z = -1099.103 }, rot = { x = 0.000, y = 183.880, z = 0.000 }, level = 2, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 1 },
	{ config_id = 523005, monster_id = 21010201, pos = { x = 2313.568, y = 217.041, z = -1098.827 }, rot = { x = 0.000, y = 182.896, z = 0.000 }, level = 2, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 523006, gadget_id = 70211002, pos = { x = 2315.762, y = 216.858, z = -1096.506 }, rot = { x = 0.795, y = 186.520, z = 358.760 }, level = 1, drop_tag = "战斗低级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 },
	{ config_id = 523007, gadget_id = 70310001, pos = { x = 2313.373, y = 216.787, z = -1096.049 }, rot = { x = 0.000, y = 230.510, z = 0.000 }, level = 2, state = GadgetState.GearStart, area_id = 1 },
	{ config_id = 523008, gadget_id = 70310001, pos = { x = 2318.137, y = 216.914, z = -1096.366 }, rot = { x = 0.000, y = 146.213, z = 0.000 }, level = 2, state = GadgetState.GearStart, area_id = 1 },
	{ config_id = 523009, gadget_id = 70220013, pos = { x = 2311.518, y = 216.771, z = -1096.365 }, rot = { x = 0.000, y = 266.170, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 523010, gadget_id = 70220013, pos = { x = 2309.473, y = 216.559, z = -1096.008 }, rot = { x = 0.000, y = 227.288, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 523011, gadget_id = 70220014, pos = { x = 2309.029, y = 216.726, z = -1101.023 }, rot = { x = 0.000, y = 0.447, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 523012, gadget_id = 70220014, pos = { x = 2308.899, y = 216.720, z = -1102.048 }, rot = { x = 0.000, y = 0.447, z = 0.000 }, level = 2, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1523013, name = "ANY_MONSTER_DIE_523013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_523013", action = "action_EVENT_ANY_MONSTER_DIE_523013", tlog_tag = "新手区_安柏入队右边高地营地_清剿完成" }
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
		monsters = { 523004, 523005 },
		gadgets = { 523006, 523007, 523008, 523009, 523010, 523011, 523012 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_523013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_523013(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_523013(context, evt)
	-- 解锁目标523006
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 523006, state = GadgetState.Default }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : unlock_gadget")
		return -1
	end
	
	return 0
end