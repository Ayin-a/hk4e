-- 基础信息
local base_info = {
	group_id = 133302077
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 77001, monster_id = 25210501, pos = { x = -476.707, y = 284.678, z = 2236.826 }, rot = { x = 0.000, y = 2.744, z = 0.000 }, level = 27, drop_tag = "镀金旅团", pose_id = 9504, area_id = 24 },
	{ config_id = 77004, monster_id = 25210301, pos = { x = -473.260, y = 284.805, z = 2236.774 }, rot = { x = 0.000, y = 223.275, z = 0.000 }, level = 27, drop_tag = "镀金旅团", pose_id = 9005, area_id = 24 },
	{ config_id = 77005, monster_id = 25210201, pos = { x = -475.309, y = 284.805, z = 2235.397 }, rot = { x = 0.000, y = 36.872, z = 0.000 }, level = 27, drop_tag = "镀金旅团", pose_id = 9001, area_id = 24 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 77002, gadget_id = 70217020, pos = { x = -491.783, y = 294.691, z = 2179.113 }, rot = { x = 3.548, y = 13.039, z = 5.372 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 24 },
	{ config_id = 77003, gadget_id = 70211002, pos = { x = -480.137, y = 284.759, z = 2233.602 }, rot = { x = 0.000, y = 316.888, z = 0.000 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 24 },
	{ config_id = 77006, gadget_id = 70310004, pos = { x = -475.039, y = 284.798, z = 2237.050 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1077007, name = "ANY_MONSTER_DIE_77007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_77007", action = "action_EVENT_ANY_MONSTER_DIE_77007" }
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
		monsters = { 77001, 77004, 77005 },
		gadgets = { 77002, 77003, 77006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_77007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_77007(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133302077) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_77007(context, evt)
	-- 将configid为 77003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 77003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end