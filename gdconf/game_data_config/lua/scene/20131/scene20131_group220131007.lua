-- 基础信息
local base_info = {
	group_id = 220131007
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 7001, monster_id = 26030101, pos = { x = 71.888, y = 10.761, z = 31.144 }, rot = { x = 0.000, y = 251.639, z = 0.000 }, level = 1 },
	{ config_id = 7002, monster_id = 26030101, pos = { x = 65.644, y = 10.764, z = 36.893 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 7003, gadget_id = 70350004, pos = { x = 68.059, y = 11.085, z = 43.090 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1007004, name = "ANY_MONSTER_DIE_7004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_7004", action = "action_EVENT_ANY_MONSTER_DIE_7004" }
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
		monsters = { 7001, 7002 },
		gadgets = { 7003 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_7004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_7004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_7004(context, evt)
	-- 将configid为 7003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 7003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite9的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220131016, 9)
	
	return 0
end