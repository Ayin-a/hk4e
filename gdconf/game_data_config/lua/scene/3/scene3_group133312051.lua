-- 基础信息
local base_info = {
	group_id = 133312051
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
	{ config_id = 51001, gadget_id = 70330262, pos = { x = -3280.406, y = 210.848, z = 4618.438 }, rot = { x = 46.258, y = 112.985, z = 76.602 }, level = 32, persistent = true, area_id = 28 },
	{ config_id = 51002, gadget_id = 70330451, pos = { x = -3280.845, y = 211.544, z = 4615.576 }, rot = { x = 347.762, y = 204.466, z = 24.944 }, level = 32, state = GadgetState.Action01, persistent = true, area_id = 28 },
	{ config_id = 51005, gadget_id = 70330262, pos = { x = -3282.245, y = 217.114, z = 4622.632 }, rot = { x = 332.346, y = 119.136, z = 102.042 }, level = 32, persistent = true, area_id = 28 },
	{ config_id = 51006, gadget_id = 70330451, pos = { x = -3282.483, y = 212.926, z = 4618.378 }, rot = { x = 347.762, y = 204.466, z = 329.691 }, level = 32, state = GadgetState.Action01, persistent = true, area_id = 28 },
	{ config_id = 51007, gadget_id = 70330262, pos = { x = -3274.380, y = 210.494, z = 4613.954 }, rot = { x = 80.905, y = 57.630, z = 18.747 }, level = 32, persistent = true, area_id = 28 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 完成
	{ config_id = 1051003, name = "ANY_GADGET_DIE_51003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_51003", action = "action_EVENT_ANY_GADGET_DIE_51003", trigger_count = 0 },
	-- 保底
	{ config_id = 1051004, name = "GROUP_LOAD_51004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_51004", action = "action_EVENT_GROUP_LOAD_51004", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "Finish", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1051008, name = "TIME_AXIS_PASS_51008", event = EventType.EVENT_TIME_AXIS_PASS, source = "die", condition = "condition_EVENT_TIME_AXIS_PASS_51008", action = "action_EVENT_TIME_AXIS_PASS_51008" }
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
	end_suite = 2,
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
		gadgets = { 51001, 51002, 51005, 51006, 51007 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_51003", "GROUP_LOAD_51004" },
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

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_51003(context, evt)
	-- 判断指定group组剩余gadget数量是否是2 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133312051}) ~= 2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_51003(context, evt)
	-- 将本组内变量名为 "Finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 51002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 51006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_51004(context, evt)
	-- 判断变量"Finish"为1
	if ScriptLib.GetGroupVariableValue(context, "Finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_51004(context, evt)
		-- 杀死Group内所有gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133312051, kill_policy = GroupKillPolicy.GROUP_KILL_GADGET }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_gadget_by_group")
			return -1
		end
	
	return 0
end