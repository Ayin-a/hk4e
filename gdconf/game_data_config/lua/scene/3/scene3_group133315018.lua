-- 基础信息
local base_info = {
	group_id = 133315018
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 18014, monster_id = 26090101, pos = { x = 136.901, y = 284.560, z = 2266.946 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, isOneoff = true, pose_id = 102, area_id = 20 },
	{ config_id = 18015, monster_id = 26120301, pos = { x = 141.364, y = 283.904, z = 2263.789 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, isOneoff = true, pose_id = 102, area_id = 20 },
	{ config_id = 18016, monster_id = 26090101, pos = { x = 141.127, y = 284.332, z = 2259.115 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, isOneoff = true, pose_id = 102, area_id = 20 },
	{ config_id = 18017, monster_id = 21010501, pos = { x = 182.949, y = 329.115, z = 2380.888 }, rot = { x = 0.000, y = 249.549, z = 0.000 }, level = 27, drop_id = 1000100, isOneoff = true, area_id = 20 },
	{ config_id = 18018, monster_id = 21010701, pos = { x = 180.607, y = 329.076, z = 2381.147 }, rot = { x = 0.000, y = 160.884, z = 0.000 }, level = 27, drop_id = 1000100, isOneoff = true, area_id = 20 },
	{ config_id = 18019, monster_id = 21010501, pos = { x = 185.002, y = 329.799, z = 2379.512 }, rot = { x = 0.000, y = 146.372, z = 0.000 }, level = 27, drop_id = 1000100, isOneoff = true, area_id = 20 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 保底工具
	{ config_id = 18001, gadget_id = 70360001, pos = { x = 283.920, y = 274.905, z = 2290.711 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 18002, gadget_id = 70310218, pos = { x = 445.407, y = 244.964, z = 2238.010 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 20 },
	{ config_id = 18003, gadget_id = 70310218, pos = { x = 198.914, y = 326.742, z = 2388.063 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 20 },
	{ config_id = 18004, gadget_id = 70310218, pos = { x = 130.176, y = 282.518, z = 2256.376 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 20 },
	{ config_id = 18011, gadget_id = 70220103, pos = { x = 130.272, y = 288.152, z = 2256.357 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 18012, gadget_id = 70290543, pos = { x = 97.381, y = 297.965, z = 2310.126 }, rot = { x = 0.000, y = 97.016, z = 0.000 }, level = 27, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 20 },
	{ config_id = 18013, gadget_id = 70290543, pos = { x = 169.643, y = 273.442, z = 2285.750 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 18021, gadget_id = 70330255, pos = { x = 224.733, y = 274.048, z = 2287.535 }, rot = { x = 0.000, y = 264.972, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 18022, gadget_id = 70330255, pos = { x = 276.490, y = 275.745, z = 2300.450 }, rot = { x = 319.202, y = 317.636, z = 3.512 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 18023, gadget_id = 70330255, pos = { x = 271.235, y = 275.239, z = 2290.524 }, rot = { x = 0.000, y = 270.124, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 18024, gadget_id = 70330255, pos = { x = 295.652, y = 275.526, z = 2286.437 }, rot = { x = 0.000, y = 101.276, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 18025, gadget_id = 70330255, pos = { x = 181.813, y = 272.658, z = 2293.517 }, rot = { x = 0.000, y = 229.540, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 18026, gadget_id = 70330255, pos = { x = 170.778, y = 274.454, z = 2284.000 }, rot = { x = 341.485, y = 232.762, z = 357.980 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 18027, gadget_id = 70330255, pos = { x = 334.724, y = 270.531, z = 2273.714 }, rot = { x = 10.692, y = 108.274, z = 3.506 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 18028, gadget_id = 70500000, pos = { x = 283.893, y = 274.226, z = 2291.133 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 9299, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 20 },
	{ config_id = 18029, gadget_id = 70360365, pos = { x = 283.893, y = 274.226, z = 2291.133 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 20 },
	{ config_id = 18037, gadget_id = 70330255, pos = { x = 363.526, y = 264.931, z = 2264.015 }, rot = { x = 10.692, y = 108.274, z = 3.506 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 18038, gadget_id = 70330255, pos = { x = 389.583, y = 259.596, z = 2255.210 }, rot = { x = 10.692, y = 108.274, z = 3.506 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 18039, gadget_id = 70330255, pos = { x = 412.973, y = 254.530, z = 2247.560 }, rot = { x = 10.692, y = 108.274, z = 3.506 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 18040, gadget_id = 70330255, pos = { x = 255.397, y = 292.273, z = 2323.969 }, rot = { x = 323.580, y = 317.969, z = 3.304 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 18041, gadget_id = 70330255, pos = { x = 242.380, y = 302.416, z = 2339.125 }, rot = { x = 325.957, y = 318.135, z = 3.208 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 18042, gadget_id = 70330255, pos = { x = 223.255, y = 319.883, z = 2361.253 }, rot = { x = 326.270, y = 318.156, z = 3.197 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 18043, gadget_id = 70330255, pos = { x = 214.109, y = 328.475, z = 2372.538 }, rot = { x = 325.599, y = 318.111, z = 3.222 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 18044, gadget_id = 70220103, pos = { x = 331.002, y = 273.459, z = 2272.476 }, rot = { x = 10.692, y = 108.274, z = 3.506 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 18045, gadget_id = 70220103, pos = { x = 361.724, y = 267.477, z = 2266.488 }, rot = { x = 10.692, y = 108.274, z = 3.506 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 18046, gadget_id = 70220103, pos = { x = 386.363, y = 262.424, z = 2255.251 }, rot = { x = 10.692, y = 108.274, z = 3.506 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 18047, gadget_id = 70220103, pos = { x = 409.754, y = 257.358, z = 2247.602 }, rot = { x = 10.692, y = 108.274, z = 3.506 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 18048, gadget_id = 70220103, pos = { x = 305.453, y = 278.037, z = 2283.590 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 18050, gadget_id = 70330197, pos = { x = 187.183, y = 327.656, z = 2385.126 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 18053, gadget_id = 70360001, pos = { x = 443.295, y = 243.904, z = 2238.310 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 18055, gadget_id = 70220103, pos = { x = 427.680, y = 250.534, z = 2240.518 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 }
}

-- 区域
regions = {
	{ config_id = 18005, shape = RegionShape.SPHERE, radius = 22, pos = { x = 444.952, y = 248.225, z = 2239.904 }, area_id = 20 },
	{ config_id = 18006, shape = RegionShape.SPHERE, radius = 20, pos = { x = 130.015, y = 283.000, z = 2256.631 }, area_id = 20 },
	{ config_id = 18007, shape = RegionShape.SPHERE, radius = 25, pos = { x = 198.440, y = 329.137, z = 2388.582 }, area_id = 20 }
}

-- 触发器
triggers = {
	{ config_id = 1018005, name = "ENTER_REGION_18005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_18005", action = "action_EVENT_ENTER_REGION_18005" },
	{ config_id = 1018006, name = "ENTER_REGION_18006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_18006", action = "action_EVENT_ENTER_REGION_18006" },
	{ config_id = 1018007, name = "ENTER_REGION_18007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_18007", action = "action_EVENT_ENTER_REGION_18007" },
	-- 耶然草解锁，可拾取
	{ config_id = 1018008, name = "QUEST_START_18008", event = EventType.EVENT_QUEST_START, source = "7306613", condition = "", action = "action_EVENT_QUEST_START_18008", trigger_count = 0 },
	-- 耶然草被拾取，任务跳转
	{ config_id = 1018009, name = "GATHER_18009", event = EventType.EVENT_GATHER, source = "", condition = "condition_EVENT_GATHER_18009", action = "action_EVENT_GATHER_18009", trigger_count = 0 },
	-- 开始找灵药，几个reminder刷出来
	{ config_id = 1018010, name = "QUEST_START_18010", event = EventType.EVENT_QUEST_START, source = "7306606", condition = "", action = "action_EVENT_QUEST_START_18010", trigger_count = 0 },
	-- 找耶然草，开始哔哔
	{ config_id = 1018020, name = "QUEST_START_18020", event = EventType.EVENT_QUEST_START, source = "7306604", condition = "", action = "action_EVENT_QUEST_START_18020", trigger_count = 0 },
	-- 解一个封印变量+1
	{ config_id = 1018030, name = "GADGET_STATE_CHANGE_18030", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_18030", action = "action_EVENT_GADGET_STATE_CHANGE_18030" },
	-- 解一个封印变量+1
	{ config_id = 1018031, name = "GADGET_STATE_CHANGE_18031", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_18031", action = "action_EVENT_GADGET_STATE_CHANGE_18031" },
	-- 解一个封印变量+1
	{ config_id = 1018032, name = "GADGET_STATE_CHANGE_18032", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_18032", action = "action_EVENT_GADGET_STATE_CHANGE_18032" },
	-- 变量=1 201
	{ config_id = 1018033, name = "VARIABLE_CHANGE_18033", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_18033", action = "action_EVENT_VARIABLE_CHANGE_18033" },
	-- 变量=2 202
	{ config_id = 1018034, name = "VARIABLE_CHANGE_18034", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_18034", action = "action_EVENT_VARIABLE_CHANGE_18034" },
	-- 变量=3 203
	{ config_id = 1018035, name = "VARIABLE_CHANGE_18035", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_18035", action = "action_EVENT_VARIABLE_CHANGE_18035" },
	-- 拾取后任务跳转保底
	{ config_id = 1018036, name = "VARIABLE_CHANGE_18036", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_18036", action = "action_EVENT_VARIABLE_CHANGE_18036", trigger_count = 0 },
	-- 解完一个封印 rmd1
	{ config_id = 1018049, name = "TIME_AXIS_PASS_18049", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_18049", action = "action_EVENT_TIME_AXIS_PASS_18049" },
	-- 解完二个封印 rmd2
	{ config_id = 1018051, name = "TIME_AXIS_PASS_18051", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_18051", action = "action_EVENT_TIME_AXIS_PASS_18051" },
	-- 解完三个封印 rmd3
	{ config_id = 1018052, name = "TIME_AXIS_PASS_18052", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_18052", action = "action_EVENT_TIME_AXIS_PASS_18052" },
	{ config_id = 1018054, name = "TIME_AXIS_PASS_18054", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_18054", action = "action_EVENT_TIME_AXIS_PASS_18054" },
	{ config_id = 1018056, name = "ANY_MONSTER_DIE_18056", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_18056", action = "action_EVENT_ANY_MONSTER_DIE_18056", trigger_count = 0 },
	{ config_id = 1018057, name = "TIME_AXIS_PASS_18057", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_18057", action = "action_EVENT_TIME_AXIS_PASS_18057" },
	{ config_id = 1018058, name = "TIME_AXIS_PASS_18058", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_18058", action = "action_EVENT_TIME_AXIS_PASS_18058" },
	-- 解一个封印变量+1
	{ config_id = 1018059, name = "TIME_AXIS_PASS_18059", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_18059", action = "action_EVENT_TIME_AXIS_PASS_18059" },
	-- 拾取 干掉
	{ config_id = 1018060, name = "QUEST_START_18060", event = EventType.EVENT_QUEST_START, source = "7306617", condition = "", action = "action_EVENT_QUEST_START_18060", trigger_count = 0 },
	-- 保底，任务完成后给成就
	{ config_id = 1018061, name = "GROUP_LOAD_18061", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_18061", action = "action_EVENT_GROUP_LOAD_18061", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "unlock", value = 0, no_refresh = true },
	{ config_id = 2, name = "done", value = 0, no_refresh = true }
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
		-- description = ,
		monsters = { },
		gadgets = { 18001, 18002, 18003, 18004, 18012, 18013, 18028, 18029, 18050, 18053 },
		regions = { },
		triggers = { "QUEST_START_18008", "GATHER_18009", "QUEST_START_18010", "QUEST_START_18020", "GADGET_STATE_CHANGE_18030", "GADGET_STATE_CHANGE_18031", "GADGET_STATE_CHANGE_18032", "VARIABLE_CHANGE_18033", "VARIABLE_CHANGE_18034", "VARIABLE_CHANGE_18035", "VARIABLE_CHANGE_18036", "TIME_AXIS_PASS_18049", "TIME_AXIS_PASS_18051", "TIME_AXIS_PASS_18052", "TIME_AXIS_PASS_18059", "QUEST_START_18060", "GROUP_LOAD_18061" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 18014, 18015, 18016, 18017, 18018, 18019 },
		gadgets = { 18021, 18022, 18023, 18024, 18025, 18026, 18027, 18037, 18038, 18039, 18040, 18041, 18042, 18043, 18044, 18045, 18046, 18047, 18048, 18055 },
		regions = { 18005, 18006, 18007 },
		triggers = { "ENTER_REGION_18005", "ENTER_REGION_18006", "ENTER_REGION_18007", "TIME_AXIS_PASS_18054", "ANY_MONSTER_DIE_18056", "TIME_AXIS_PASS_18057", "TIME_AXIS_PASS_18058" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_18005(context, evt)
	if evt.param1 ~= 18005 then return false end
	
	-- 判断是区域18005
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 18005 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_18005(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7017, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 创建标识为"rmd4"，时间节点为{3}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "rmd4", {3}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_18006(context, evt)
	if evt.param1 ~= 18006 then return false end
	
	-- 判断是区域18006
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 18006 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_18006(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7017, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 创建标识为"rmd5"，时间节点为{3}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "rmd5", {3}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_18007(context, evt)
	if evt.param1 ~= 18007 then return false end
	
	-- 判断是区域18007
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 18007 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_18007(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7017, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 创建标识为"rmd6"，时间节点为{3}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "rmd6", {3}, false)
	
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_18008(context, evt)
	-- 将configid为 18028 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 18028, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GATHER_18009(context, evt)
	if 18028 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_18009(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133315018, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_18010(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133315018, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_18020(context, evt)
	-- 调用提示id为 60010428 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010428) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_18030(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133315018, 18002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_18030(context, evt)
	-- 针对当前group内变量名为 "unlock" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "unlock", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_18031(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133315018, 18003) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_18031(context, evt)
	-- 针对当前group内变量名为 "unlock" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "unlock", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_18032(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133315018, 18004) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_18032(context, evt)
	-- 针对当前group内变量名为 "unlock" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "unlock", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_18033(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"unlock"为1
	if ScriptLib.GetGroupVariableValue(context, "unlock") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_18033(context, evt)
	-- 将configid为 18029 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 18029, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 通知场景上的所有玩家播放名字为70 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 70, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : play_cutscene")
			return -1
		end 
	
	-- 创建标识为"rmd1"，时间节点为{5}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "rmd1", {5}, false)
	
	
	-- 创建标识为"unlock"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "unlock", {1}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_18034(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"unlock"为2
	if ScriptLib.GetGroupVariableValue(context, "unlock") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_18034(context, evt)
	-- 将configid为 18029 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 18029, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 通知场景上的所有玩家播放名字为70 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 70, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : play_cutscene")
			return -1
		end 
	
	-- 创建标识为"rmd2"，时间节点为{4}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "rmd2", {4}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_18035(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"unlock"为3
	if ScriptLib.GetGroupVariableValue(context, "unlock") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_18035(context, evt)
	-- 将configid为 18029 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 18029, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 通知场景上的所有玩家播放名字为70 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 70, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : play_cutscene")
			return -1
		end 
	
	-- 创建标识为"rmd3"，时间节点为{4}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "rmd3", {4}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_18036(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"done"为1
	if ScriptLib.GetGroupVariableValue(context, "done") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_18036(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7306615") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_18049(context, evt)
	if "rmd1" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_18049(context, evt)
	-- 调用提示id为 7306602 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7306602) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_18051(context, evt)
	if "rmd2" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_18051(context, evt)
	-- 调用提示id为 7306603 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7306603) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_18052(context, evt)
	if "rmd3" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_18052(context, evt)
	-- 调用提示id为 7306604 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7306604) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_18054(context, evt)
	if "rmd4" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_18054(context, evt)
	-- 调用提示id为 60010436 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010436) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_18056(context, evt)
	if 18015 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_18056(context, evt)
	-- 创建id为18011的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 18011 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_18057(context, evt)
	if "rmd5" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_18057(context, evt)
	-- 调用提示id为 60010438 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010438) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_18058(context, evt)
	if "rmd6" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_18058(context, evt)
	-- 调用提示id为 60010440 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010440) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_18059(context, evt)
	if "unlock" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_18059(context, evt)
	-- 将configid为 18029 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 18029, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_18060(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 18029 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 18028 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133315018, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_18061(context, evt)
	local curQuestState = ScriptLib.GetHostQuestState(context,7306616)
	if -1 == curQuestState or 0 == curQuestState then
	  return false
	end
	if curQuestState ~= 3 then
	   return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_18061(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7017, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end