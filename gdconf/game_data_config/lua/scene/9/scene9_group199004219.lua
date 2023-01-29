-- 基础信息
local base_info = {
	group_id = 199004219
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
	{ config_id = 219001, gadget_id = 70710007, pos = { x = -228.996, y = 120.532, z = -515.285 }, rot = { x = 341.849, y = 248.907, z = -0.001 }, level = 20, area_id = 400 },
	{ config_id = 219002, gadget_id = 70710007, pos = { x = -219.589, y = 121.309, z = -518.302 }, rot = { x = 14.378, y = 15.418, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 219003, gadget_id = 70710007, pos = { x = -214.779, y = 120.841, z = -512.917 }, rot = { x = 332.776, y = 233.931, z = 357.629 }, level = 20, area_id = 400 },
	{ config_id = 219004, gadget_id = 70211121, pos = { x = -223.967, y = 119.818, z = -520.667 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "解谜高级群岛", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 400 },
	{ config_id = 219007, gadget_id = 70360001, pos = { x = -227.988, y = 120.000, z = -519.777 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1219008, name = "LEVEL_TAG_CHANGE_219008", event = EventType.EVENT_LEVEL_TAG_CHANGE, source = "", condition = "", action = "action_EVENT_LEVEL_TAG_CHANGE_219008", trigger_count = 0 },
	{ config_id = 1219009, name = "GROUP_LOAD_219009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_219009", trigger_count = 0 },
	{ config_id = 1219010, name = "VARIABLE_CHANGE_219010", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "", action = "action_EVENT_VARIABLE_CHANGE_219010", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "chest1", value = 0, no_refresh = true },
	{ config_id = 2, name = "chest2", value = 0, no_refresh = true },
	{ config_id = 3, name = "chest3", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 5,
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
		gadgets = { 219007 },
		regions = { },
		triggers = { "LEVEL_TAG_CHANGE_219008", "GROUP_LOAD_219009", "VARIABLE_CHANGE_219010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 219002 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 219001 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 219003 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 219004 },
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
function action_EVENT_LEVEL_TAG_CHANGE_219008(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "chest1") == 0 and ScriptLib.CheckSceneTag(context, 9,1025 ) then
		ScriptLib.AddExtraGroupSuite(context, 0, 2)
	else
		ScriptLib.RemoveExtraGroupSuite(context, 199004219, 2)
	end
	
	if ScriptLib.GetGroupVariableValue(context, "chest2") == 0 and ScriptLib.CheckSceneTag(context, 9,1024 ) then
		ScriptLib.AddExtraGroupSuite(context, 0, 3)
	else
		ScriptLib.RemoveExtraGroupSuite(context, 199004219, 3)
	end
	
	if ScriptLib.GetGroupVariableValue(context, "chest3") == 0 and ScriptLib.CheckSceneTag(context, 9,1022 ) then
		ScriptLib.AddExtraGroupSuite(context, 0, 4)
	else
		ScriptLib.RemoveExtraGroupSuite(context, 199004219, 4)
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_219009(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "chest1") == 0 and ScriptLib.CheckSceneTag(context, 9,1025 ) then
		ScriptLib.AddExtraGroupSuite(context, 0, 2)
	end
	
	if ScriptLib.GetGroupVariableValue(context, "chest2") == 0 and ScriptLib.CheckSceneTag(context, 9,1024 ) then
		ScriptLib.AddExtraGroupSuite(context, 0, 3)
	end
	
	if ScriptLib.GetGroupVariableValue(context, "chest3") == 0 and ScriptLib.CheckSceneTag(context, 9,1022 ) then
		ScriptLib.AddExtraGroupSuite(context, 0, 4)
	end
	
	return 0
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_219010(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	if ScriptLib.GetGroupVariableValue(context, "chest1") == 1 and ScriptLib.GetGroupVariableValue(context, "chest2") == 1 and ScriptLib.GetGroupVariableValue(context, "chest3") == 1 then
		ScriptLib.GoToGroupSuite(context, 199004219, 5)
	end
	
	return 0
end