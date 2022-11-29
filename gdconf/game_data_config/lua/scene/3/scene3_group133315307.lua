-- 基础信息
local base_info = {
	group_id = 133315307
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
	{ config_id = 307001, gadget_id = 70900050, pos = { x = 226.084, y = 91.189, z = 3025.805 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 307002, gadget_id = 70900050, pos = { x = 219.574, y = 86.035, z = 3010.571 }, rot = { x = 0.000, y = 172.279, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 307003, gadget_id = 70900050, pos = { x = 207.816, y = 85.860, z = 3022.156 }, rot = { x = 0.000, y = 222.546, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 307005, gadget_id = 70211101, pos = { x = 223.994, y = 86.544, z = 3013.253 }, rot = { x = 5.313, y = 277.262, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 20 },
	{ config_id = 307006, gadget_id = 70310216, pos = { x = 226.443, y = 90.407, z = 3026.110 }, rot = { x = 0.000, y = 247.699, z = 0.000 }, level = 27, persistent = true, area_id = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1307004, name = "GADGET_STATE_CHANGE_307004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_307004", action = "action_EVENT_GADGET_STATE_CHANGE_307004", trigger_count = 0 },
	{ config_id = 1307007, name = "ANY_GADGET_DIE_307007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_307007", action = "action_EVENT_ANY_GADGET_DIE_307007", trigger_count = 0 },
	{ config_id = 1307008, name = "GROUP_LOAD_307008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_307008", action = "action_EVENT_GROUP_LOAD_307008", trigger_count = 0 }
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
		gadgets = { 307002, 307003, 307006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_307004", "ANY_GADGET_DIE_307007", "GROUP_LOAD_307008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_307004(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133315307, 307001) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133315307, 307002) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133315307, 307003) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_307004(context, evt)
	-- 创建id为307005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 307005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_307007(context, evt)
	if 307006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_307007(context, evt)
	-- 创建id为307001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 307001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_307008(context, evt)
	local curQuestState = ScriptLib.GetHostQuestState(context,7306334)
	if -1 == curQuestState or 0 == curQuestState then
	  return false
	end
	if curQuestState ~= 3 then
	   return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_307008(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 307006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 创建id为307001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 307001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end