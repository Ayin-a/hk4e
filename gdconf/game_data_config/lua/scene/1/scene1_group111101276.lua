-- 基础信息
local base_info = {
	group_id = 111101276
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 276005, monster_id = 20010501, pos = { x = 2312.297, y = 285.597, z = -1738.582 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "史莱姆" },
	{ config_id = 276006, monster_id = 20010501, pos = { x = 2305.243, y = 285.615, z = -1741.936 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "史莱姆" },
	{ config_id = 276007, monster_id = 20010901, pos = { x = 2309.363, y = 285.621, z = -1736.126 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "大史莱姆" },
	{ config_id = 276008, monster_id = 20011201, pos = { x = 2312.434, y = 285.201, z = -1742.750 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "史莱姆" },
	{ config_id = 276009, monster_id = 20011201, pos = { x = 2312.729, y = 285.604, z = -1736.568 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "史莱姆" },
	{ config_id = 276010, monster_id = 20011201, pos = { x = 2305.896, y = 285.623, z = -1739.482 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "史莱姆" },
	{ config_id = 276011, monster_id = 20011001, pos = { x = 2308.537, y = 285.601, z = -1742.309 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "史莱姆" },
	{ config_id = 276012, monster_id = 20011001, pos = { x = 2307.227, y = 285.728, z = -1736.182 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "史莱姆" },
	{ config_id = 276013, monster_id = 21010101, pos = { x = 2303.459, y = 285.573, z = -1733.275 }, rot = { x = 0.000, y = 134.699, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true },
	{ config_id = 276014, monster_id = 21010101, pos = { x = 2307.581, y = 285.559, z = -1732.299 }, rot = { x = 0.000, y = 162.024, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true },
	{ config_id = 276015, monster_id = 21020501, pos = { x = 2306.446, y = 285.656, z = -1730.091 }, rot = { x = 0.000, y = 158.873, z = 0.000 }, level = 1, drop_tag = "丘丘岩盔王", disableWander = true },
	{ config_id = 276016, monster_id = 21010101, pos = { x = 2311.237, y = 285.632, z = -1730.609 }, rot = { x = 0.000, y = 190.874, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 276001
	{ config_id = 276001, gadget_id = 70900007, pos = { x = 2314.533, y = 285.584, z = -1739.717 }, rot = { x = 0.000, y = 335.169, z = 0.000 }, level = 1, state = GadgetState.GearStop },
	{ config_id = 276002, gadget_id = 70900007, pos = { x = 2309.668, y = 285.604, z = -1739.615 }, rot = { x = 0.000, y = 342.687, z = 0.000 }, level = 1, state = GadgetState.GearStop },
	{ config_id = 276003, gadget_id = 70900007, pos = { x = 2305.954, y = 285.606, z = -1743.743 }, rot = { x = 0.000, y = 346.042, z = 0.000 }, level = 1, state = GadgetState.GearStop },
	{ config_id = 276018, gadget_id = 70211032, pos = { x = 2318.755, y = 286.974, z = -1750.804 }, rot = { x = 0.000, y = 339.799, z = 0.000 }, level = 11, drop_tag = "战斗超级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 当元素方碑全部点亮时 生成怪物
	{ config_id = 1276004, name = "GADGET_STATE_CHANGE_276004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_276004", action = "action_EVENT_GADGET_STATE_CHANGE_276004" },
	-- 检测第一波怪物死亡 生成第二波
	{ config_id = 1276017, name = "ANY_MONSTER_DIE_276017", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_276017", action = "action_EVENT_ANY_MONSTER_DIE_276017" },
	{ config_id = 1276019, name = "ANY_MONSTER_DIE_276019", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_276019", action = "action_EVENT_ANY_MONSTER_DIE_276019" }
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
		gadgets = { 276001, 276002, 276003, 276018 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_276004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 276005, 276006, 276007, 276008, 276009, 276010, 276011, 276012 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_276017" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 276013, 276014, 276015, 276016 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_276019" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_276004(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 111101276, 276001) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 111101276, 276002) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 111101276, 276003) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_276004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101276, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_276017(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_276017(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101276, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_276019(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_276019(context, evt)
	-- 将configid为 276018 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 276018, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end