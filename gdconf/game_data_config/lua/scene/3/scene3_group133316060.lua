-- 基础信息
local base_info = {
	group_id = 133316060
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
	{ config_id = 60001, gadget_id = 70350432, pos = { x = 916.966, y = 147.196, z = 6324.082 }, rot = { x = 353.247, y = 262.716, z = 358.529 }, level = 1, area_id = 30 },
	{ config_id = 60002, gadget_id = 70330404, pos = { x = 904.275, y = 148.581, z = 6316.487 }, rot = { x = 18.760, y = 358.530, z = 351.119 }, level = 1, area_id = 30 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1060003, name = "GADGET_STATE_CHANGE_60003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_60003", action = "action_EVENT_GADGET_STATE_CHANGE_60003" }
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
		gadgets = { 60001, 60002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_60003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 设置指定gadget的state
function TLA_set_gadget_state_by_configid(context, evt, config_id, state)
	-- 将configid为 config_id 的物件更改为状态 state
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, config_id, state) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_60003(context, evt)
	if 60002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_60003(context, evt)
	TLA_set_gadget_state_by_configid(context, evt, 60001, GadgetState.GearStart)
	
	ScriptLib.AddQuestProgress(context, "Q7325605")
	
	return 0
end