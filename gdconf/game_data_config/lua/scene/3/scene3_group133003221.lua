-- 基础信息
local base_info = {
	group_id = 133003221
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 904, monster_id = 21030101, pos = { x = 2843.005, y = 259.650, z = -1345.736 }, rot = { x = 0.000, y = 43.738, z = 0.000 }, level = 15, drop_tag = "丘丘萨满", disableWander = true, area_id = 1 },
	{ config_id = 905, monster_id = 21010301, pos = { x = 2845.902, y = 260.024, z = -1345.352 }, rot = { x = 0.000, y = 268.898, z = 0.000 }, level = 15, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 1 },
	{ config_id = 906, monster_id = 21010401, pos = { x = 2847.199, y = 260.377, z = -1340.229 }, rot = { x = 0.000, y = 207.221, z = 0.000 }, level = 15, drop_tag = "远程丘丘人", pose_id = 9003, area_id = 1 },
	{ config_id = 907, monster_id = 20011001, pos = { x = 2844.280, y = 259.877, z = -1343.674 }, rot = { x = 0.000, y = 134.757, z = 0.000 }, level = 15, drop_tag = "史莱姆", disableWander = true, area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2993, gadget_id = 70211002, pos = { x = 2844.054, y = 259.773, z = -1347.691 }, rot = { x = 0.000, y = 187.861, z = 0.000 }, level = 26, drop_tag = "战斗低级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 },
	{ config_id = 3431, gadget_id = 70310003, pos = { x = 2841.131, y = 259.542, z = -1343.861 }, rot = { x = 0.000, y = 319.928, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000180, name = "ANY_MONSTER_DIE_180", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_180", action = "action_EVENT_ANY_MONSTER_DIE_180", tlog_tag = "望风山地_221_怪物营地_结算" }
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
		monsters = { 904, 905, 906, 907 },
		gadgets = { 2993, 3431 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_180" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_180(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_180(context, evt)
	-- 解锁目标2993
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 2993, state = GadgetState.Default }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : unlock_gadget")
		return -1
	end
	
	return 0
end