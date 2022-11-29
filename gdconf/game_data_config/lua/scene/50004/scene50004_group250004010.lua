-- 基础信息
local base_info = {
	group_id = 250004010
}

-- Trigger变量
local defs = {
	gadget_id_1 = 269,
	gadget_id_2 = 197,
	gadget_id_3 = 196,
	gadget_id_4 = 1,
	gadget_id_5 = 0,
	gadget_id_6 = 199,
	gadget_id_7 = 198
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
	{ config_id = 196, gadget_id = 70350004, pos = { x = 555.995, y = -9.898, z = -131.115 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 197, gadget_id = 70900224, pos = { x = 556.047, y = -10.672, z = -135.037 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 198, gadget_id = 70350004, pos = { x = 564.149, y = -9.918, z = -131.270 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 199, gadget_id = 70900224, pos = { x = 564.098, y = -10.527, z = -135.141 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 202, gadget_id = 70900208, pos = { x = 553.620, y = -11.030, z = -134.489 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 204, gadget_id = 70900208, pos = { x = 558.017, y = -11.101, z = -134.599 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 205, gadget_id = 70900208, pos = { x = 562.752, y = -11.254, z = -134.673 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 207, gadget_id = 70900208, pos = { x = 566.906, y = -11.207, z = -134.732 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 208, gadget_id = 70380003, pos = { x = 541.038, y = -12.304, z = -131.067 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 50004003, start_route = false },
	{ config_id = 268, gadget_id = 70900208, pos = { x = 536.415, y = -11.126, z = -128.406 }, rot = { x = 0.000, y = 272.509, z = 0.000 }, level = 1 },
	{ config_id = 269, gadget_id = 70900224, pos = { x = 538.279, y = -10.059, z = -128.361 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 271, gadget_id = 70900208, pos = { x = 549.738, y = -11.000, z = -134.555 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000015, name = "CLIENT_EXECUTE_15", event = EventType.EVENT_CLIENT_EXECUTE, source = "ElectricSwitch_Hit", condition = "condition_EVENT_CLIENT_EXECUTE_15", action = "action_EVENT_CLIENT_EXECUTE_15", trigger_count = 0 },
	{ config_id = 1000041, name = "CLIENT_EXECUTE_41", event = EventType.EVENT_CLIENT_EXECUTE, source = "ElectricSwitch_Hit", condition = "condition_EVENT_CLIENT_EXECUTE_41", action = "action_EVENT_CLIENT_EXECUTE_41", trigger_count = 0 },
	{ config_id = 1000042, name = "CLIENT_EXECUTE_42", event = EventType.EVENT_CLIENT_EXECUTE, source = "ElectricSwitch_Hit", condition = "condition_EVENT_CLIENT_EXECUTE_42", action = "action_EVENT_CLIENT_EXECUTE_42", trigger_count = 0 }
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
		monsters = { },
		gadgets = { 196, 197, 198, 199, 202, 204, 205, 207, 208, 268, 269, 271 },
		regions = { },
		triggers = { "CLIENT_EXECUTE_15", "CLIENT_EXECUTE_41", "CLIENT_EXECUTE_42" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_CLIENT_EXECUTE_15(context, evt)
	-- 判断是gadgetid 57 option_id 0
	if defs.gadget_id_1 == ScriptLib.GetGadgetConfigId(context, { gadget_eid = evt.source_eid }) then
	
	return true
	
	end
end

-- 触发操作
function action_EVENT_CLIENT_EXECUTE_15(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 208) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_CLIENT_EXECUTE_41(context, evt)
	-- 判断是gadgetid 57 option_id 0
	if defs.gadget_id_2 == ScriptLib.GetGadgetConfigId(context, { gadget_eid = evt.source_eid }) then
	
	return true
	
	end
end

-- 触发操作
function action_EVENT_CLIENT_EXECUTE_41(context, evt)
	-- 将configid为 40 的物件更改为状态 GadgetState.Default
	if evt.param1 == defs.gadget_id_4 then
	
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_3, GadgetState.GearStop) then
			return -1
		end 
	
	return 0
	
	end
	
	if evt.param1 == defs.gadget_id_5 then
	
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_3, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
	
	end
end

-- 触发条件
function condition_EVENT_CLIENT_EXECUTE_42(context, evt)
	-- 判断是gadgetid 57 option_id 0
	if defs.gadget_id_6 == ScriptLib.GetGadgetConfigId(context, { gadget_eid = evt.source_eid }) then
	
	return true
	
	end
end

-- 触发操作
function action_EVENT_CLIENT_EXECUTE_42(context, evt)
	-- 将configid为 40 的物件更改为状态 GadgetState.Default
	if evt.param1 == defs.gadget_id_4 then
	
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_7, GadgetState.GearStop) then
			return -1
		end 
	
	return 0
	
	end
	
	if evt.param1 == defs.gadget_id_5 then
	
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_7, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
	
	end
end