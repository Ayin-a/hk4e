-- 基础信息
local base_info = {
	group_id = 133003526
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 526001, monster_id = 21010201, pos = { x = 2313.784, y = 230.804, z = -1221.620 }, rot = { x = 0.000, y = 23.042, z = 0.000 }, level = 7, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 1 },
	{ config_id = 526002, monster_id = 21010201, pos = { x = 2312.806, y = 230.689, z = -1213.984 }, rot = { x = 0.000, y = 134.950, z = 0.000 }, level = 7, drop_tag = "丘丘人", pose_id = 9003, area_id = 1 },
	{ config_id = 526003, monster_id = 21010601, pos = { x = 2318.502, y = 230.942, z = -1217.927 }, rot = { x = 0.000, y = 264.354, z = 0.000 }, level = 7, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 526004, gadget_id = 70220005, pos = { x = 2317.535, y = 230.911, z = -1213.784 }, rot = { x = 0.000, y = 227.231, z = 0.000 }, level = 5, area_id = 1 },
	{ config_id = 526005, gadget_id = 70211002, pos = { x = 2316.804, y = 231.061, z = -1222.108 }, rot = { x = 0.000, y = 345.550, z = 0.000 }, level = 1, drop_tag = "战斗低级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1526006, name = "ANY_MONSTER_DIE_526006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_526006", action = "action_EVENT_ANY_MONSTER_DIE_526006" }
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
		monsters = { 526001, 526002, 526003 },
		gadgets = { 526004, 526005 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_526006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_526006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_526006(context, evt)
	-- 解锁目标526005
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 526005, state = GadgetState.Default }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : unlock_gadget")
		return -1
	end
	
	return 0
end