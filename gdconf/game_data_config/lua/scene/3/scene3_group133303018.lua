-- 基础信息
local base_info = {
	group_id = 133303018
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
	{ config_id = 18002, gadget_id = 70310199, pos = { x = -1289.760, y = 210.303, z = 3520.686 }, rot = { x = 0.000, y = 21.250, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 18003, gadget_id = 70290517, pos = { x = -1294.362, y = 211.150, z = 3546.760 }, rot = { x = 0.000, y = 32.535, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 18004, gadget_id = 70310201, pos = { x = -1296.794, y = 209.363, z = 3540.816 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1018001, name = "GADGET_STATE_CHANGE_18001", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_18001", action = "action_EVENT_GADGET_STATE_CHANGE_18001", trigger_count = 0 },
	-- 保底
	{ config_id = 1018005, name = "GROUP_LOAD_18005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_18005", action = "action_EVENT_GROUP_LOAD_18005", trigger_count = 0 }
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
		gadgets = { 18002, 18003, 18004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_18001", "GROUP_LOAD_18005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_18001(context, evt)
	if 18004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_18001(context, evt)
	-- 将configid为 18003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 18003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_18005(context, evt)
	if 18004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_18005(context, evt)
	-- 将configid为 18003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 18003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end