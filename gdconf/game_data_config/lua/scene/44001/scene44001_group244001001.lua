-- 基础信息
local base_info = {
	group_id = 244001001
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1001, monster_id = 20010601, pos = { x = 8.475, y = 1.017, z = -6.366 }, rot = { x = 0.000, y = 342.425, z = 0.000 }, level = 1, affix = { 4116, 1027 } },
	{ config_id = 1002, monster_id = 20010701, pos = { x = 0.954, y = 1.021, z = -6.414 }, rot = { x = 0.000, y = 16.781, z = 0.000 }, level = 1, affix = { 4116 } },
	{ config_id = 1003, monster_id = 20010501, pos = { x = 6.542, y = 1.013, z = -7.044 }, rot = { x = 0.000, y = 324.458, z = 0.000 }, level = 1, affix = { 4116 } },
	{ config_id = 1004, monster_id = 20010501, pos = { x = 3.553, y = 1.001, z = -7.090 }, rot = { x = 0.000, y = 72.586, z = 0.000 }, level = 1, affix = { 4116 } },
	{ config_id = 1005, monster_id = 21010502, pos = { x = -4.440, y = 8.041, z = -14.626 }, rot = { x = 0.000, y = 17.740, z = 0.000 }, level = 1, disableWander = true, affix = { 4116 } },
	{ config_id = 1006, monster_id = 21010502, pos = { x = 12.698, y = 8.171, z = -14.538 }, rot = { x = 0.000, y = 342.385, z = 0.000 }, level = 1, disableWander = true, affix = { 4116 } }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1007, gadget_id = 70350005, pos = { x = 3.996, y = 0.838, z = -20.921 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1001008, name = "ANY_MONSTER_DIE_1008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1008", action = "action_EVENT_ANY_MONSTER_DIE_1008" }
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
		monsters = { 1001, 1002, 1003, 1004, 1005, 1006 },
		gadgets = { 1007 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_1008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1008(context, evt)
	-- 将configid为 1007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 244001006, 3)
	
	return 0
end