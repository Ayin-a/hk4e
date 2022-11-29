-- 基础信息
local base_info = {
	group_id = 220028007
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 24, monster_id = 21010901, pos = { x = 31.240, y = -92.329, z = -203.850 }, rot = { x = 0.000, y = 268.156, z = 0.000 }, level = 1, pose_id = 32 },
	{ config_id = 43, monster_id = 21010901, pos = { x = 31.582, y = -92.329, z = -198.807 }, rot = { x = 0.000, y = 264.700, z = 0.000 }, level = 1, pose_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 72, gadget_id = 70220014, pos = { x = -1.240, y = -88.830, z = -207.446 }, rot = { x = 0.000, y = 302.971, z = 0.000 }, level = 1 },
	{ config_id = 73, gadget_id = 70220014, pos = { x = 11.596, y = -90.730, z = -199.330 }, rot = { x = 0.000, y = 233.355, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000039, name = "ANY_MONSTER_DIE_39", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_39", action = "action_EVENT_ANY_MONSTER_DIE_39" }
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
		monsters = { 24, 43 },
		gadgets = { 72, 73 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_39" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_39(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 220028007) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_39(context, evt)
	-- 将configid为 0 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 0, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end