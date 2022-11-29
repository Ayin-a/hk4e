-- 基础信息
local base_info = {
	group_id = 220128006
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
	{ config_id = 6001, gadget_id = 70290291, pos = { x = 35.165, y = -215.807, z = -26.878 }, rot = { x = 0.000, y = 271.400, z = 0.000 }, level = 1 },
	{ config_id = 6012, gadget_id = 70360002, pos = { x = 32.755, y = -216.017, z = -27.895 }, rot = { x = 0.000, y = 299.928, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 第一次开门
	{ config_id = 1006002, name = "QUEST_FINISH_6002", event = EventType.EVENT_QUEST_FINISH, source = "102907", condition = "", action = "action_EVENT_QUEST_FINISH_6002", trigger_count = 0 },
	-- 第二次开门
	{ config_id = 1006003, name = "QUEST_FINISH_6003", event = EventType.EVENT_QUEST_FINISH, source = "102928", condition = "", action = "action_EVENT_QUEST_FINISH_6003", trigger_count = 0 },
	-- 第三次开门
	{ config_id = 1006004, name = "QUEST_FINISH_6004", event = EventType.EVENT_QUEST_FINISH, source = "102926", condition = "", action = "action_EVENT_QUEST_FINISH_6004", trigger_count = 0 },
	-- 第四次开门
	{ config_id = 1006005, name = "QUEST_FINISH_6005", event = EventType.EVENT_QUEST_FINISH, source = "102924", condition = "", action = "action_EVENT_QUEST_FINISH_6005", trigger_count = 0 },
	-- 第一次关门
	{ config_id = 1006006, name = "QUEST_FINISH_6006", event = EventType.EVENT_QUEST_FINISH, source = "102929", condition = "", action = "action_EVENT_QUEST_FINISH_6006", trigger_count = 0 },
	-- 第二次关门
	{ config_id = 1006007, name = "QUEST_FINISH_6007", event = EventType.EVENT_QUEST_FINISH, source = "102927", condition = "", action = "action_EVENT_QUEST_FINISH_6007", trigger_count = 0 },
	-- 第三次关门
	{ config_id = 1006008, name = "QUEST_FINISH_6008", event = EventType.EVENT_QUEST_FINISH, source = "102925", condition = "", action = "action_EVENT_QUEST_FINISH_6008", trigger_count = 0 },
	-- 第四次关门
	{ config_id = 1006009, name = "QUEST_FINISH_6009", event = EventType.EVENT_QUEST_FINISH, source = "102930", condition = "", action = "action_EVENT_QUEST_FINISH_6009", trigger_count = 0 },
	-- 第五次开门
	{ config_id = 1006010, name = "QUEST_FINISH_6010", event = EventType.EVENT_QUEST_FINISH, source = "102931", condition = "", action = "action_EVENT_QUEST_FINISH_6010", trigger_count = 0 },
	-- 第五次关门
	{ config_id = 1006011, name = "QUEST_FINISH_6011", event = EventType.EVENT_QUEST_FINISH, source = "102906", condition = "", action = "action_EVENT_QUEST_FINISH_6011", trigger_count = 0 }
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
		gadgets = { 6001, 6012 },
		regions = { },
		triggers = { "QUEST_FINISH_6002", "QUEST_FINISH_6003", "QUEST_FINISH_6004", "QUEST_FINISH_6005", "QUEST_FINISH_6006", "QUEST_FINISH_6007", "QUEST_FINISH_6008", "QUEST_FINISH_6009", "QUEST_FINISH_6010", "QUEST_FINISH_6011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
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

-- 触发操作
function action_EVENT_QUEST_FINISH_6002(context, evt)
	-- 将configid为 6001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 6001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 6012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 6012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_6003(context, evt)
	-- 将configid为 6001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 6001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 6012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 6012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_6004(context, evt)
	-- 将configid为 6001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 6001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 6012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 6012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_6005(context, evt)
	-- 将configid为 6001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 6001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 6012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 6012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_6006(context, evt)
	-- 将configid为 6001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 6001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 6012 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 6012, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_6007(context, evt)
	-- 将configid为 6001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 6001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 6012 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 6012, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_6008(context, evt)
	-- 将configid为 6001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 6001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 6012 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 6012, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_6009(context, evt)
	-- 将configid为 6001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 6001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 6012 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 6012, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_6010(context, evt)
	-- 将configid为 6001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 6001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 6012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 6012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_6011(context, evt)
	-- 将configid为 6001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 6001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 6012 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 6012, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end