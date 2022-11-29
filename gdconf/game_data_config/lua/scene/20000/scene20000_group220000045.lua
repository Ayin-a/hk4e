-- 基础信息
local base_info = {
	group_id = 220000045
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 93, monster_id = 21010601, pos = { x = 255.099, y = 5.573, z = 283.065 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 169, gadget_id = 70900221, pos = { x = 415.524, y = 5.557, z = 282.568 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 170, gadget_id = 70900223, pos = { x = 422.921, y = 5.573, z = 282.778 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 182, gadget_id = 70350004, pos = { x = 415.653, y = 5.694, z = 270.657 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 183, gadget_id = 70350004, pos = { x = 431.728, y = 5.573, z = 277.601 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 211, gadget_id = 70220007, pos = { x = 418.988, y = 5.573, z = 281.807 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000078, name = "CLIENT_EXECUTE_78", event = EventType.EVENT_CLIENT_EXECUTE, source = "LaserSwitch_Hit", condition = "", action = "action_EVENT_CLIENT_EXECUTE_78" }
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
	rand_suite = true
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
		monsters = { 93 },
		gadgets = { 169, 170, 182, 183, 211 },
		regions = { },
		triggers = { "CLIENT_EXECUTE_78" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_CLIENT_EXECUTE_78(context, evt)
	-- 将configid为 182 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 182, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 183 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 183, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end