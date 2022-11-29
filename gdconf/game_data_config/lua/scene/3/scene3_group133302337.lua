-- 基础信息
local base_info = {
	group_id = 133302337
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
	{ config_id = 337001, gadget_id = 70710062, pos = { x = -862.866, y = 133.174, z = 2316.643 }, rot = { x = 336.327, y = 54.703, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 337004, gadget_id = 70360001, pos = { x = -861.509, y = 132.584, z = 2317.408 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, worktop_config = { is_persistent = true, init_options = { 751 } }, area_id = 24 }
}

-- 区域
regions = {
	{ config_id = 337010, shape = RegionShape.SPHERE, radius = 30, pos = { x = -862.648, y = 132.293, z = 2316.895 }, area_id = 24 }
}

-- 触发器
triggers = {
	{ config_id = 1337002, name = "GADGET_CREATE_337002", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_337002", action = "action_EVENT_GADGET_CREATE_337002", trigger_count = 0 },
	{ config_id = 1337009, name = "SELECT_OPTION_337009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_337009", action = "action_EVENT_SELECT_OPTION_337009", trigger_count = 0 },
	{ config_id = 1337010, name = "ENTER_REGION_337010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_337010", action = "action_EVENT_ENTER_REGION_337010", trigger_count = 0 },
	-- 保底
	{ config_id = 1337011, name = "GROUP_LOAD_337011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_337011", action = "action_EVENT_GROUP_LOAD_337011", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "questfinish", value = 0, no_refresh = true }
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
		gadgets = { },
		regions = { 337010 },
		triggers = { "ENTER_REGION_337010", "GROUP_LOAD_337011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 337001, 337004 },
		regions = { },
		triggers = { "GADGET_CREATE_337002", "SELECT_OPTION_337009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_337002(context, evt)
	if 337004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_337002(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133302337, 337004, {751}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_337009(context, evt)
	-- 判断是gadgetid 337004 option_id 751
	if 337004 ~= evt.param1 then
		return false	
	end
	
	if 751 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_337009(context, evt)
	ScriptLib.TransPlayerToPos(context, {uid_list = {context.uid}, pos = {x=723.27, y=818.85, z=57.64}, radius = 2, rot = {x=0, y=0, z=0},scene_id=6}) 
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_337010(context, evt)
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	if ScriptLib.GetHostQuestState(context,7103709) == 3 then
		return true
	end
	
	return false
end

-- 触发操作
function action_EVENT_ENTER_REGION_337010(context, evt)
	-- 将本组内变量名为 "questfinish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "questfinish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133302337, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_337011(context, evt)
	-- 判断变量"questfinish"为1
	if ScriptLib.GetGroupVariableValue(context, "questfinish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_337011(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133302337, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end