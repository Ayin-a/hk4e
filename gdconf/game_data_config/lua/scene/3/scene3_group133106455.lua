-- 基础信息
local base_info = {
	group_id = 133106455
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
	{ config_id = 455001, gadget_id = 70360179, pos = { x = -943.969, y = 207.920, z = 1680.006 }, rot = { x = 0.000, y = 224.310, z = 5.522 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 455002, gadget_id = 70220025, pos = { x = -943.237, y = 207.974, z = 1678.487 }, rot = { x = 84.071, y = 0.000, z = 0.000 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 455003, gadget_id = 70220025, pos = { x = -943.989, y = 208.041, z = 1679.675 }, rot = { x = 84.405, y = 306.191, z = 196.582 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 455006, gadget_id = 70360001, pos = { x = -943.558, y = 207.912, z = 1679.317 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, worktop_config = { is_persistent = true, init_options = { 751 } }, area_id = 19 },
	{ config_id = 455007, gadget_id = 70220025, pos = { x = -942.416, y = 208.020, z = 1679.925 }, rot = { x = 85.820, y = 324.776, z = 214.249 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 455010, gadget_id = 70220005, pos = { x = -938.419, y = 207.551, z = 1679.150 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, isOneoff = true, persistent = true, area_id = 19 },
	{ config_id = 455011, gadget_id = 70220005, pos = { x = -937.661, y = 207.754, z = 1678.377 }, rot = { x = 80.703, y = 0.000, z = 0.000 }, level = 36, isOneoff = true, persistent = true, area_id = 19 }
}

-- 区域
regions = {
	{ config_id = 455008, shape = RegionShape.SPHERE, radius = 30, pos = { x = -940.124, y = 206.087, z = 1675.859 }, area_id = 19 }
}

-- 触发器
triggers = {
	{ config_id = 1455004, name = "ANY_GADGET_DIE_455004", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_455004", trigger_count = 0 },
	{ config_id = 1455005, name = "SELECT_OPTION_455005", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_455005", action = "action_EVENT_SELECT_OPTION_455005", trigger_count = 0 },
	{ config_id = 1455008, name = "ENTER_REGION_455008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_455008", action = "action_EVENT_ENTER_REGION_455008", trigger_count = 0 },
	-- 保底
	{ config_id = 1455009, name = "GROUP_LOAD_455009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_455009", action = "action_EVENT_GROUP_LOAD_455009", trigger_count = 0 }
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
		gadgets = { },
		regions = { 455008 },
		triggers = { "ENTER_REGION_455008", "GROUP_LOAD_455009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 455002, 455003, 455007, 455010, 455011 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_455004" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 455001, 455006 },
		regions = { },
		triggers = { "SELECT_OPTION_455005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_455004(context, evt)
	if evt.param1 == 455002 or evt.param1 == 455003 or evt.param1 == 455007 then
		ScriptLib.AddExtraGroupSuite(context, 133106455, 3)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_455005(context, evt)
	-- 判断是gadgetid 455006 option_id 751
	if 455006 ~= evt.param1 then
		return false	
	end
	
	if 751 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_455005(context, evt)
	ScriptLib.TransPlayerToPos(context, {uid_list = {context.uid}, pos = {x=1056.20728, y= 743.530762, z=236.784058}, radius = 2, rot = {x=0, y=303.887543, z=0},scene_id=6}) 
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_455008(context, evt)
	if evt.param1 ~= 455008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	if ScriptLib.GetHostQuestState(context,7107701) == 3 then
		return true
	end
	
	return false
end

-- 触发操作
function action_EVENT_ENTER_REGION_455008(context, evt)
	-- 将本组内变量名为 "questfinish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "questfinish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133106455, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_455009(context, evt)
	-- 判断变量"questfinish"为1
	if ScriptLib.GetGroupVariableValue(context, "questfinish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_455009(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133106455, 2)
	
	return 0
end