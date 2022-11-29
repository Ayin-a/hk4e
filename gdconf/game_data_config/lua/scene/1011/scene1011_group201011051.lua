-- 基础信息
local base_info = {
	group_id = 201011051
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 264, monster_id = 21020201, pos = { x = 29.551, y = 0.800, z = -142.329 }, rot = { x = 0.000, y = 40.812, z = 0.000 }, level = 7, affix = { 1007, 1010 }, isElite = true },
	{ config_id = 265, monster_id = 21020101, pos = { x = 29.612, y = 0.800, z = -132.619 }, rot = { x = 0.000, y = 133.083, z = 0.000 }, level = 7, affix = { 1007, 1010 }, isElite = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 283, gadget_id = 70350004, pos = { x = -7.522, y = 0.800, z = -139.255 }, rot = { x = 0.000, y = 89.442, z = 0.000 }, level = 1 },
	{ config_id = 284, gadget_id = 70350004, pos = { x = -7.617, y = 0.800, z = -133.266 }, rot = { x = 0.000, y = 89.442, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000155, name = "ANY_MONSTER_DIE_155", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_155", action = "action_EVENT_ANY_MONSTER_DIE_155" }
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
		gadgets = { 283, 284 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 264, 265 },
		gadgets = { 283, 284 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_155" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_155(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_155(context, evt)
	-- 将configid为 283 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 283, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 284 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 284, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end