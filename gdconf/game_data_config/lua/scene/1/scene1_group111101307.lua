-- 基础信息
local base_info = {
	group_id = 111101307
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 307001, monster_id = 21010101, pos = { x = 2242.630, y = 246.971, z = -1605.809 }, rot = { x = 0.000, y = 4.544, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 307002, gadget_id = 70310001, pos = { x = 2246.902, y = 246.204, z = -1604.149 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 307003, gadget_id = 70211021, pos = { x = 2240.577, y = 248.448, z = -1609.331 }, rot = { x = 357.865, y = 359.973, z = 1.471 }, level = 11, drop_tag = "战斗高级蒙德", isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1307004, name = "ANY_MONSTER_DIE_307004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_307004", action = "action_EVENT_ANY_MONSTER_DIE_307004" }
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
		monsters = { 307001 },
		gadgets = { 307002, 307003 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_307004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_307004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_307004(context, evt)
	-- 将configid为 307003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 307003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end