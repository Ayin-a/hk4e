-- 基础信息
local base_info = {
	group_id = 111101187
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 187001, monster_id = 21010101, pos = { x = 2724.253, y = 252.855, z = -1273.368 }, rot = { x = 0.000, y = 37.546, z = 0.000 }, level = 1, drop_tag = "丘丘人", pose_id = 9012 },
	{ config_id = 187002, monster_id = 21010101, pos = { x = 2722.400, y = 252.186, z = -1270.358 }, rot = { x = 348.294, y = 107.799, z = 1.792 }, level = 1, drop_tag = "丘丘人", pose_id = 9012 },
	{ config_id = 187003, monster_id = 21010101, pos = { x = 2727.004, y = 253.287, z = -1273.407 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 187004, monster_id = 21010101, pos = { x = 2725.946, y = 252.645, z = -1269.659 }, rot = { x = 0.000, y = 202.584, z = 0.000 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 187005, monster_id = 21010101, pos = { x = 2728.038, y = 253.114, z = -1271.102 }, rot = { x = 0.000, y = 273.335, z = 0.000 }, level = 1, drop_tag = "丘丘人" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 187006, gadget_id = 70310001, pos = { x = 2725.230, y = 252.733, z = -1271.003 }, rot = { x = 1.374, y = 355.596, z = 6.154 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 187007, gadget_id = 70211002, pos = { x = 2726.197, y = 253.104, z = -1276.295 }, rot = { x = 0.000, y = 337.358, z = 0.000 }, level = 26, drop_tag = "战斗低级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1187008, name = "ANY_MONSTER_DIE_187008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_187008", action = "action_EVENT_ANY_MONSTER_DIE_187008" }
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
		monsters = { 187001, 187002, 187003, 187004, 187005 },
		gadgets = { 187006, 187007 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_187008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_187008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_187008(context, evt)
	-- 将configid为 187007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 187007, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end