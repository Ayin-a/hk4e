-- 基础信息
local base_info = {
	group_id = 133307214
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
	-- 居尔城大门
	{ config_id = 214001, gadget_id = 70950145, pos = { x = -1407.505, y = -27.438, z = 5624.496 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	-- 流沙遗迹
	{ config_id = 214010, gadget_id = 70950145, pos = { x = -1415.831, y = -28.609, z = 5637.455 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	-- 赤王陵
	{ config_id = 214018, gadget_id = 70950145, pos = { x = -1444.292, y = -28.610, z = 5639.085 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	-- 赤王之杯
	{ config_id = 214021, gadget_id = 70950145, pos = { x = -1396.529, y = -28.610, z = 5603.873 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	-- 阿如村
	{ config_id = 214026, gadget_id = 70950145, pos = { x = -1443.429, y = -28.610, z = 5576.255 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	-- 赤王之心
	{ config_id = 214034, gadget_id = 70950145, pos = { x = -1429.102, y = -28.610, z = 5630.215 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	-- 太阳船
	{ config_id = 214035, gadget_id = 70950145, pos = { x = -1453.539, y = -28.610, z = 5625.242 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	-- 显圣厅
	{ config_id = 214036, gadget_id = 70950145, pos = { x = -1429.792, y = -28.610, z = 5584.089 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 居尔城大门 触摸
	{ config_id = 1214002, name = "GADGET_CREATE_214002", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_214002", action = "action_EVENT_GADGET_CREATE_214002", trigger_count = 0 },
	-- 居尔城大门 传送
	{ config_id = 1214003, name = "SELECT_OPTION_214003", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_214003", action = "action_EVENT_SELECT_OPTION_214003", trigger_count = 0 },
	{ config_id = 1214004, name = "QUEST_START_214004", event = EventType.EVENT_QUEST_START, source = "7330503", condition = "", action = "action_EVENT_QUEST_START_214004", trigger_count = 0 },
	-- 流沙遗迹    触摸
	{ config_id = 1214011, name = "GADGET_CREATE_214011", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_214011", action = "action_EVENT_GADGET_CREATE_214011", trigger_count = 0 },
	-- 流沙遗迹    传送
	{ config_id = 1214012, name = "SELECT_OPTION_214012", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_214012", action = "action_EVENT_SELECT_OPTION_214012", trigger_count = 0 },
	{ config_id = 1214013, name = "GROUP_LOAD_214013", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_214013", action = "action_EVENT_GROUP_LOAD_214013", trigger_count = 0 },
	-- 居尔城大门 任务传送
	{ config_id = 1214017, name = "SELECT_OPTION_214017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_214017", action = "action_EVENT_SELECT_OPTION_214017", trigger_count = 0 },
	-- 赤王陵       触摸
	{ config_id = 1214019, name = "GADGET_CREATE_214019", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_214019", action = "action_EVENT_GADGET_CREATE_214019", trigger_count = 0 },
	-- 赤王陵       传送
	{ config_id = 1214020, name = "SELECT_OPTION_214020", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_214020", action = "action_EVENT_SELECT_OPTION_214020", trigger_count = 0 },
	-- 赤王之杯    触摸
	{ config_id = 1214022, name = "GADGET_CREATE_214022", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_214022", action = "action_EVENT_GADGET_CREATE_214022", trigger_count = 0 },
	-- 赤王之杯    传送
	{ config_id = 1214023, name = "SELECT_OPTION_214023", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_214023", action = "action_EVENT_SELECT_OPTION_214023", trigger_count = 0 },
	-- 阿如村       触摸
	{ config_id = 1214024, name = "GADGET_CREATE_214024", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_214024", action = "action_EVENT_GADGET_CREATE_214024", trigger_count = 0 },
	-- 阿如村       传送
	{ config_id = 1214025, name = "SELECT_OPTION_214025", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_214025", action = "action_EVENT_SELECT_OPTION_214025", trigger_count = 0 },
	-- 赤王之心    触摸
	{ config_id = 1214037, name = "GADGET_CREATE_214037", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_214037", action = "action_EVENT_GADGET_CREATE_214037", trigger_count = 0 },
	-- 赤王之心    传送
	{ config_id = 1214038, name = "SELECT_OPTION_214038", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_214038", action = "action_EVENT_SELECT_OPTION_214038", trigger_count = 0 },
	-- 太阳船       传送
	{ config_id = 1214039, name = "SELECT_OPTION_214039", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_214039", action = "action_EVENT_SELECT_OPTION_214039", trigger_count = 0 },
	-- 太阳船       触摸
	{ config_id = 1214040, name = "GADGET_CREATE_214040", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_214040", action = "action_EVENT_GADGET_CREATE_214040", trigger_count = 0 },
	-- 显圣厅       传送
	{ config_id = 1214041, name = "SELECT_OPTION_214041", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_214041", action = "action_EVENT_SELECT_OPTION_214041", trigger_count = 0 },
	-- 显圣厅       触摸
	{ config_id = 1214042, name = "GADGET_CREATE_214042", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_214042", action = "action_EVENT_GADGET_CREATE_214042", trigger_count = 0 }
}

-- 点位
points = {
	-- 阿如村传送位置
	{ config_id = 214005, pos = { x = -2000.131, y = 299.066, z = 4091.058 }, rot = { x = 0.000, y = 322.032, z = 0.000 }, area_id = 26 },
	-- 赤王陵传送位置
	{ config_id = 214006, pos = { x = -2350.097, y = 173.862, z = 5324.314 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 27 },
	-- 流沙遗迹传送位置
	{ config_id = 214007, pos = { x = -1489.843, y = 45.788, z = 5617.260 }, rot = { x = 0.000, y = 105.060, z = 0.000 }, area_id = 32 },
	-- 赤王之杯传送位置
	{ config_id = 214008, pos = { x = -765.836, y = -338.725, z = 5438.522 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 32 },
	-- 居尔城大门传送位置
	{ config_id = 214009, pos = { x = -1110.681, y = -32.558, z = 5475.348 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 32 },
	-- 显圣厅传送位置
	{ config_id = 214014, pos = { x = -1481.910, y = 83.103, z = 4503.920 }, rot = { x = 0.000, y = 189.000, z = 0.000 }, area_id = 26 },
	-- 太阳船传送位置
	{ config_id = 214015, pos = { x = -2425.771, y = 110.668, z = 5236.500 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 27 },
	-- 赤王之心传送位置
	{ config_id = 214016, pos = { x = -2237.250, y = 50.480, z = 5568.330 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, area_id = 27 }
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
		regions = { },
		triggers = { "QUEST_START_214004", "GROUP_LOAD_214013" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 214001, 214010, 214018, 214021, 214026, 214034, 214035, 214036 },
		regions = { },
		triggers = { "GADGET_CREATE_214002", "SELECT_OPTION_214003", "GADGET_CREATE_214011", "SELECT_OPTION_214012", "SELECT_OPTION_214017", "GADGET_CREATE_214019", "SELECT_OPTION_214020", "GADGET_CREATE_214022", "SELECT_OPTION_214023", "GADGET_CREATE_214024", "SELECT_OPTION_214025", "GADGET_CREATE_214037", "SELECT_OPTION_214038", "SELECT_OPTION_214039", "GADGET_CREATE_214040", "SELECT_OPTION_214041", "GADGET_CREATE_214042" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_214002(context, evt)
	if 214001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_214002(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {331}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_214003(context, evt)
	-- 判断是gadgetid 214001 option_id 331
	if 214001 ~= evt.param1 then
		return false	
	end
	
	if 331 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_214003(context, evt)
	ScriptLib.TransPlayerToPos(context, {uid_list = {context.uid}, pos = {x=-1110.681, y= -32.55792, z=5475.348}, radius = 2, rot = {x=0, y=134.61, z=0},scene_id=3})
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_214004(context, evt)
	ScriptLib.GoToGroupSuite(context, 133307214, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_214011(context, evt)
	if 214010 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_214011(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {331}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_214012(context, evt)
	-- 判断是gadgetid 214010 option_id 331
	if 214010 ~= evt.param1 then
		return false	
	end
	
	if 331 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_214012(context, evt)
	ScriptLib.TransPlayerToPos(context, {uid_list = {context.uid}, pos = {x=-1489.843, y= 45.78767, z=5617.26}, radius = 2, rot = {x=0, y=105.0602, z=0},scene_id=3})
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_214013(context, evt)
	local curQuestState = ScriptLib.GetHostQuestState(context,7330502)
	if -1 == curQuestState or 0 == curQuestState then
	  return false
	end
	if curQuestState ~= 3 then
	   return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_214013(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133307214, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_214017(context, evt)
	-- 判断是gadgetid 214001 option_id 331
	if 214001 ~= evt.param1 then
		return false	
	end
	
	if 331 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_214017(context, evt)
	ScriptLib.AddQuestProgress(context, "7330505")
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_214019(context, evt)
	if 214018 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_214019(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {331}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_214020(context, evt)
	-- 判断是gadgetid 214018 option_id 331
	if 214018 ~= evt.param1 then
		return false	
	end
	
	if 331 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_214020(context, evt)
	ScriptLib.TransPlayerToPos(context, {uid_list = {context.uid}, pos = {x=-2350.097, y= -173.8621, z=5324.314}, radius = 2, rot = {x=0, y=0, z=0},scene_id=3})
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_214022(context, evt)
	if 214021 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_214022(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {331}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_214023(context, evt)
	-- 判断是gadgetid 214021 option_id 331
	if 214021 ~= evt.param1 then
		return false	
	end
	
	if 331 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_214023(context, evt)
	ScriptLib.TransPlayerToPos(context, {uid_list = {context.uid}, pos = {x=-765.836, y= -338.7253, z=5438.522}, radius = 2, rot = {x=0, y=0, z=0},scene_id=3})
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_214024(context, evt)
	if 214026 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_214024(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {331}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_214025(context, evt)
	-- 判断是gadgetid 214026 option_id 331
	if 214026 ~= evt.param1 then
		return false	
	end
	
	if 331 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_214025(context, evt)
	ScriptLib.TransPlayerToPos(context, {uid_list = {context.uid}, pos = {x=-2000.131, y= 299.0656, z=4091.058}, radius = 2, rot = {x=0, y=322.032, z=0},scene_id=3})
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_214037(context, evt)
	if 214034 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_214037(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {331}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_214038(context, evt)
	-- 判断是gadgetid 214034 option_id 331
	if 214034 ~= evt.param1 then
		return false	
	end
	
	if 331 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_214038(context, evt)
	ScriptLib.TransPlayerToPos(context, {uid_list = {context.uid}, pos = {x=-2237.25, y= 50.48, z=5568.33}, radius = 2, rot = {x=0, y=270, z=0},scene_id=3})
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_214039(context, evt)
	-- 判断是gadgetid 214035 option_id 331
	if 214035 ~= evt.param1 then
		return false	
	end
	
	if 331 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_214039(context, evt)
	ScriptLib.TransPlayerToPos(context, {uid_list = {context.uid}, pos = {x=-2425.771, y=110.6675, z=5236.5}, radius = 2, rot = {x=0, y=0, z=0},scene_id=3})
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_214040(context, evt)
	if 214035 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_214040(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {331}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_214041(context, evt)
	-- 判断是gadgetid 214036 option_id 331
	if 214036 ~= evt.param1 then
		return false	
	end
	
	if 331 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_214041(context, evt)
	ScriptLib.TransPlayerToPos(context, {uid_list = {context.uid}, pos = {x=-1481.91, y=83.10291, z=4503.92}, radius = 2, rot = {x=0, y=189, z=0},scene_id=3})
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_214042(context, evt)
	if 214036 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_214042(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {331}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end