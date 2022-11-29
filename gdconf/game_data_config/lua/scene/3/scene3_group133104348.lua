-- 基础信息
local base_info = {
	group_id = 133104348
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
	{ config_id = 348001, gadget_id = 70690006, pos = { x = 106.200, y = 189.737, z = 527.900 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 9 },
	{ config_id = 348002, gadget_id = 70690006, pos = { x = 106.200, y = 174.566, z = 527.900 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 9 },
	{ config_id = 348003, gadget_id = 70360006, pos = { x = 105.899, y = 174.966, z = 528.269 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 9 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1348004, name = "GADGET_STATE_CHANGE_348004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_348004", action = "action_EVENT_GADGET_STATE_CHANGE_348004", trigger_count = 0 },
	{ config_id = 1348005, name = "GADGET_CREATE_348005", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_348005", action = "action_EVENT_GADGET_CREATE_348005", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "isActive", value = 0, no_refresh = true }
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
		gadgets = { 348003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_348004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 348001, 348002, 348003 },
		regions = { },
		triggers = { "GADGET_CREATE_348005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_348004(context, evt)
	if 348003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_348004(context, evt)
	-- 将configid为 348003 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 348003, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "isActive" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isActive", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133104348, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_348005(context, evt)
	if 348003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_348005(context, evt)
	-- 将configid为 348003 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 348003, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end