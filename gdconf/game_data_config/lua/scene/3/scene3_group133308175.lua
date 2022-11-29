-- 基础信息
local base_info = {
	group_id = 133308175
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
	{ config_id = 175001, gadget_id = 70330260, pos = { x = -1496.865, y = 62.170, z = 4404.765 }, rot = { x = 0.000, y = 98.970, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 175002, gadget_id = 70330443, pos = { x = -1497.572, y = 104.500, z = 4399.757 }, rot = { x = 0.000, y = 9.038, z = 0.000 }, level = 32, persistent = true, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1175003, name = "QUEST_FINISH_175003", event = EventType.EVENT_QUEST_FINISH, source = "7305532", condition = "", action = "action_EVENT_QUEST_FINISH_175003", trigger_count = 0 },
	{ config_id = 1175004, name = "GROUP_LOAD_175004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_175004", action = "action_EVENT_GROUP_LOAD_175004", trigger_count = 0 },
	-- 1
	{ config_id = 1175005, name = "QUEST_FINISH_175005", event = EventType.EVENT_QUEST_FINISH, source = "7305525", condition = "", action = "action_EVENT_QUEST_FINISH_175005", trigger_count = 0 },
	-- 2
	{ config_id = 1175006, name = "QUEST_FINISH_175006", event = EventType.EVENT_QUEST_FINISH, source = "7305527", condition = "", action = "action_EVENT_QUEST_FINISH_175006", trigger_count = 0 },
	-- 3
	{ config_id = 1175007, name = "QUEST_FINISH_175007", event = EventType.EVENT_QUEST_FINISH, source = "7305528", condition = "", action = "action_EVENT_QUEST_FINISH_175007", trigger_count = 0 },
	-- 4
	{ config_id = 1175008, name = "QUEST_FINISH_175008", event = EventType.EVENT_QUEST_FINISH, source = "7305529", condition = "", action = "action_EVENT_QUEST_FINISH_175008", trigger_count = 0 },
	-- 1
	{ config_id = 1175009, name = "GROUP_LOAD_175009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_175009", action = "action_EVENT_GROUP_LOAD_175009", trigger_count = 0 },
	-- 2
	{ config_id = 1175010, name = "GROUP_LOAD_175010", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_175010", action = "action_EVENT_GROUP_LOAD_175010", trigger_count = 0 },
	-- 3
	{ config_id = 1175011, name = "GROUP_LOAD_175011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_175011", action = "action_EVENT_GROUP_LOAD_175011", trigger_count = 0 },
	-- 4
	{ config_id = 1175012, name = "GROUP_LOAD_175012", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_175012", action = "action_EVENT_GROUP_LOAD_175012", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "fi1", value = 0, no_refresh = true },
	{ config_id = 2, name = "fi2", value = 0, no_refresh = true },
	{ config_id = 3, name = "fi3", value = 0, no_refresh = true },
	{ config_id = 4, name = "fi4", value = 0, no_refresh = true }
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
		gadgets = { 175001, 175002 },
		regions = { },
		triggers = { "QUEST_FINISH_175003", "GROUP_LOAD_175004", "QUEST_FINISH_175005", "QUEST_FINISH_175006", "QUEST_FINISH_175007", "QUEST_FINISH_175008", "GROUP_LOAD_175009", "GROUP_LOAD_175010", "GROUP_LOAD_175011", "GROUP_LOAD_175012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_FINISH_175003(context, evt)
	-- 将configid为 175001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 175001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 175002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 175002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_175004(context, evt)
	local curQuestState = ScriptLib.GetHostQuestState(context,7305532)
	if -1 == curQuestState or 0 == curQuestState then
	  return false
	end
	if curQuestState ~= 3 then
	   return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_175004(context, evt)
	-- 将configid为 175001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 175001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 175002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 175002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_175005(context, evt)
	-- 将本组内变量名为 "fi1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "fi1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 为特定175001物件设置其SGV:"SGV_XST_GLOW1"为1
	if 0 ~= ScriptLib.SetEntityServerGlobalValueByConfigId(context, 175001, "SGV_XST_GLOW1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_entity_SGV_by_cid")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_175006(context, evt)
	-- 将本组内变量名为 "fi2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "fi2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 为特定175001物件设置其SGV:"SGV_XST_GLOW2"为1
	if 0 ~= ScriptLib.SetEntityServerGlobalValueByConfigId(context, 175001, "SGV_XST_GLOW2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_entity_SGV_by_cid")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_175007(context, evt)
	-- 将本组内变量名为 "fi3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "fi3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 为特定175001物件设置其SGV:"SGV_XST_GLOW4"为1
	if 0 ~= ScriptLib.SetEntityServerGlobalValueByConfigId(context, 175001, "SGV_XST_GLOW4", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_entity_SGV_by_cid")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_175008(context, evt)
	-- 将本组内变量名为 "fi4" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "fi4", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 为特定175001物件设置其SGV:"SGV_XST_GLOW3"为1
	if 0 ~= ScriptLib.SetEntityServerGlobalValueByConfigId(context, 175001, "SGV_XST_GLOW3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_entity_SGV_by_cid")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_175009(context, evt)
	-- 判断变量"fi1"为1
	if ScriptLib.GetGroupVariableValue(context, "fi1") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_175009(context, evt)
	-- 为特定175001物件设置其SGV:"SGV_XST_GLOW1"为1
	if 0 ~= ScriptLib.SetEntityServerGlobalValueByConfigId(context, 175001, "SGV_XST_GLOW1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_entity_SGV_by_cid")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_175010(context, evt)
	-- 判断变量"fi2"为1
	if ScriptLib.GetGroupVariableValue(context, "fi2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_175010(context, evt)
	-- 为特定175001物件设置其SGV:"SGV_XST_GLOW2"为1
	if 0 ~= ScriptLib.SetEntityServerGlobalValueByConfigId(context, 175001, "SGV_XST_GLOW2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_entity_SGV_by_cid")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_175011(context, evt)
	-- 判断变量"fi3"为1
	if ScriptLib.GetGroupVariableValue(context, "fi3") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_175011(context, evt)
	-- 为特定175001物件设置其SGV:"SGV_XST_GLOW4"为1
	if 0 ~= ScriptLib.SetEntityServerGlobalValueByConfigId(context, 175001, "SGV_XST_GLOW4", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_entity_SGV_by_cid")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_175012(context, evt)
	-- 判断变量"fi4"为1
	if ScriptLib.GetGroupVariableValue(context, "fi4") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_175012(context, evt)
	-- 为特定175001物件设置其SGV:"SGV_XST_GLOW3"为1
	if 0 ~= ScriptLib.SetEntityServerGlobalValueByConfigId(context, 175001, "SGV_XST_GLOW3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_entity_SGV_by_cid")
	  return -1
	end
	
	return 0
end