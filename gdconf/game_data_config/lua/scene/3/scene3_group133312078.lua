-- 基础信息
local base_info = {
	group_id = 133312078
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
	{ config_id = 78001, gadget_id = 70330262, pos = { x = -3302.780, y = 237.672, z = 4553.695 }, rot = { x = 22.694, y = 327.483, z = 6.929 }, level = 32, persistent = true, area_id = 28 },
	{ config_id = 78002, gadget_id = 70330451, pos = { x = -3301.863, y = 236.320, z = 4554.571 }, rot = { x = 14.886, y = 118.140, z = 2.570 }, level = 32, state = GadgetState.Action01, persistent = true, area_id = 28 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 完成
	{ config_id = 1078003, name = "ANY_GADGET_DIE_78003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_78003", action = "action_EVENT_ANY_GADGET_DIE_78003", trigger_count = 0 },
	{ config_id = 1078004, name = "GROUP_LOAD_78004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_78004", action = "action_EVENT_GROUP_LOAD_78004", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "Finish", value = 0, no_refresh = true }
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
		gadgets = { 78001, 78002 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_78003", "GROUP_LOAD_78004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_78003(context, evt)
	if 78001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_78003(context, evt)
	-- 将本组内变量名为 "Finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 78002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_78004(context, evt)
	-- 判断变量"Finish"为1
	if ScriptLib.GetGroupVariableValue(context, "Finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_78004(context, evt)
		-- 杀死Group内所有实体
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133312078, kill_policy = GroupKillPolicy.GROUP_KILL_ALL }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_group")
			return -1
		end
		
	
	return 0
end