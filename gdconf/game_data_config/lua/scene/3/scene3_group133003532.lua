-- 基础信息
local base_info = {
	group_id = 133003532
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 532001, monster_id = 21011001, pos = { x = 2919.301, y = 243.546, z = -1811.534 }, rot = { x = 0.000, y = 348.114, z = 0.000 }, level = 18, drop_tag = "远程丘丘人", disableWander = true, area_id = 1 },
	{ config_id = 532002, monster_id = 21011001, pos = { x = 2906.400, y = 244.697, z = -1817.895 }, rot = { x = 0.000, y = 21.836, z = 0.000 }, level = 18, drop_tag = "远程丘丘人", disableWander = true, area_id = 1 },
	{ config_id = 532003, monster_id = 21011001, pos = { x = 2903.896, y = 245.655, z = -1818.723 }, rot = { x = 0.000, y = 21.919, z = 0.000 }, level = 18, drop_tag = "远程丘丘人", disableWander = true, area_id = 1 },
	{ config_id = 532004, monster_id = 21030101, pos = { x = 2918.200, y = 243.161, z = -1820.603 }, rot = { x = 0.000, y = 341.275, z = 0.000 }, level = 18, drop_tag = "丘丘萨满", disableWander = true, area_id = 1 },
	{ config_id = 532005, monster_id = 21010101, pos = { x = 2915.491, y = 240.263, z = -1814.026 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, drop_tag = "丘丘人", disableWander = true, area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 532006, gadget_id = 70220013, pos = { x = 2916.212, y = 243.451, z = -1824.558 }, rot = { x = 354.040, y = 298.728, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 532007, gadget_id = 70220013, pos = { x = 2921.493, y = 242.310, z = -1823.247 }, rot = { x = 359.811, y = 8.930, z = 348.641 }, level = 15, area_id = 1 },
	{ config_id = 532008, gadget_id = 70220013, pos = { x = 2904.864, y = 241.355, z = -1816.648 }, rot = { x = 1.426, y = 336.113, z = 347.046 }, level = 15, area_id = 1 },
	{ config_id = 532009, gadget_id = 70310003, pos = { x = 2916.374, y = 243.534, z = -1821.356 }, rot = { x = 0.000, y = 180.421, z = 0.000 }, level = 15, state = GadgetState.GearStart, area_id = 1 },
	{ config_id = 532010, gadget_id = 70220013, pos = { x = 2917.880, y = 239.278, z = -1810.904 }, rot = { x = 355.996, y = 214.422, z = 350.265 }, level = 15, area_id = 1 },
	{ config_id = 532011, gadget_id = 70220013, pos = { x = 2918.436, y = 240.098, z = -1813.617 }, rot = { x = 0.000, y = 291.083, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 532012, gadget_id = 70220005, pos = { x = 2906.606, y = 241.091, z = -1816.898 }, rot = { x = 0.000, y = 156.166, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 532013, gadget_id = 70220005, pos = { x = 2920.420, y = 242.728, z = -1821.170 }, rot = { x = 0.000, y = 108.211, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 532014, gadget_id = 70211012, pos = { x = 2918.508, y = 242.765, z = -1825.732 }, rot = { x = 355.498, y = 358.230, z = 349.560 }, level = 11, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 },
	{ config_id = 532015, gadget_id = 70310003, pos = { x = 2917.284, y = 238.415, z = -1807.614 }, rot = { x = 0.000, y = 32.210, z = 0.000 }, level = 15, state = GadgetState.GearStart, area_id = 1 },
	{ config_id = 532016, gadget_id = 70310003, pos = { x = 2904.194, y = 240.062, z = -1807.829 }, rot = { x = 0.000, y = 110.614, z = 0.000 }, level = 15, state = GadgetState.GearStart, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1532017, name = "ANY_MONSTER_DIE_532017", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_532017", action = "action_EVENT_ANY_MONSTER_DIE_532017" }
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
		monsters = { 532001, 532002, 532003, 532004, 532005 },
		gadgets = { 532006, 532007, 532008, 532009, 532010, 532011, 532012, 532013, 532014, 532015, 532016 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_532017" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_532017(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_532017(context, evt)
	-- 解锁目标532014
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 532014, state = GadgetState.Default }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : unlock_gadget")
		return -1
	end
	
	return 0
end