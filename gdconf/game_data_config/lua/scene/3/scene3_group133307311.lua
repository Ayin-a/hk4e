-- 基础信息
local base_info = {
	group_id = 133307311
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
	{ config_id = 311001, gadget_id = 70330411, pos = { x = -293.519, y = -22.740, z = 4765.060 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, persistent = true, area_id = 32 },
	{ config_id = 311002, gadget_id = 70330411, pos = { x = -287.817, y = -22.740, z = 4773.232 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, persistent = true, area_id = 32 },
	{ config_id = 311003, gadget_id = 70330411, pos = { x = -295.982, y = -22.740, z = 4778.965 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, persistent = true, area_id = 32 },
	{ config_id = 311004, gadget_id = 70330411, pos = { x = -301.764, y = -22.740, z = 4770.823 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, persistent = true, area_id = 32 },
	{ config_id = 311005, gadget_id = 70330225, pos = { x = -285.162, y = -25.218, z = 4785.899 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 311006, gadget_id = 70211101, pos = { x = -300.568, y = -25.218, z = 4776.118 }, rot = { x = 0.000, y = 304.817, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	{ config_id = 311007, gadget_id = 70330315, pos = { x = -302.998, y = -25.218, z = 4760.210 }, rot = { x = 0.000, y = 304.455, z = 0.000 }, level = 32, state = GadgetState.GearAction2, persistent = true, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1311008, name = "GADGET_CREATE_311008", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_311008", action = "action_EVENT_GADGET_CREATE_311008", trigger_count = 0 },
	{ config_id = 1311009, name = "GADGET_STATE_CHANGE_311009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_311009", action = "action_EVENT_GADGET_STATE_CHANGE_311009" }
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
		gadgets = { 311001, 311002, 311003, 311004, 311005, 311007 },
		regions = { },
		triggers = { "GADGET_CREATE_311008", "GADGET_STATE_CHANGE_311009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_311008(context, evt)
	if 311006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_311008(context, evt)
	-- 将本组内变量名为 "unlock" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "unlock", 1, 133307307) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 改变指定group组133307307中， configid为307002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133307307, 307002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_311009(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133307311, 311001) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133307311, 311002) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133307311, 311003) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133307311, 311004) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_311009(context, evt)
	ScriptLib.CreateGadget(context, {config_id=311006})
	
	return 0
end