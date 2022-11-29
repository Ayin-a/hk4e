-- 基础信息
local base_info = {
	group_id = 133304120
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
	{ config_id = 120001, gadget_id = 70330255, pos = { x = -1310.849, y = 308.049, z = 2118.904 }, rot = { x = 8.698, y = 90.917, z = 359.510 }, level = 30, area_id = 21 },
	{ config_id = 120002, gadget_id = 70330255, pos = { x = -1296.201, y = 301.165, z = 2127.055 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 120003, gadget_id = 70330255, pos = { x = -1286.770, y = 295.149, z = 2147.620 }, rot = { x = 0.000, y = 74.385, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 120004, gadget_id = 70330255, pos = { x = -1260.377, y = 287.588, z = 2159.876 }, rot = { x = 0.000, y = 83.913, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 120007, gadget_id = 70330255, pos = { x = -1236.750, y = 285.191, z = 2143.934 }, rot = { x = 353.153, y = 173.295, z = 0.001 }, level = 30, area_id = 21 },
	{ config_id = 120008, gadget_id = 70330255, pos = { x = -1235.770, y = 288.105, z = 2121.882 }, rot = { x = 0.000, y = 197.443, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 120009, gadget_id = 70330255, pos = { x = -1246.784, y = 293.437, z = 2101.061 }, rot = { x = 359.655, y = 210.028, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 120010, gadget_id = 70330255, pos = { x = -1268.455, y = 298.201, z = 2085.487 }, rot = { x = 0.000, y = 221.711, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 120011, gadget_id = 70330255, pos = { x = -1294.659, y = 300.188, z = 2076.097 }, rot = { x = 0.000, y = 252.997, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 120012, gadget_id = 70330255, pos = { x = -1327.929, y = 303.374, z = 2059.664 }, rot = { x = 0.000, y = 231.486, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 120013, gadget_id = 70330255, pos = { x = -1348.479, y = 306.589, z = 2041.392 }, rot = { x = 0.000, y = 254.495, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 120014, gadget_id = 70330255, pos = { x = -1369.261, y = 312.033, z = 2020.994 }, rot = { x = 349.928, y = 180.907, z = 0.000 }, level = 30, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1120005, name = "GROUP_LOAD_120005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_120005", action = "action_EVENT_GROUP_LOAD_120005" },
	{ config_id = 1120006, name = "GROUP_LOAD_120006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_120006", action = "action_EVENT_GROUP_LOAD_120006", trigger_count = 0 },
	{ config_id = 1120015, name = "QUEST_START_120015", event = EventType.EVENT_QUEST_START, source = "7307416", condition = "", action = "action_EVENT_QUEST_START_120015", trigger_count = 0 }
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
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_120005", "QUEST_START_120015" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 120001, 120002, 120003, 120004, 120007, 120008, 120009, 120010, 120011, 120012, 120013, 120014 },
		regions = { },
		triggers = { "GROUP_LOAD_120006" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
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
function condition_EVENT_GROUP_LOAD_120005(context, evt)
	local curQuestState = ScriptLib.GetHostQuestState(context,7307416)
	if -1 == curQuestState or 0 == curQuestState then
	  return false
	end
	if curQuestState ~= 2 then
	   return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_120005(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133304120, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_120006(context, evt)
	local curQuestState = ScriptLib.GetHostQuestState(context,7307416)
	if -1 == curQuestState or 0 == curQuestState then
	  return false
	end
	if curQuestState ~= 3 then
	   return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_120006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133304120, 2)
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133304120, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_120015(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133304120, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end