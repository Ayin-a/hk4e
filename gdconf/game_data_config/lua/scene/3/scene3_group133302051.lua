-- 基础信息
local base_info = {
	group_id = 133302051
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
	{ config_id = 51003, gadget_id = 70330255, pos = { x = -336.735, y = 258.962, z = 2223.842 }, rot = { x = 0.000, y = 145.279, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 51004, gadget_id = 70330255, pos = { x = -326.623, y = 258.269, z = 2208.645 }, rot = { x = 353.486, y = 181.992, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 51005, gadget_id = 70330255, pos = { x = -335.542, y = 262.294, z = 2198.298 }, rot = { x = 344.832, y = 265.525, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 51006, gadget_id = 70330255, pos = { x = -354.634, y = 268.716, z = 2193.506 }, rot = { x = 346.950, y = 236.325, z = 7.352 }, level = 27, area_id = 24 },
	{ config_id = 51007, gadget_id = 70330255, pos = { x = -372.739, y = 275.426, z = 2180.583 }, rot = { x = 351.405, y = 156.353, z = 336.772 }, level = 27, area_id = 24 },
	{ config_id = 51008, gadget_id = 70330255, pos = { x = -357.908, y = 274.862, z = 2167.051 }, rot = { x = 350.927, y = 102.915, z = 359.601 }, level = 27, area_id = 24 },
	{ config_id = 51009, gadget_id = 70330255, pos = { x = -335.201, y = 275.255, z = 2166.870 }, rot = { x = 0.429, y = 96.895, z = 359.886 }, level = 27, area_id = 24 },
	{ config_id = 51010, gadget_id = 70330255, pos = { x = -309.066, y = 274.717, z = 2162.087 }, rot = { x = 345.200, y = 100.639, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 51011, gadget_id = 70330255, pos = { x = -286.318, y = 280.444, z = 2154.460 }, rot = { x = 347.367, y = 132.613, z = 352.226 }, level = 27, area_id = 24 },
	{ config_id = 51012, gadget_id = 70330255, pos = { x = -271.878, y = 284.592, z = 2145.344 }, rot = { x = 345.200, y = 100.639, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 51013, gadget_id = 70330255, pos = { x = -252.928, y = 289.379, z = 2145.608 }, rot = { x = 346.410, y = 76.835, z = 5.918 }, level = 27, area_id = 24 },
	{ config_id = 51014, gadget_id = 70330255, pos = { x = -233.556, y = 291.686, z = 2148.552 }, rot = { x = 345.299, y = 107.429, z = 358.269 }, level = 27, area_id = 24 },
	{ config_id = 51015, gadget_id = 70330255, pos = { x = -212.235, y = 297.498, z = 2137.835 }, rot = { x = 345.592, y = 114.142, z = 356.580 }, level = 27, area_id = 24 },
	{ config_id = 51016, gadget_id = 70330255, pos = { x = -192.408, y = 300.344, z = 2127.834 }, rot = { x = 345.200, y = 100.639, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 51017, gadget_id = 70330255, pos = { x = -175.219, y = 304.998, z = 2122.843 }, rot = { x = 348.123, y = 63.392, z = 8.894 }, level = 27, area_id = 20 },
	{ config_id = 51018, gadget_id = 70330255, pos = { x = -147.966, y = 306.700, z = 2129.876 }, rot = { x = 346.604, y = 74.984, z = 6.350 }, level = 27, area_id = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1051001, name = "GROUP_LOAD_51001", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_51001", action = "action_EVENT_GROUP_LOAD_51001" },
	{ config_id = 1051002, name = "GROUP_LOAD_51002", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_51002", action = "action_EVENT_GROUP_LOAD_51002", trigger_count = 0 },
	{ config_id = 1051019, name = "QUEST_START_51019", event = EventType.EVENT_QUEST_START, source = "7306907", condition = "", action = "action_EVENT_QUEST_START_51019", trigger_count = 0 }
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
		triggers = { "GROUP_LOAD_51001", "QUEST_START_51019" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 51003, 51004, 51005, 51006, 51007, 51008, 51009, 51010, 51011, 51012, 51013, 51014, 51015, 51016, 51017, 51018 },
		regions = { },
		triggers = { "GROUP_LOAD_51002" },
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
function condition_EVENT_GROUP_LOAD_51001(context, evt)
	local curQuestState = ScriptLib.GetHostQuestState(context,7306907)
	if -1 == curQuestState or 0 == curQuestState then
	  return false
	end
	if curQuestState ~= 2 then
	   return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_51001(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133302051, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_51002(context, evt)
	local curQuestState = ScriptLib.GetHostQuestState(context,7306907)
	if -1 == curQuestState or 0 == curQuestState then
	  return false
	end
	if curQuestState ~= 3 then
	   return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_51002(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133302051, 2)
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133302051, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_51019(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133302051, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end