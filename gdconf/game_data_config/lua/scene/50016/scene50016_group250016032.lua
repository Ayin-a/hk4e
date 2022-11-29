-- 基础信息
local base_info = {
	group_id = 250016032
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 32001, monster_id = 21010601, pos = { x = -31.512, y = -11.000, z = 222.952 }, rot = { x = 0.000, y = 90.113, z = 0.000 }, level = 1 },
	{ config_id = 32002, monster_id = 21010601, pos = { x = -22.085, y = -11.000, z = 223.133 }, rot = { x = 0.000, y = 272.936, z = 0.000 }, level = 1 },
	{ config_id = 32003, monster_id = 21010601, pos = { x = -27.713, y = -11.000, z = 229.806 }, rot = { x = 0.000, y = 178.170, z = 0.000 }, level = 1 },
	{ config_id = 32005, monster_id = 21020101, pos = { x = -14.185, y = -11.000, z = 225.716 }, rot = { x = 0.000, y = 269.478, z = 0.000 }, level = 1, pose_id = 401 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 32004, gadget_id = 70300107, pos = { x = -26.873, y = -11.000, z = 223.422 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1032006, name = "ANY_MONSTER_DIE_32006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_32006", action = "action_EVENT_ANY_MONSTER_DIE_32006" }
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
		monsters = { 32001, 32002, 32003, 32005 },
		gadgets = { 32004 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_32006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_32006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_32006(context, evt)
	-- 解锁目标1
	if 0 ~= ScriptLib.UnlockForce(context, 1) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : unlock_force")
		return -1
	end
	
	return 0
end