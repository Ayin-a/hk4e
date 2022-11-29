-- 基础信息
local base_info = {
	group_id = 133102540
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 540001, monster_id = 21010201, pos = { x = 1732.290, y = 225.281, z = 61.654 }, rot = { x = 11.447, y = 316.137, z = 359.052 }, level = 16, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 5 },
	{ config_id = 540004, monster_id = 21010201, pos = { x = 1736.706, y = 226.166, z = 58.659 }, rot = { x = 8.582, y = 349.922, z = 3.471 }, level = 16, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 5 },
	{ config_id = 540005, monster_id = 21010201, pos = { x = 1742.720, y = 226.336, z = 61.389 }, rot = { x = 8.884, y = 36.691, z = 358.246 }, level = 16, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 5 },
	{ config_id = 540006, monster_id = 21010401, pos = { x = 1736.879, y = 226.942, z = 52.886 }, rot = { x = 353.253, y = 108.228, z = 5.795 }, level = 16, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 540002, gadget_id = 70211002, pos = { x = 1738.785, y = 226.334, z = 58.748 }, rot = { x = 8.000, y = 358.187, z = 4.665 }, level = 16, drop_tag = "战斗低级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1540003, name = "ANY_MONSTER_DIE_540003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_540003", action = "action_EVENT_ANY_MONSTER_DIE_540003" }
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
		monsters = { 540001, 540004, 540005, 540006 },
		gadgets = { 540002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_540003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_540003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_540003(context, evt)
	-- 将configid为 540002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 540002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end