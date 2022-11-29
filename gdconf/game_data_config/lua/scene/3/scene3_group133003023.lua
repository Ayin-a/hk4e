-- 基础信息
local base_info = {
	group_id = 133003023
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 347, monster_id = 21010601, pos = { x = 2470.655, y = 244.745, z = -1413.513 }, rot = { x = 0.000, y = 55.317, z = 0.000 }, level = 12, drop_tag = "丘丘人", disableWander = true, area_id = 1 },
	{ config_id = 358, monster_id = 21010401, pos = { x = 2461.297, y = 249.106, z = -1429.675 }, rot = { x = 0.000, y = 339.070, z = 0.000 }, level = 12, drop_tag = "远程丘丘人", disableWander = true, area_id = 1 },
	{ config_id = 359, monster_id = 21010401, pos = { x = 2466.277, y = 245.152, z = -1416.915 }, rot = { x = 0.000, y = 284.108, z = 0.000 }, level = 12, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, area_id = 1 },
	{ config_id = 360, monster_id = 21010201, pos = { x = 2458.393, y = 246.254, z = -1416.142 }, rot = { x = 0.000, y = 286.254, z = 0.000 }, level = 12, drop_tag = "丘丘人", disableWander = true, area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2612, gadget_id = 70211002, pos = { x = 2472.908, y = 244.505, z = -1411.357 }, rot = { x = 0.000, y = 231.761, z = 0.000 }, level = 1, drop_tag = "战斗低级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 },
	{ config_id = 2933, gadget_id = 70310001, pos = { x = 2474.588, y = 244.473, z = -1412.309 }, rot = { x = 0.000, y = 114.494, z = 0.000 }, level = 2, state = GadgetState.GearStart, area_id = 1 },
	{ config_id = 2934, gadget_id = 70310001, pos = { x = 2465.012, y = 248.761, z = -1430.652 }, rot = { x = 0.000, y = 59.669, z = 0.000 }, level = 10, state = GadgetState.GearStart, area_id = 1 },
	{ config_id = 2935, gadget_id = 70220013, pos = { x = 2464.502, y = 248.315, z = -1433.221 }, rot = { x = 352.841, y = 31.722, z = 356.590 }, level = 10, area_id = 1 },
	{ config_id = 2936, gadget_id = 70220014, pos = { x = 2466.239, y = 248.241, z = -1433.111 }, rot = { x = 0.000, y = 249.903, z = 0.000 }, level = 10, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000122, name = "ANY_MONSTER_DIE_122", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_122", action = "action_EVENT_ANY_MONSTER_DIE_122" }
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
	rand_suite = true
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suites = {
	{
		-- suite_id = 1,
		-- description = suite_1,
		monsters = { 347, 358, 359, 360 },
		gadgets = { 2612, 2933, 2934, 2935, 2936 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_122" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_122(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_122(context, evt)
	-- 解锁目标2612
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 2612, state = GadgetState.Default }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : unlock_gadget")
		return -1
	end
	
	return 0
end