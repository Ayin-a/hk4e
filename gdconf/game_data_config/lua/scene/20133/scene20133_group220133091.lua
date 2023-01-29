-- 基础信息
local base_info = {
	group_id = 220133091
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
	--  gadgetA
	{ config_id = 91001, gadget_id = 70800249, pos = { x = 2252.827, y = 516.451, z = 456.653 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_SUPER },
	--  gadgetB
	{ config_id = 91010, gadget_id = 70800249, pos = { x = 2252.827, y = 516.451, z = 456.653 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_SUPER }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 二阶段重新响起来
	{ config_id = 1091002, name = "GROUP_LOAD_91002", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_91002", trigger_count = 0 },
	-- 保底1
	{ config_id = 1091004, name = "GROUP_LOAD_91004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_91004", action = "action_EVENT_GROUP_LOAD_91004", trigger_count = 0 },
	-- 保底2
	{ config_id = 1091005, name = "GROUP_LOAD_91005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_91005", action = "action_EVENT_GROUP_LOAD_91005", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "GadgetADie", value = 0, no_refresh = true },
	{ config_id = 2, name = "GadgetBDie", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	regions = {
		{ config_id = 91003, shape = RegionShape.SPHERE, radius = 12, pos = { x = 219.040, y = 131.765, z = 2081.908 } }
	},
	triggers = {
		{ config_id = 1091003, name = "ENTER_REGION_91003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_91003", action = "action_EVENT_ENTER_REGION_91003", trigger_count = 0 }
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
		-- description = 【正常播BGM】,
		monsters = { },
		gadgets = { 91001 },
		regions = { },
		triggers = { "GROUP_LOAD_91002", "GROUP_LOAD_91004", "GROUP_LOAD_91005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 【静音BGM】,
		monsters = { },
		gadgets = { 91010 },
		regions = { },
		triggers = { "GROUP_LOAD_91002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GROUP_LOAD_91002(context, evt)
	if ScriptLib.GetHostQuestState(context,4006815) == 3 then
		ScriptLib.AddExtraGroupSuite(context, 220133091, 2)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_91004(context, evt)
	-- 判断变量"GadgetADie"为1
	if ScriptLib.GetGroupVariableValue(context, "GadgetADie") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_91004(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 91001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_91005(context, evt)
	-- 判断变量"GadgetBDie"为1
	if ScriptLib.GetGroupVariableValue(context, "GadgetBDie") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_91005(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 91010 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end