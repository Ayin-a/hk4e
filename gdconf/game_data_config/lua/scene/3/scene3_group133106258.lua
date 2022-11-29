-- 基础信息
local base_info = {
	group_id = 133106258
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 258003, monster_id = 21010401, pos = { x = -715.108, y = 169.525, z = 1064.915 }, rot = { x = 0.000, y = 27.901, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1408 }, area_id = 8 },
	{ config_id = 258005, monster_id = 21011001, pos = { x = -742.762, y = 169.075, z = 1043.388 }, rot = { x = 0.000, y = 14.355, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1408 }, area_id = 8 },
	{ config_id = 258006, monster_id = 21030301, pos = { x = -839.375, y = 155.619, z = 1110.843 }, rot = { x = 0.000, y = 72.497, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1410, 1411 }, area_id = 8 },
	{ config_id = 258007, monster_id = 21030301, pos = { x = -744.660, y = 167.812, z = 1061.505 }, rot = { x = 0.000, y = 138.743, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1408 }, area_id = 8 },
	{ config_id = 258013, monster_id = 21010401, pos = { x = -798.724, y = 169.354, z = 1076.369 }, rot = { x = 0.357, y = 112.511, z = 359.302 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1408 }, area_id = 8 },
	{ config_id = 258014, monster_id = 21010401, pos = { x = -794.752, y = 169.323, z = 1080.085 }, rot = { x = 0.300, y = 152.403, z = 359.743 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1408 }, area_id = 8 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 258015, gadget_id = 70710116, pos = { x = -694.180, y = 164.010, z = 1089.998 }, rot = { x = 0.000, y = 216.000, z = 0.000 }, level = 1, route_id = 310600099, start_route = false, persistent = true, area_id = 8 },
	{ config_id = 258016, gadget_id = 70300084, pos = { x = -689.487, y = 163.453, z = 1089.033 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 8 },
	{ config_id = 258019, gadget_id = 70300090, pos = { x = -715.697, y = 164.061, z = 1064.299 }, rot = { x = 0.000, y = 28.345, z = 0.000 }, level = 1, area_id = 8 },
	{ config_id = 258020, gadget_id = 70300084, pos = { x = -696.769, y = 163.453, z = 1094.124 }, rot = { x = 0.000, y = 245.069, z = 0.000 }, level = 1, area_id = 8 },
	-- 第一检查点
	{ config_id = 258023, gadget_id = 70710126, pos = { x = -708.126, y = 162.756, z = 1075.854 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 8 },
	{ config_id = 258024, gadget_id = 70300090, pos = { x = -742.996, y = 163.495, z = 1042.846 }, rot = { x = 0.000, y = 22.303, z = 0.000 }, level = 1, area_id = 8 },
	-- 第二检查点
	{ config_id = 258026, gadget_id = 70710126, pos = { x = -725.727, y = 164.010, z = 1068.216 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 8 },
	{ config_id = 258035, gadget_id = 70220011, pos = { x = -818.704, y = 157.795, z = 1096.636 }, rot = { x = 0.000, y = 131.123, z = 0.000 }, level = 1, area_id = 8 },
	{ config_id = 258036, gadget_id = 70220011, pos = { x = -817.619, y = 155.324, z = 1133.364 }, rot = { x = 0.000, y = 170.808, z = 0.000 }, level = 1, area_id = 8 },
	{ config_id = 258037, gadget_id = 70220011, pos = { x = -857.908, y = 155.312, z = 1154.402 }, rot = { x = 0.000, y = 129.367, z = 0.000 }, level = 1, area_id = 8 },
	-- 第三检查点
	{ config_id = 258062, gadget_id = 70710126, pos = { x = -760.912, y = 164.349, z = 1066.487 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 8 },
	-- 第四检查点
	{ config_id = 258063, gadget_id = 70710126, pos = { x = -790.981, y = 164.010, z = 1074.621 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 8 },
	-- 第五检查点
	{ config_id = 258064, gadget_id = 70710126, pos = { x = -818.256, y = 157.627, z = 1096.672 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 8 },
	-- 第六检查点
	{ config_id = 258065, gadget_id = 70710126, pos = { x = -818.176, y = 154.114, z = 1117.090 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 8 },
	-- 第七检查点
	{ config_id = 258066, gadget_id = 70710126, pos = { x = -842.251, y = 154.832, z = 1145.754 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 8 },
	-- 第八检查点
	{ config_id = 258067, gadget_id = 70710126, pos = { x = -843.919, y = 156.869, z = 1190.509 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 8 }
}

-- 区域
regions = {
	{ config_id = 258077, shape = RegionShape.SPHERE, radius = 8, pos = { x = -694.180, y = 164.010, z = 1089.998 }, area_id = 8 }
}

-- 触发器
triggers = {
	{ config_id = 1258012, name = "PLATFORM_REACH_POINT_258012", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_258012", action = "action_EVENT_PLATFORM_REACH_POINT_258012", trigger_count = 0 },
	{ config_id = 1258077, name = "ENTER_REGION_258077", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_258077", action = "action_EVENT_ENTER_REGION_258077" },
	{ config_id = 1258078, name = "CHALLENGE_SUCCESS_258078", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_258078", trigger_count = 0 },
	{ config_id = 1258079, name = "PLATFORM_REACH_POINT_258079", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_258079", action = "action_EVENT_PLATFORM_REACH_POINT_258079", trigger_count = 0, tag = "888" },
	{ config_id = 1258080, name = "CHALLENGE_FAIL_258080", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_258080", trigger_count = 0 },
	{ config_id = 1258081, name = "ANY_GADGET_DIE_258081", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_258081", action = "action_EVENT_ANY_GADGET_DIE_258081", tag = "999" },
	{ config_id = 1258082, name = "PLATFORM_REACH_POINT_258082", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_258082", action = "action_EVENT_PLATFORM_REACH_POINT_258082", trigger_count = 0, tag = "888" },
	{ config_id = 1258083, name = "PLATFORM_REACH_POINT_258083", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_258083", action = "action_EVENT_PLATFORM_REACH_POINT_258083", trigger_count = 0 },
	{ config_id = 1258084, name = "PLATFORM_REACH_POINT_258084", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_258084", action = "action_EVENT_PLATFORM_REACH_POINT_258084", trigger_count = 0 },
	{ config_id = 1258085, name = "PLATFORM_REACH_POINT_258085", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_258085", action = "action_EVENT_PLATFORM_REACH_POINT_258085", trigger_count = 0, tag = "888" },
	{ config_id = 1258086, name = "PLATFORM_REACH_POINT_258086", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_258086", action = "action_EVENT_PLATFORM_REACH_POINT_258086", trigger_count = 0, tag = "888" },
	{ config_id = 1258087, name = "PLATFORM_REACH_POINT_258087", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_258087", action = "action_EVENT_PLATFORM_REACH_POINT_258087", trigger_count = 0, tag = "888" },
	{ config_id = 1258088, name = "PLATFORM_REACH_POINT_258088", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_258088", action = "action_EVENT_PLATFORM_REACH_POINT_258088", trigger_count = 0, tag = "888" },
	{ config_id = 1258089, name = "PLATFORM_REACH_POINT_258089", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_258089", action = "action_EVENT_PLATFORM_REACH_POINT_258089", trigger_count = 0, tag = "888" },
	{ config_id = 1258090, name = "PLATFORM_REACH_POINT_258090", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_258090", action = "action_EVENT_PLATFORM_REACH_POINT_258090", trigger_count = 0, tag = "888" }
}

-- 变量
variables = {
	{ config_id = 1, name = "challengeSuccess", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 258001, monster_id = 21010901, pos = { x = -681.973, y = 169.267, z = 1089.524 }, rot = { x = 0.000, y = 2.007, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1408 }, pose_id = 32, area_id = 8 },
		{ config_id = 258002, monster_id = 21010401, pos = { x = -707.760, y = 168.610, z = 1087.773 }, rot = { x = 0.000, y = 102.095, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1408 }, area_id = 8 },
		{ config_id = 258009, monster_id = 21011001, pos = { x = -735.924, y = 168.676, z = 1064.436 }, rot = { x = 0.000, y = 86.151, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1408 }, area_id = 8 },
		{ config_id = 258010, monster_id = 21011001, pos = { x = -761.821, y = 168.791, z = 1075.172 }, rot = { x = 0.000, y = 111.089, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1408 }, area_id = 8 }
	},
	gadgets = {
		{ config_id = 258008, gadget_id = 70300090, pos = { x = -761.815, y = 163.339, z = 1075.471 }, rot = { x = 0.000, y = 121.670, z = 0.000 }, level = 1, area_id = 8 },
		{ config_id = 258017, gadget_id = 70300090, pos = { x = -682.189, y = 163.771, z = 1089.164 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 8 },
		{ config_id = 258018, gadget_id = 70300090, pos = { x = -708.085, y = 163.139, z = 1087.681 }, rot = { x = 0.000, y = 58.089, z = 0.000 }, level = 1, area_id = 8 },
		{ config_id = 258022, gadget_id = 70300090, pos = { x = -736.090, y = 163.221, z = 1064.321 }, rot = { x = 0.000, y = 68.651, z = 0.000 }, level = 1, area_id = 8 }
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
		gadgets = { 258015, 258016, 258020 },
		regions = { 258077 },
		triggers = { "PLATFORM_REACH_POINT_258012", "ENTER_REGION_258077", "CHALLENGE_SUCCESS_258078", "PLATFORM_REACH_POINT_258079", "CHALLENGE_FAIL_258080", "ANY_GADGET_DIE_258081", "PLATFORM_REACH_POINT_258082", "PLATFORM_REACH_POINT_258083", "PLATFORM_REACH_POINT_258084", "PLATFORM_REACH_POINT_258085", "PLATFORM_REACH_POINT_258086", "PLATFORM_REACH_POINT_258087", "PLATFORM_REACH_POINT_258088", "PLATFORM_REACH_POINT_258089", "PLATFORM_REACH_POINT_258090" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = AllGadgets,
		monsters = { },
		gadgets = { 258019, 258023, 258024, 258026, 258035, 258036, 258037, 258062, 258063, 258064, 258065, 258066, 258067 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 结束空Suite,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = Monster1,
		monsters = { 258003 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = Monster2,
		monsters = { 258005, 258007 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = Monster3,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = Monster4,
		monsters = { 258013, 258014 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = Monster5,
		monsters = { 258006 },
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
function condition_EVENT_PLATFORM_REACH_POINT_258012(context, evt)
	-- 判断是gadgetid 为 258015的移动平台，是否到达了310600099 的路线中的 3 点
	
	if 258015 ~= evt.param1 then
	  return false
	end
	
	if 310600099 ~= evt.param2 then
	  return false
	end
	
	if 3 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_258012(context, evt)
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133106258, 4)
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133106258, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_258077(context, evt)
	if evt.param1 ~= 258077 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_258077(context, evt)
	-- 创建编号为666（该挑战的识别id),挑战内容为203的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.StartChallenge(context, 666, 203, {26, 888, 8, 2,999,1}) then
		return -1
	end
	
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133106258, 2)
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133106258, 4)
	
	-- 将configid为 258015 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 258015, GadgetState.GearStart) then
		return -1
	end 
	
	
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 258015) then
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_258078(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133106258, EntityType.GADGET, 258016 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133106258, EntityType.GADGET, 258020 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133106258, 2)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133106258, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133106258, 5)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133106258, 7)
	
	-- 删除suite8的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133106258, 8)
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133106258, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_258079(context, evt)
	-- 判断是gadgetid 为 258015的移动平台，是否到达了310600099 的路线中的 27 点
	
	if 258015 ~= evt.param1 then
	  return false
	end
	
	if 310600099 ~= evt.param2 then
	  return false
	end
	
	if 27 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_258079(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 258067 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_258080(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133106258, EntityType.GADGET, 258015 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133106258, 2)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133106258, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133106258, 5)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133106258, 7)
	
	-- 删除suite8的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133106258, 8)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133106258, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_258081(context, evt)
	if 258015 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_258081(context, evt)
	-- 终止识别id为666的挑战，并判定成功
		ScriptLib.StopChallenge(context, 666, 1)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_258082(context, evt)
	-- 判断是gadgetid 为 258015的移动平台，是否到达了310600099 的路线中的 4 点
	
	if 258015 ~= evt.param1 then
	  return false
	end
	
	if 310600099 ~= evt.param2 then
	  return false
	end
	
	if 4 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_258082(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 258026 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_258083(context, evt)
	-- 判断是gadgetid 为 258015的移动平台，是否到达了310600099 的路线中的 11 点
	
	if 258015 ~= evt.param1 then
	  return false
	end
	
	if 310600099 ~= evt.param2 then
	  return false
	end
	
	if 11 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_258083(context, evt)
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133106258, 5)
	
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133106258, 7)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_258084(context, evt)
	-- 判断是gadgetid 为 258015的移动平台，是否到达了310600099 的路线中的 17 点
	
	if 258015 ~= evt.param1 then
	  return false
	end
	
	if 310600099 ~= evt.param2 then
	  return false
	end
	
	if 17 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_258084(context, evt)
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133106258, 7)
	
	-- 添加suite8的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133106258, 8)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_258085(context, evt)
	-- 判断是gadgetid 为 258015的移动平台，是否到达了310600099 的路线中的 2 点
	
	if 258015 ~= evt.param1 then
	  return false
	end
	
	if 310600099 ~= evt.param2 then
	  return false
	end
	
	if 2 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_258085(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 258023 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_258086(context, evt)
	-- 判断是gadgetid 为 258015的移动平台，是否到达了310600099 的路线中的 10 点
	
	if 258015 ~= evt.param1 then
	  return false
	end
	
	if 310600099 ~= evt.param2 then
	  return false
	end
	
	if 10 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_258086(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 258062 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_258087(context, evt)
	-- 判断是gadgetid 为 258015的移动平台，是否到达了310600099 的路线中的 12 点
	
	if 258015 ~= evt.param1 then
	  return false
	end
	
	if 310600099 ~= evt.param2 then
	  return false
	end
	
	if 12 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_258087(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 258063 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_258088(context, evt)
	-- 判断是gadgetid 为 258015的移动平台，是否到达了310600099 的路线中的 18 点
	
	if 258015 ~= evt.param1 then
	  return false
	end
	
	if 310600099 ~= evt.param2 then
	  return false
	end
	
	if 18 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_258088(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 258064 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_258089(context, evt)
	-- 判断是gadgetid 为 258015的移动平台，是否到达了310600099 的路线中的 20 点
	
	if 258015 ~= evt.param1 then
	  return false
	end
	
	if 310600099 ~= evt.param2 then
	  return false
	end
	
	if 20 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_258089(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 258065 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_258090(context, evt)
	-- 判断是gadgetid 为 258015的移动平台，是否到达了310600099 的路线中的 24 点
	
	if 258015 ~= evt.param1 then
	  return false
	end
	
	if 310600099 ~= evt.param2 then
	  return false
	end
	
	if 24 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_258090(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 258066 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end