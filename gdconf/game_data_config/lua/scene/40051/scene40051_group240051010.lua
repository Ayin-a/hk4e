-- 基础信息
local base_info = {
	group_id = 240051010
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 10002, monster_id = 26090501, pos = { x = 457.871, y = 96.213, z = 541.722 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 101 },
	{ config_id = 10003, monster_id = 26090201, pos = { x = 455.244, y = 97.223, z = 556.572 }, rot = { x = 0.000, y = 15.379, z = 0.000 }, level = 1, disableWander = true, pose_id = 102 },
	{ config_id = 10004, monster_id = 26090201, pos = { x = 459.160, y = 97.067, z = 557.156 }, rot = { x = 0.000, y = 309.856, z = 0.000 }, level = 1, disableWander = true, pose_id = 102 },
	{ config_id = 10005, monster_id = 26090901, pos = { x = 457.285, y = 97.116, z = 555.705 }, rot = { x = 0.000, y = 322.246, z = 0.000 }, level = 1, disableWander = true, pose_id = 102 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 10001, gadget_id = 70211002, pos = { x = 456.766, y = 97.072, z = 559.648 }, rot = { x = 0.000, y = 176.482, z = 0.000 }, level = 1, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1010006, name = "ANY_MONSTER_DIE_10006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_10006", action = "action_EVENT_ANY_MONSTER_DIE_10006" }
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
		monsters = { 10002, 10003, 10004, 10005 },
		gadgets = { 10001 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_10006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_10006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_10006(context, evt)
	-- 将configid为 10001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 10001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end