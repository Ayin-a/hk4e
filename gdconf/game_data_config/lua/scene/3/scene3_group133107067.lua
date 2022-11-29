-- 基础信息
local base_info = {
	group_id = 133107067
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 67001, gadget_id = 70350004, pos = { x = -385.856, y = 290.452, z = 657.475 }, rot = { x = 0.000, y = 91.543, z = 180.000 }, level = 24, persistent = true, area_id = 7 },
	{ config_id = 67002, gadget_id = 70350004, pos = { x = -377.425, y = 290.511, z = 653.913 }, rot = { x = 0.000, y = 0.166, z = 180.000 }, level = 24, persistent = true, area_id = 7 },
	{ config_id = 67003, gadget_id = 70350004, pos = { x = -369.558, y = 290.389, z = 657.060 }, rot = { x = 0.000, y = 91.543, z = 180.000 }, level = 24, persistent = true, area_id = 7 },
	{ config_id = 67004, gadget_id = 70210063, pos = { x = -379.607, y = 285.647, z = 657.267 }, rot = { x = 0.000, y = 77.800, z = 0.000 }, level = 21, drop_tag = "解谜低级璃月", state = GadgetState.ChestRock, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 7 },
	{ config_id = 67005, gadget_id = 70210063, pos = { x = -381.496, y = 285.647, z = 657.631 }, rot = { x = 0.000, y = 125.750, z = 0.000 }, level = 21, drop_tag = "解谜低级璃月", state = GadgetState.ChestRock, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 7 },
	{ config_id = 67006, gadget_id = 70210063, pos = { x = -375.996, y = 285.692, z = 657.297 }, rot = { x = 0.000, y = 277.579, z = 0.000 }, level = 21, drop_tag = "解谜低级璃月", state = GadgetState.ChestRock, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 7 },
	{ config_id = 67007, gadget_id = 70210063, pos = { x = -372.792, y = 285.694, z = 657.218 }, rot = { x = 0.000, y = 224.575, z = 0.000 }, level = 21, drop_tag = "解谜低级璃月", state = GadgetState.ChestRock, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 7 },
	{ config_id = 67008, gadget_id = 70360005, pos = { x = -377.734, y = 285.647, z = 657.262 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, persistent = true, area_id = 7 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1067009, name = "GADGET_STATE_CHANGE_67009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_67009", action = "action_EVENT_GADGET_STATE_CHANGE_67009" }
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
	end_suite = 2,
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
		gadgets = { 67001, 67002, 67003, 67004, 67005, 67006, 67007, 67008 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_67009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 67004, 67005, 67006, 67007 },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_67009(context, evt)
	if 67008 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_67009(context, evt)
	-- 将configid为 67001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 67001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 67002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 67002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 67003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 67003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133107067, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end