-- 基础信息
local base_info = {
	group_id = 133315101
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 101001, monster_id = 20010901, pos = { x = 200.107, y = 271.210, z = 2300.528 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "大史莱姆", area_id = 20 },
	{ config_id = 101004, monster_id = 20011001, pos = { x = 197.173, y = 271.210, z = 2303.758 }, rot = { x = 0.000, y = 309.578, z = 0.000 }, level = 27, drop_tag = "史莱姆", pose_id = 901, area_id = 20 },
	{ config_id = 101005, monster_id = 20011001, pos = { x = 203.862, y = 271.210, z = 2301.620 }, rot = { x = 0.000, y = 309.578, z = 0.000 }, level = 27, drop_tag = "史莱姆", pose_id = 901, area_id = 20 },
	{ config_id = 101006, monster_id = 20011001, pos = { x = 198.997, y = 271.210, z = 2296.465 }, rot = { x = 0.000, y = 309.578, z = 0.000 }, level = 27, drop_tag = "史莱姆", pose_id = 901, area_id = 20 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 101002, gadget_id = 70211002, pos = { x = 212.971, y = 272.855, z = 2291.449 }, rot = { x = 16.038, y = 309.043, z = 0.840 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1101003, name = "ANY_MONSTER_DIE_101003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_101003", action = "action_EVENT_ANY_MONSTER_DIE_101003", trigger_count = 0 }
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
		monsters = { 101001, 101004, 101005, 101006 },
		gadgets = { 101002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_101003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_101003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_101003(context, evt)
	-- 将configid为 101002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 101002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end