-- 基础信息
local base_info = {
	group_id = 133302070
}

-- DEFS_MISCS
-- 特定Region或者Group可以写，每次EnterRegion会检测
local defs ={
    regionList = {70001}, 
    -- 1,2,3,4对应4套等级
    curCommander =2,
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
}

-- 区域
regions = {
	{ config_id = 70001, shape = RegionShape.POLYGON, pos = { x = -76.523, y = 127.500, z = 2874.855 }, height = 255.000, point_array = { { x = -185.326, y = 2845.729 }, { x = -179.967, y = 2873.572 }, { x = -149.360, y = 2884.403 }, { x = -131.310, y = 2920.118 }, { x = -93.771, y = 2979.540 }, { x = 20.948, y = 2993.429 }, { x = 32.280, y = 2907.000 }, { x = -23.303, y = 2756.281 }, { x = -144.041, y = 2834.048 }, { x = -154.606, y = 2837.812 }, { x = -166.226, y = 2834.904 } }, area_id = 20 },
	{ config_id = 70002, shape = RegionShape.SPHERE, radius = 10, pos = { x = -132.173, y = 202.839, z = 2872.635 }, area_id = 20 }
}

-- 触发器
triggers = {
	{ config_id = 1070002, name = "ENTER_REGION_70002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_70002", action = "action_EVENT_ENTER_REGION_70002" },
	{ config_id = 1070003, name = "QUEST_START_70003", event = EventType.EVENT_QUEST_START, source = "7306331", condition = "", action = "action_EVENT_QUEST_START_70003", trigger_count = 0 },
	{ config_id = 1070004, name = "GROUP_LOAD_70004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_70004", action = "action_EVENT_GROUP_LOAD_70004", trigger_count = 0 },
	{ config_id = 1070007, name = "QUEST_START_70007", event = EventType.EVENT_QUEST_START, source = "7306307", condition = "", action = "action_EVENT_QUEST_START_70007", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "Gteach", value = 0, no_refresh = true }
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
		regions = { },
		triggers = { "QUEST_START_70007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 70001, 70002 },
		triggers = { "ENTER_REGION_70002", "QUEST_START_70003" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_70004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_70002(context, evt)
	if evt.param1 ~= 70002 then return false end
	
	-- 判断是区域70002
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 70002 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_70002(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7016, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 将本组内变量名为 "Gteach" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Gteach", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_70003(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133302070, 2)
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133302070, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_70004(context, evt)
	-- 判断变量"Gteach"为1
	if ScriptLib.GetGroupVariableValue(context, "Gteach") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_70004(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7016, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_70007(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133302070, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

require "V3_0/LanlaluoCommander"