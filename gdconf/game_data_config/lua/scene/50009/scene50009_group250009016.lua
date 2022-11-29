-- 基础信息
local base_info = {
	group_id = 250009016
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 16003, monster_id = 21020101, pos = { x = 14.062, y = 9.070, z = -156.645 }, rot = { x = 0.000, y = 274.118, z = 0.000 }, level = 30 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 16001, gadget_id = 70330001, pos = { x = 10.635, y = 8.973, z = -116.695 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 16002, gadget_id = 70330003, pos = { x = -7.811, y = 9.070, z = -114.138 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 16004, gadget_id = 70900314, pos = { x = -1.750, y = 11.678, z = -166.498 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1016005, name = "GADGET_STATE_CHANGE_16005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_16005", action = "action_EVENT_GADGET_STATE_CHANGE_16005" }
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
		monsters = { 16003 },
		gadgets = { 16001, 16002, 16004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_16005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_16005(context, evt)
	if 16001 ~= evt.param2 or GadgetState.Action01 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_16005(context, evt)
	-- 将configid为 16004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 16004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end