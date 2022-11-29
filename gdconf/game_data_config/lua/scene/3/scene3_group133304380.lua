-- 基础信息
local base_info = {
	group_id = 133304380
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
	{ config_id = 380001, gadget_id = 70360001, pos = { x = -1637.744, y = 129.014, z = 2060.934 }, rot = { x = 359.625, y = 358.572, z = 356.395 }, level = 30, persistent = true, area_id = 21 },
	{ config_id = 380004, gadget_id = 70330218, pos = { x = -1637.804, y = 128.384, z = 2064.644 }, rot = { x = 359.307, y = 353.500, z = 356.443 }, level = 30, isOneoff = true, persistent = true, area_id = 21 },
	{ config_id = 380005, gadget_id = 70290544, pos = { x = -1636.338, y = 134.073, z = 2071.044 }, rot = { x = 349.669, y = 18.864, z = 328.952 }, level = 30, isOneoff = true, persistent = true, area_id = 21 },
	{ config_id = 380008, gadget_id = 70310198, pos = { x = -1618.935, y = 125.595, z = 2086.317 }, rot = { x = 0.000, y = 20.096, z = 0.000 }, level = 30, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1380003, name = "QUEST_START_380003", event = EventType.EVENT_QUEST_START, source = "7302901", condition = "", action = "action_EVENT_QUEST_START_380003", trigger_count = 0 },
	{ config_id = 1380006, name = "ANY_GADGET_DIE_380006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_380006", action = "action_EVENT_ANY_GADGET_DIE_380006", trigger_count = 0 },
	-- 线上保护
	{ config_id = 1380007, name = "GROUP_LOAD_380007", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_380007", action = "action_EVENT_GROUP_LOAD_380007", trigger_count = 0 },
	-- load保护
	{ config_id = 1380009, name = "GROUP_LOAD_380009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_380009", action = "action_EVENT_GROUP_LOAD_380009", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 380002, gadget_id = 70330218, pos = { x = -1637.643, y = 128.376, z = 2065.006 }, rot = { x = 359.923, y = 183.290, z = 356.377 }, level = 30, isOneoff = true, persistent = true, area_id = 21 }
	}
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
		gadgets = { 380001, 380004, 380005, 380008 },
		regions = { },
		triggers = { "QUEST_START_380003", "ANY_GADGET_DIE_380006", "GROUP_LOAD_380007", "GROUP_LOAD_380009" },
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
function action_EVENT_QUEST_START_380003(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 380005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_380006(context, evt)
	if 380004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_380006(context, evt)
	-- 将configid为 380001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 380001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_380007(context, evt)
	local curQuestState = ScriptLib.GetHostQuestState(context,7302905)
	if -1 == curQuestState or 0 == curQuestState then
	  return false
	end
	if curQuestState ~= 3 then
	   return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_380007(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 380005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_380009(context, evt)
	-- 判断指定group组剩余gadget数量是否是2 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133304380}) ~= 2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_380009(context, evt)
	-- 将configid为 380001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 380001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end