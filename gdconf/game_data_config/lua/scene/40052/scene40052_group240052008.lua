-- 基础信息
local base_info = {
	group_id = 240052008
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 8002, monster_id = 25210101, pos = { x = 770.175, y = 73.890, z = 396.903 }, rot = { x = 0.000, y = 19.950, z = 0.000 }, level = 1, disableWander = true, pose_id = 9003 },
	{ config_id = 8003, monster_id = 25210501, pos = { x = 768.714, y = 73.878, z = 397.964 }, rot = { x = 0.000, y = 114.451, z = 0.000 }, level = 1, disableWander = true, pose_id = 9002 },
	{ config_id = 8004, monster_id = 25210201, pos = { x = 770.570, y = 73.701, z = 392.684 }, rot = { x = 0.000, y = 64.353, z = 0.000 }, level = 1, disableWander = true, pose_id = 9006 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 8001, gadget_id = 70211002, pos = { x = 747.925, y = 77.102, z = 366.612 }, rot = { x = 0.000, y = 34.613, z = 0.000 }, level = 1, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1008005, name = "ANY_MONSTER_DIE_8005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_8005", action = "action_EVENT_ANY_MONSTER_DIE_8005" }
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
		monsters = { 8002, 8003, 8004 },
		gadgets = { 8001 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_8005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_8005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_8005(context, evt)
	-- 将configid为 8001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end