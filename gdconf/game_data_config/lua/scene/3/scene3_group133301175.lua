-- 基础信息
local base_info = {
	group_id = 133301175
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
	-- 变量5
	{ config_id = 175001, gadget_id = 70211101, pos = { x = -285.350, y = 194.303, z = 3217.121 }, rot = { x = 0.000, y = 353.149, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 22 },
	-- 变量10
	{ config_id = 175002, gadget_id = 70211101, pos = { x = -290.606, y = 193.096, z = 3227.071 }, rot = { x = 353.296, y = 97.209, z = 352.137 }, level = 26, drop_tag = "解谜低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 22 },
	-- 变量15
	{ config_id = 175003, gadget_id = 70211101, pos = { x = -283.000, y = 192.681, z = 3223.129 }, rot = { x = 0.000, y = 0.948, z = 358.431 }, level = 26, drop_tag = "解谜低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 22 },
	-- 变量20
	{ config_id = 175004, gadget_id = 70211101, pos = { x = -285.348, y = 193.040, z = 3231.158 }, rot = { x = 359.926, y = 125.885, z = 357.501 }, level = 26, drop_tag = "解谜低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 22 },
	-- 变量25
	{ config_id = 175005, gadget_id = 70211101, pos = { x = -284.376, y = 193.788, z = 3236.527 }, rot = { x = 358.397, y = 63.191, z = 359.847 }, level = 26, drop_tag = "解谜低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 22 },
	-- 变量30
	{ config_id = 175006, gadget_id = 70211101, pos = { x = -275.020, y = 197.064, z = 3213.580 }, rot = { x = 1.207, y = 2.828, z = 354.414 }, level = 26, drop_tag = "解谜低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 22 },
	-- 变量35
	{ config_id = 175007, gadget_id = 70211101, pos = { x = -271.183, y = 196.272, z = 3221.830 }, rot = { x = 353.825, y = 331.510, z = 354.260 }, level = 26, drop_tag = "解谜低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 22 },
	-- 变量40
	{ config_id = 175008, gadget_id = 70211101, pos = { x = -284.531, y = 194.642, z = 3209.356 }, rot = { x = 0.000, y = 20.158, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 22 },
	-- 变量45
	{ config_id = 175009, gadget_id = 70211111, pos = { x = -279.109, y = 195.780, z = 3210.521 }, rot = { x = 0.000, y = 314.953, z = 5.753 }, level = 26, drop_tag = "解谜中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 22 },
	-- 变量50
	{ config_id = 175010, gadget_id = 70211111, pos = { x = -294.787, y = 194.456, z = 3230.941 }, rot = { x = 354.532, y = 124.187, z = 10.811 }, level = 26, drop_tag = "解谜中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 22 },
	-- 变量55
	{ config_id = 175011, gadget_id = 70211111, pos = { x = -275.107, y = 193.479, z = 3220.377 }, rot = { x = 2.495, y = 322.526, z = 354.146 }, level = 26, drop_tag = "解谜中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 22 },
	-- 变量60
	{ config_id = 175012, gadget_id = 70211121, pos = { x = -300.315, y = 197.152, z = 3219.817 }, rot = { x = 10.590, y = 72.564, z = 7.561 }, level = 26, drop_tag = "解谜高级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 22 },
	-- 变量65
	{ config_id = 175013, gadget_id = 70211121, pos = { x = -292.299, y = 193.275, z = 3222.430 }, rot = { x = 356.677, y = 80.648, z = 359.937 }, level = 26, drop_tag = "解谜高级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 22 },
	-- 变量65
	{ config_id = 175014, gadget_id = 70211121, pos = { x = -288.907, y = 193.292, z = 3218.511 }, rot = { x = 1.608, y = 23.090, z = 358.442 }, level = 26, drop_tag = "解谜高级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 22 },
	-- 变量65
	{ config_id = 175015, gadget_id = 70211131, pos = { x = -289.700, y = 193.154, z = 3221.035 }, rot = { x = 355.970, y = 63.078, z = 0.471 }, level = 26, drop_tag = "解谜超级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 22 },
	-- 5
	{ config_id = 175016, gadget_id = 70360001, pos = { x = -285.367, y = 194.905, z = 3217.639 }, rot = { x = 0.000, y = 349.195, z = 0.000 }, level = 27, isOneoff = true, persistent = true, area_id = 22 },
	-- 10
	{ config_id = 175030, gadget_id = 70360001, pos = { x = -290.359, y = 193.479, z = 3227.093 }, rot = { x = 0.000, y = 65.956, z = 0.000 }, level = 27, isOneoff = true, persistent = true, area_id = 22 },
	-- 15
	{ config_id = 175031, gadget_id = 70360001, pos = { x = -282.892, y = 193.386, z = 3223.533 }, rot = { x = 0.000, y = 65.956, z = 0.000 }, level = 27, isOneoff = true, persistent = true, area_id = 22 },
	-- 20
	{ config_id = 175032, gadget_id = 70360001, pos = { x = -285.039, y = 193.606, z = 3230.885 }, rot = { x = 0.000, y = 65.956, z = 0.000 }, level = 27, isOneoff = true, persistent = true, area_id = 22 },
	-- 25
	{ config_id = 175033, gadget_id = 70360001, pos = { x = -284.024, y = 194.309, z = 3236.787 }, rot = { x = 0.000, y = 65.956, z = 0.000 }, level = 27, isOneoff = true, persistent = true, area_id = 22 },
	-- 30
	{ config_id = 175034, gadget_id = 70360001, pos = { x = -274.963, y = 197.468, z = 3214.050 }, rot = { x = 0.000, y = 65.956, z = 0.000 }, level = 27, isOneoff = true, persistent = true, area_id = 22 },
	-- 35
	{ config_id = 175035, gadget_id = 70360001, pos = { x = -271.353, y = 196.817, z = 3222.201 }, rot = { x = 0.000, y = 65.956, z = 0.000 }, level = 27, isOneoff = true, persistent = true, area_id = 22 },
	-- 40
	{ config_id = 175036, gadget_id = 70360001, pos = { x = -284.419, y = 195.163, z = 3209.789 }, rot = { x = 0.000, y = 65.956, z = 0.000 }, level = 27, isOneoff = true, persistent = true, area_id = 22 },
	-- 45
	{ config_id = 175037, gadget_id = 70360001, pos = { x = -279.487, y = 196.257, z = 3210.810 }, rot = { x = 0.000, y = 65.956, z = 0.000 }, level = 27, isOneoff = true, persistent = true, area_id = 22 },
	-- 50
	{ config_id = 175038, gadget_id = 70360001, pos = { x = -294.374, y = 195.120, z = 3230.740 }, rot = { x = 0.000, y = 65.956, z = 0.000 }, level = 27, isOneoff = true, persistent = true, area_id = 22 },
	-- 55
	{ config_id = 175039, gadget_id = 70360001, pos = { x = -275.354, y = 194.050, z = 3220.869 }, rot = { x = 0.000, y = 65.956, z = 0.000 }, level = 27, isOneoff = true, persistent = true, area_id = 22 },
	-- 60
	{ config_id = 175040, gadget_id = 70360001, pos = { x = -299.624, y = 197.759, z = 3220.104 }, rot = { x = 0.000, y = 65.956, z = 0.000 }, level = 27, isOneoff = true, persistent = true, area_id = 22 },
	-- 65
	{ config_id = 175041, gadget_id = 70360001, pos = { x = -291.747, y = 194.079, z = 3222.620 }, rot = { x = 0.000, y = 65.956, z = 0.000 }, level = 27, isOneoff = true, persistent = true, area_id = 22 },
	-- 65
	{ config_id = 175044, gadget_id = 70360001, pos = { x = -289.400, y = 193.884, z = 3221.182 }, rot = { x = 0.000, y = 65.956, z = 0.000 }, level = 27, isOneoff = true, persistent = true, area_id = 22 },
	-- 65
	{ config_id = 175045, gadget_id = 70360001, pos = { x = -288.666, y = 193.976, z = 3218.984 }, rot = { x = 0.000, y = 65.956, z = 0.000 }, level = 27, isOneoff = true, persistent = true, area_id = 22 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 变量5
	{ config_id = 1175017, name = "QUEST_START_175017", event = EventType.EVENT_QUEST_START, source = "7310001", condition = "", action = "action_EVENT_QUEST_START_175017", trigger_count = 0 },
	-- 变量10
	{ config_id = 1175018, name = "QUEST_START_175018", event = EventType.EVENT_QUEST_START, source = "7310002", condition = "", action = "action_EVENT_QUEST_START_175018", trigger_count = 0 },
	-- 变量15
	{ config_id = 1175019, name = "QUEST_START_175019", event = EventType.EVENT_QUEST_START, source = "7310003", condition = "", action = "action_EVENT_QUEST_START_175019", trigger_count = 0 },
	-- 变量20
	{ config_id = 1175020, name = "QUEST_START_175020", event = EventType.EVENT_QUEST_START, source = "7310004", condition = "", action = "action_EVENT_QUEST_START_175020", trigger_count = 0 },
	-- 变量25
	{ config_id = 1175021, name = "QUEST_START_175021", event = EventType.EVENT_QUEST_START, source = "7310005", condition = "", action = "action_EVENT_QUEST_START_175021", trigger_count = 0 },
	-- 变量30
	{ config_id = 1175022, name = "QUEST_START_175022", event = EventType.EVENT_QUEST_START, source = "7310006", condition = "", action = "action_EVENT_QUEST_START_175022", trigger_count = 0 },
	-- 变量35
	{ config_id = 1175023, name = "QUEST_START_175023", event = EventType.EVENT_QUEST_START, source = "7310007", condition = "", action = "action_EVENT_QUEST_START_175023", trigger_count = 0 },
	-- 变量40
	{ config_id = 1175024, name = "QUEST_START_175024", event = EventType.EVENT_QUEST_START, source = "7310008", condition = "", action = "action_EVENT_QUEST_START_175024", trigger_count = 0 },
	-- 变量45
	{ config_id = 1175025, name = "QUEST_START_175025", event = EventType.EVENT_QUEST_START, source = "7310009", condition = "", action = "action_EVENT_QUEST_START_175025", trigger_count = 0 },
	-- 变量50
	{ config_id = 1175026, name = "QUEST_START_175026", event = EventType.EVENT_QUEST_START, source = "7310010", condition = "", action = "action_EVENT_QUEST_START_175026", trigger_count = 0 },
	-- 变量55
	{ config_id = 1175027, name = "QUEST_START_175027", event = EventType.EVENT_QUEST_START, source = "7310011", condition = "", action = "action_EVENT_QUEST_START_175027", trigger_count = 0 },
	-- 变量60
	{ config_id = 1175028, name = "QUEST_START_175028", event = EventType.EVENT_QUEST_START, source = "7310012", condition = "", action = "action_EVENT_QUEST_START_175028", trigger_count = 0 },
	-- 变量65
	{ config_id = 1175029, name = "QUEST_START_175029", event = EventType.EVENT_QUEST_START, source = "7310013", condition = "", action = "action_EVENT_QUEST_START_175029", trigger_count = 0 },
	-- 操作台为0上按钮
	{ config_id = 1175042, name = "GROUP_LOAD_175042", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_175042", trigger_count = 0 },
	-- 点击后remidner
	{ config_id = 1175043, name = "SELECT_OPTION_175043", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_EVENT_SELECT_OPTION_175043", trigger_count = 0 },
	{ config_id = 1175046, name = "GADGET_STATE_CHANGE_175046", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_175046", action = "action_EVENT_GADGET_STATE_CHANGE_175046" },
	{ config_id = 1175047, name = "GADGET_STATE_CHANGE_175047", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_175047", action = "action_EVENT_GADGET_STATE_CHANGE_175047" },
	{ config_id = 1175048, name = "GADGET_STATE_CHANGE_175048", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_175048", action = "action_EVENT_GADGET_STATE_CHANGE_175048" },
	-- 发成就
	{ config_id = 1175049, name = "VARIABLE_CHANGE_175049", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_175049", action = "action_EVENT_VARIABLE_CHANGE_175049" },
	{ config_id = 1175050, name = "GADGET_STATE_CHANGE_175050", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_175050", action = "action_EVENT_GADGET_STATE_CHANGE_175050" },
	{ config_id = 1175051, name = "GADGET_STATE_CHANGE_175051", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_175051", action = "action_EVENT_GADGET_STATE_CHANGE_175051" },
	{ config_id = 1175052, name = "GADGET_STATE_CHANGE_175052", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_175052", action = "action_EVENT_GADGET_STATE_CHANGE_175052" },
	{ config_id = 1175053, name = "GADGET_STATE_CHANGE_175053", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_175053", action = "action_EVENT_GADGET_STATE_CHANGE_175053" },
	{ config_id = 1175054, name = "GADGET_STATE_CHANGE_175054", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_175054", action = "action_EVENT_GADGET_STATE_CHANGE_175054" },
	{ config_id = 1175055, name = "GADGET_STATE_CHANGE_175055", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_175055", action = "action_EVENT_GADGET_STATE_CHANGE_175055" },
	{ config_id = 1175056, name = "GADGET_STATE_CHANGE_175056", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_175056", action = "action_EVENT_GADGET_STATE_CHANGE_175056" },
	{ config_id = 1175057, name = "GADGET_STATE_CHANGE_175057", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_175057", action = "action_EVENT_GADGET_STATE_CHANGE_175057" },
	{ config_id = 1175058, name = "GADGET_STATE_CHANGE_175058", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_175058", action = "action_EVENT_GADGET_STATE_CHANGE_175058" },
	{ config_id = 1175059, name = "GADGET_STATE_CHANGE_175059", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_175059", action = "action_EVENT_GADGET_STATE_CHANGE_175059" },
	{ config_id = 1175060, name = "GADGET_STATE_CHANGE_175060", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_175060", action = "action_EVENT_GADGET_STATE_CHANGE_175060" },
	{ config_id = 1175061, name = "GADGET_STATE_CHANGE_175061", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_175061", action = "action_EVENT_GADGET_STATE_CHANGE_175061" },
	-- 发成就保底
	{ config_id = 1175062, name = "GROUP_LOAD_175062", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_175062", action = "action_EVENT_GROUP_LOAD_175062", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "123", value = 0, no_refresh = true }
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
		gadgets = { 175001, 175002, 175003, 175004, 175005, 175006, 175007, 175008, 175009, 175010, 175011, 175012, 175013, 175014, 175015, 175016, 175030, 175031, 175032, 175033, 175034, 175035, 175036, 175037, 175038, 175039, 175040, 175041, 175044, 175045 },
		regions = { },
		triggers = { "QUEST_START_175017", "QUEST_START_175018", "QUEST_START_175019", "QUEST_START_175020", "QUEST_START_175021", "QUEST_START_175022", "QUEST_START_175023", "QUEST_START_175024", "QUEST_START_175025", "QUEST_START_175026", "QUEST_START_175027", "QUEST_START_175028", "QUEST_START_175029", "GROUP_LOAD_175042", "SELECT_OPTION_175043", "GADGET_STATE_CHANGE_175046", "GADGET_STATE_CHANGE_175047", "GADGET_STATE_CHANGE_175048", "VARIABLE_CHANGE_175049", "GADGET_STATE_CHANGE_175050", "GADGET_STATE_CHANGE_175051", "GADGET_STATE_CHANGE_175052", "GADGET_STATE_CHANGE_175053", "GADGET_STATE_CHANGE_175054", "GADGET_STATE_CHANGE_175055", "GADGET_STATE_CHANGE_175056", "GADGET_STATE_CHANGE_175057", "GADGET_STATE_CHANGE_175058", "GADGET_STATE_CHANGE_175059", "GADGET_STATE_CHANGE_175060", "GADGET_STATE_CHANGE_175061", "GROUP_LOAD_175062" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_START_175017(context, evt)
	-- 将configid为 175001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 175001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133301175, EntityType.GADGET, 175016 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_175018(context, evt)
	-- 将configid为 175002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 175002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133301175, EntityType.GADGET, 175030 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_175019(context, evt)
	-- 将configid为 175003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 175003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133301175, EntityType.GADGET, 175031 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_175020(context, evt)
	-- 将configid为 175004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 175004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133301175, EntityType.GADGET, 175032 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_175021(context, evt)
	-- 将configid为 175005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 175005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133301175, EntityType.GADGET, 175033 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_175022(context, evt)
	-- 将configid为 175006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 175006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133301175, EntityType.GADGET, 175034 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_175023(context, evt)
	-- 将configid为 175007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 175007, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133301175, EntityType.GADGET, 175035 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_175024(context, evt)
	-- 将configid为 175008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 175008, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133301175, EntityType.GADGET, 175036 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_175025(context, evt)
	-- 将configid为 175009 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 175009, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133301175, EntityType.GADGET, 175037 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_175026(context, evt)
	-- 将configid为 175010 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 175010, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133301175, EntityType.GADGET, 175038 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_175027(context, evt)
	-- 将configid为 175011 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 175011, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133301175, EntityType.GADGET, 175039 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_175028(context, evt)
	-- 将configid为 175012 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 175012, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133301175, EntityType.GADGET, 175040 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_175029(context, evt)
	-- 将configid为 175013 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 175013, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 175014 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 175014, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 175015 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 175015, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133301175, EntityType.GADGET, 175041 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133301175, EntityType.GADGET, 175044 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133301175, EntityType.GADGET, 175045 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_175042(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133301175, 175016, {764}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133301175, 175030, {764}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133301175, 175031, {764}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133301175, 175032, {764}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133301175, 175033, {764}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133301175, 175034, {764}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133301175, 175035, {764}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133301175, 175036, {764}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133301175, 175037, {764}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133301175, 175038, {764}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133301175, 175039, {764}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133301175, 175040, {764}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133301175, 175041, {764}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133301175, 175044, {764}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133301175, 175045, {764}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		
	end
	
	return 0
end

-- 触发操作
function action_EVENT_SELECT_OPTION_175043(context, evt)
	-- 调用提示id为 33010061 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33010061) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_175046(context, evt)
	if 175015 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_175046(context, evt)
	-- 针对当前group内变量名为 "123" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "123", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_175047(context, evt)
	if 175001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_175047(context, evt)
	-- 针对当前group内变量名为 "123" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "123", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_175048(context, evt)
	if 175002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_175048(context, evt)
	-- 针对当前group内变量名为 "123" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "123", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_175049(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"123"为15
	if ScriptLib.GetGroupVariableValue(context, "123") ~= 15 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_175049(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 6088, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_175050(context, evt)
	if 175003 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_175050(context, evt)
	-- 针对当前group内变量名为 "123" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "123", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_175051(context, evt)
	if 175004 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_175051(context, evt)
	-- 针对当前group内变量名为 "123" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "123", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_175052(context, evt)
	if 175005 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_175052(context, evt)
	-- 针对当前group内变量名为 "123" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "123", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_175053(context, evt)
	if 175006 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_175053(context, evt)
	-- 针对当前group内变量名为 "123" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "123", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_175054(context, evt)
	if 175007 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_175054(context, evt)
	-- 针对当前group内变量名为 "123" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "123", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_175055(context, evt)
	if 175008 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_175055(context, evt)
	-- 针对当前group内变量名为 "123" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "123", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_175056(context, evt)
	if 175012 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_175056(context, evt)
	-- 针对当前group内变量名为 "123" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "123", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_175057(context, evt)
	if 175013 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_175057(context, evt)
	-- 针对当前group内变量名为 "123" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "123", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_175058(context, evt)
	if 175014 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_175058(context, evt)
	-- 针对当前group内变量名为 "123" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "123", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_175059(context, evt)
	if 175009 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_175059(context, evt)
	-- 针对当前group内变量名为 "123" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "123", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_175060(context, evt)
	if 175010 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_175060(context, evt)
	-- 针对当前group内变量名为 "123" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "123", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_175061(context, evt)
	if 175011 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_175061(context, evt)
	-- 针对当前group内变量名为 "123" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "123", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_175062(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133301175}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_175062(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 6088, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end