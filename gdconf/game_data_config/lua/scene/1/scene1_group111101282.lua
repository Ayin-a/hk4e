-- 基础信息
local base_info = {
	group_id = 111101282
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 282005, monster_id = 20010301, pos = { x = 2384.061, y = 283.899, z = -1724.002 }, rot = { x = 0.000, y = 334.870, z = 0.000 }, level = 1, drop_tag = "史莱姆", disableWander = true, isOneoff = true },
	{ config_id = 282006, monster_id = 20010301, pos = { x = 2370.229, y = 283.701, z = -1730.554 }, rot = { x = 0.000, y = 334.870, z = 0.000 }, level = 1, drop_tag = "史莱姆", disableWander = true, isOneoff = true },
	{ config_id = 282007, monster_id = 20010401, pos = { x = 2375.617, y = 283.899, z = -1723.267 }, rot = { x = 0.000, y = 334.870, z = 0.000 }, level = 1, drop_tag = "大史莱姆", disableWander = true, isOneoff = true },
	{ config_id = 282009, monster_id = 21010201, pos = { x = 2385.474, y = 283.899, z = -1727.468 }, rot = { x = 0.000, y = 334.870, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, isOneoff = true },
	{ config_id = 282010, monster_id = 21010201, pos = { x = 2379.186, y = 283.898, z = -1730.822 }, rot = { x = 0.000, y = 334.870, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, isOneoff = true },
	{ config_id = 282011, monster_id = 21010201, pos = { x = 2371.918, y = 284.040, z = -1733.918 }, rot = { x = 0.000, y = 334.870, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, isOneoff = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 282001, gadget_id = 70900039, pos = { x = 2381.981, y = 283.899, z = -1720.491 }, rot = { x = 0.000, y = 334.870, z = 0.000 }, level = 1, state = GadgetState.GearStop, persistent = true },
	{ config_id = 282002, gadget_id = 70900039, pos = { x = 2380.174, y = 283.898, z = -1732.977 }, rot = { x = 0.000, y = 334.870, z = 0.000 }, level = 1, state = GadgetState.GearStop, persistent = true },
	{ config_id = 282003, gadget_id = 70900039, pos = { x = 2368.680, y = 283.896, z = -1726.570 }, rot = { x = 0.000, y = 334.870, z = 0.000 }, level = 1, state = GadgetState.GearStop, persistent = true },
	-- 初始状态为红圈锁定
	{ config_id = 282014, gadget_id = 70211012, pos = { x = 2377.398, y = 283.899, z = -1727.079 }, rot = { x = 0.000, y = 334.870, z = 0.000 }, level = 11, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 所有风元素方碑激活后,刷新第一波怪物
	{ config_id = 1282004, name = "GADGET_STATE_CHANGE_282004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_282004", action = "action_EVENT_GADGET_STATE_CHANGE_282004" },
	-- 第一波怪物击杀完后,刷新第二波怪物
	{ config_id = 1282008, name = "ANY_MONSTER_DIE_282008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_282008", action = "action_EVENT_ANY_MONSTER_DIE_282008" },
	-- 第二波怪物击杀完后,解锁宝箱
	{ config_id = 1282012, name = "ANY_MONSTER_DIE_282012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_282012", action = "action_EVENT_ANY_MONSTER_DIE_282012" }
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
		monsters = { },
		gadgets = { 282001, 282002, 282003, 282014 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_282004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 282005, 282006, 282007 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_282008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 282009, 282010, 282011 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_282012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_282004(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 111101282, 282001) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 111101282, 282002) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 111101282, 282003) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_282004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101282, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_282008(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 111101282) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_282008(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101282, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_282012(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 111101282) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_282012(context, evt)
	-- 将configid为 282014 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 282014, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end