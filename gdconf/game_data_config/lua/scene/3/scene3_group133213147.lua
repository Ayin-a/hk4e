-- 基础信息
local base_info = {
	group_id = 133213147
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 147007, monster_id = 25080101, pos = { x = -3558.179, y = 202.065, z = -2822.503 }, rot = { x = 0.000, y = 101.221, z = 0.000 }, level = 27, drop_id = 1000100, isOneoff = true, pose_id = 1, area_id = 13 },
	{ config_id = 147008, monster_id = 25080101, pos = { x = -3553.937, y = 201.664, z = -2821.976 }, rot = { x = 0.000, y = 197.849, z = 0.000 }, level = 27, drop_id = 1000100, isOneoff = true, pose_id = 1, area_id = 13 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 147001, gadget_id = 70900394, pos = { x = -3556.770, y = 202.446, z = -2815.889 }, rot = { x = 356.782, y = 354.039, z = 8.289 }, level = 27, isOneoff = true, persistent = true, area_id = 13 },
	{ config_id = 147002, gadget_id = 70360001, pos = { x = -3556.836, y = 202.847, z = -2815.974 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, isOneoff = true, persistent = true, area_id = 13 }
}

-- 区域
regions = {
	{ config_id = 147003, shape = RegionShape.SPHERE, radius = 20, pos = { x = -3559.633, y = 205.399, z = -2817.726 }, area_id = 13 },
	{ config_id = 147006, shape = RegionShape.SPHERE, radius = 5, pos = { x = -3556.535, y = 201.667, z = -2818.414 }, area_id = 13 }
}

-- 触发器
triggers = {
	{ config_id = 1147003, name = "ENTER_REGION_147003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_147003", action = "action_EVENT_ENTER_REGION_147003" },
	{ config_id = 1147004, name = "GADGET_CREATE_147004", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_147004", action = "action_EVENT_GADGET_CREATE_147004", trigger_count = 0 },
	{ config_id = 1147005, name = "SELECT_OPTION_147005", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_147005", action = "action_EVENT_SELECT_OPTION_147005" },
	{ config_id = 1147006, name = "ENTER_REGION_147006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_147006", action = "action_EVENT_ENTER_REGION_147006" },
	{ config_id = 1147009, name = "GROUP_LOAD_147009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_147009", action = "action_EVENT_GROUP_LOAD_147009" }
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
	end_suite = 3,
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
		gadgets = { 147001 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 147001, 147002 },
		regions = { 147003, 147006 },
		triggers = { "ENTER_REGION_147003", "GADGET_CREATE_147004", "SELECT_OPTION_147005", "ENTER_REGION_147006", "GROUP_LOAD_147009" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 147007, 147008 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
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
function condition_EVENT_ENTER_REGION_147003(context, evt)
	if evt.param1 ~= 147003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_147003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7212417_end") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_147004(context, evt)
	if 147002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_147004(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133213147, 147002, {70}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_147005(context, evt)
	-- 判断是gadgetid 147002 option_id 70
	if 147002 ~= evt.param1 then
		return false	
	end
	
	if 70 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_147005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7212417_end") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7212418_end") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 147002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133213147, EntityType.GADGET, 147001 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_147006(context, evt)
	if evt.param1 ~= 147006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_147006(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213147, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_147009(context, evt)
	-- 判断指定group组剩余gadget数量是否非2
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133213147}) == 2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_147009(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7212417_end") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7212418_end") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 147002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133213147, EntityType.GADGET, 147001 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end