-- 基础信息
local base_info = {
	group_id = 133003317
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1091, monster_id = 24010101, pos = { x = 2852.874, y = 254.145, z = -1738.032 }, rot = { x = 0.000, y = 316.186, z = 0.000 }, level = 22, drop_tag = "遗迹守卫", pose_id = 101, area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3422, gadget_id = 70220019, pos = { x = 2851.288, y = 248.146, z = -1734.683 }, rot = { x = 356.797, y = 55.404, z = 358.868 }, level = 30, area_id = 1 },
	{ config_id = 3426, gadget_id = 70211022, pos = { x = 2851.069, y = 254.589, z = -1734.905 }, rot = { x = 0.236, y = 326.701, z = 359.722 }, level = 26, drop_tag = "战斗高级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000270, name = "ANY_MONSTER_DIE_270", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_270", action = "action_EVENT_ANY_MONSTER_DIE_270", tlog_tag = "望风山地_317_封印宝箱_结算" }
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
		-- description = ,
		monsters = { 1091 },
		gadgets = { 3422, 3426 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_270" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_270(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_270(context, evt)
	-- 解锁目标3426
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 3426, state = GadgetState.Default }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : unlock_gadget")
		return -1
	end
	
	return 0
end