-- 基础信息
local base_info = {
	group_id = 133003799
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
	{ config_id = 799001, gadget_id = 70310011, pos = { x = 2393.519, y = 284.518, z = -1756.033 }, rot = { x = 348.954, y = 109.330, z = 348.611 }, level = 1, persistent = true, area_id = 1 },
	{ config_id = 799002, gadget_id = 70310011, pos = { x = 2401.865, y = 291.195, z = -1751.664 }, rot = { x = 14.304, y = 343.327, z = 84.127 }, level = 1, persistent = true, area_id = 1 },
	{ config_id = 799003, gadget_id = 70310011, pos = { x = 2387.882, y = 291.040, z = -1754.184 }, rot = { x = 0.000, y = 31.693, z = 0.000 }, level = 1, persistent = true, area_id = 1 },
	{ config_id = 799004, gadget_id = 70310011, pos = { x = 2390.797, y = 283.865, z = -1747.948 }, rot = { x = 341.370, y = 3.421, z = 343.389 }, level = 1, persistent = true, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1799005, name = "GADGET_STATE_CHANGE_799005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_799005", action = "action_EVENT_GADGET_STATE_CHANGE_799005", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "start", value = 0, no_refresh = true }
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
		gadgets = { 799001, 799002, 799003, 799004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_799005" },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_799005(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "start") == #suites[1].gadgets then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_799005(context, evt)
	if evt.param1 == GadgetState.GearStart then
		ScriptLib.ChangeGroupVariableValue(context,"start",1)
	elseif evt.param1 == GadgetState.Default then
		ScriptLib.ChangeGroupVariableValue(context,"start",-1)
	end
	
	if ScriptLib.GetGroupVariableValue(context, "start") == #suites[1].gadgets then
		ScriptLib.SetGroupGadgetStateByConfigId(context, 133003098, 2575, GadgetState.GearStart)
	                ScriptLib.SetGroupGadgetStateByConfigId(context, 133003923, 923007, GadgetState.GearStart)
	                ScriptLib.AddQuestProgress(context, "4141210")
	end
	
	return 0
end