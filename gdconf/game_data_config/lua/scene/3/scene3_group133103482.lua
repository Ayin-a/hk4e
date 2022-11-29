-- 基础信息
local base_info = {
	group_id = 133103482
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 482004, monster_id = 21011001, pos = { x = 524.104, y = 236.606, z = 1705.039 }, rot = { x = 0.000, y = 268.673, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 6 },
	{ config_id = 482006, monster_id = 21010901, pos = { x = 547.596, y = 236.114, z = 1690.390 }, rot = { x = 0.000, y = 328.724, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 6 },
	{ config_id = 482008, monster_id = 20010501, pos = { x = 581.128, y = 230.700, z = 1677.593 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 6 },
	{ config_id = 482009, monster_id = 20010501, pos = { x = 578.405, y = 230.700, z = 1683.670 }, rot = { x = 0.000, y = 239.466, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 6 },
	{ config_id = 482010, monster_id = 20010501, pos = { x = 573.202, y = 230.700, z = 1677.940 }, rot = { x = 0.000, y = 17.456, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 6 },
	{ config_id = 482012, monster_id = 21010901, pos = { x = 591.371, y = 235.559, z = 1653.095 }, rot = { x = 0.000, y = 343.805, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 6 },
	{ config_id = 482013, monster_id = 21010901, pos = { x = 609.826, y = 236.268, z = 1662.492 }, rot = { x = 0.000, y = 307.352, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 32, area_id = 6 },
	{ config_id = 482014, monster_id = 21011001, pos = { x = 619.156, y = 236.665, z = 1637.354 }, rot = { x = 0.000, y = 293.931, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 32, area_id = 6 },
	{ config_id = 482091, monster_id = 21011001, pos = { x = 606.449, y = 236.258, z = 1625.196 }, rot = { x = 0.000, y = 0.356, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 32, area_id = 6 },
	{ config_id = 482092, monster_id = 21030301, pos = { x = 544.674, y = 231.143, z = 1706.204 }, rot = { x = 0.000, y = 234.448, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 6 },
	{ config_id = 482093, monster_id = 21020201, pos = { x = 622.270, y = 232.486, z = 1604.826 }, rot = { x = 0.000, y = 321.460, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 6 },
	{ config_id = 482094, monster_id = 21020201, pos = { x = 611.315, y = 239.665, z = 1569.243 }, rot = { x = 0.000, y = 29.523, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 482007, gadget_id = 70300084, pos = { x = 485.412, y = 230.816, z = 1706.610 }, rot = { x = 0.000, y = 127.354, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 482015, gadget_id = 70710116, pos = { x = 488.002, y = 230.700, z = 1710.252 }, rot = { x = 0.000, y = 88.876, z = 0.000 }, level = 1, route_id = 310300175, start_route = false, persistent = true, area_id = 6 },
	{ config_id = 482016, gadget_id = 70300084, pos = { x = 486.776, y = 230.748, z = 1714.847 }, rot = { x = 0.000, y = 249.803, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 482017, gadget_id = 70300090, pos = { x = 524.581, y = 231.028, z = 1705.303 }, rot = { x = 0.000, y = 271.215, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 482018, gadget_id = 70300090, pos = { x = 547.855, y = 230.643, z = 1689.851 }, rot = { x = 0.000, y = 289.257, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 482020, gadget_id = 70300114, pos = { x = 578.150, y = 229.611, z = 1679.461 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 482021, gadget_id = 70300090, pos = { x = 591.519, y = 230.068, z = 1652.460 }, rot = { x = 0.000, y = 349.960, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 482022, gadget_id = 70300090, pos = { x = 610.214, y = 230.804, z = 1662.255 }, rot = { x = 0.000, y = 294.171, z = 0.000 }, level = 1, area_id = 6 },
	-- 第一检查点
	{ config_id = 482023, gadget_id = 70710126, pos = { x = 514.521, y = 230.700, z = 1701.894 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 482024, gadget_id = 70300090, pos = { x = 619.210, y = 231.215, z = 1637.008 }, rot = { x = 0.000, y = 296.969, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 482025, gadget_id = 70300090, pos = { x = 606.474, y = 230.833, z = 1625.133 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	-- 第二检查点
	{ config_id = 482026, gadget_id = 70710126, pos = { x = 541.205, y = 230.700, z = 1696.985 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 482027, gadget_id = 70300076, pos = { x = 628.525, y = 232.825, z = 1606.861 }, rot = { x = 0.000, y = 325.919, z = 4.351 }, level = 1, area_id = 6 },
	{ config_id = 482028, gadget_id = 70300076, pos = { x = 618.080, y = 233.304, z = 1599.620 }, rot = { x = 11.566, y = 327.787, z = 348.762 }, level = 1, area_id = 6 },
	-- 第三检查点
	{ config_id = 482062, gadget_id = 70710126, pos = { x = 578.099, y = 230.700, z = 1679.082 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	-- 第四检查点
	{ config_id = 482063, gadget_id = 70710126, pos = { x = 602.137, y = 230.700, z = 1650.330 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	-- 第五检查点
	{ config_id = 482064, gadget_id = 70710126, pos = { x = 616.706, y = 230.700, z = 1629.357 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	-- 第六检查点
	{ config_id = 482065, gadget_id = 70710126, pos = { x = 621.783, y = 232.436, z = 1605.474 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	-- 第七检查点
	{ config_id = 482066, gadget_id = 70710126, pos = { x = 626.601, y = 237.024, z = 1582.269 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	-- 第八检查点
	{ config_id = 482067, gadget_id = 70710126, pos = { x = 592.602, y = 238.484, z = 1546.055 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 }
}

-- 区域
regions = {
	{ config_id = 482029, shape = RegionShape.SPHERE, radius = 8, pos = { x = 578.150, y = 229.611, z = 1679.461 }, area_id = 6 },
	{ config_id = 482077, shape = RegionShape.SPHERE, radius = 12, pos = { x = 488.002, y = 230.700, z = 1710.252 }, area_id = 6 }
}

-- 触发器
triggers = {
	{ config_id = 1482029, name = "ENTER_REGION_482029", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_482029", action = "action_EVENT_ENTER_REGION_482029" },
	{ config_id = 1482030, name = "ANY_MONSTER_DIE_482030", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_482030", trigger_count = 0 },
	{ config_id = 1482031, name = "VARIABLE_CHANGE_482031", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_482031", action = "action_EVENT_VARIABLE_CHANGE_482031", trigger_count = 0 },
	{ config_id = 1482032, name = "PLATFORM_REACH_POINT_482032", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_482032", action = "action_EVENT_PLATFORM_REACH_POINT_482032", trigger_count = 0 },
	{ config_id = 1482077, name = "ENTER_REGION_482077", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_482077", action = "action_EVENT_ENTER_REGION_482077" },
	{ config_id = 1482078, name = "CHALLENGE_SUCCESS_482078", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_482078", trigger_count = 0 },
	{ config_id = 1482079, name = "PLATFORM_REACH_POINT_482079", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_482079", action = "action_EVENT_PLATFORM_REACH_POINT_482079", trigger_count = 0, tag = "888" },
	{ config_id = 1482080, name = "CHALLENGE_FAIL_482080", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_482080", trigger_count = 0 },
	{ config_id = 1482081, name = "ANY_GADGET_DIE_482081", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_482081", action = "action_EVENT_ANY_GADGET_DIE_482081", tag = "999" },
	{ config_id = 1482082, name = "PLATFORM_REACH_POINT_482082", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_482082", action = "action_EVENT_PLATFORM_REACH_POINT_482082", trigger_count = 0, tag = "888" },
	{ config_id = 1482083, name = "PLATFORM_REACH_POINT_482083", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_482083", action = "action_EVENT_PLATFORM_REACH_POINT_482083", trigger_count = 0 },
	{ config_id = 1482084, name = "PLATFORM_REACH_POINT_482084", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_482084", action = "action_EVENT_PLATFORM_REACH_POINT_482084", trigger_count = 0 },
	{ config_id = 1482085, name = "PLATFORM_REACH_POINT_482085", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_482085", action = "action_EVENT_PLATFORM_REACH_POINT_482085", trigger_count = 0, tag = "888" },
	{ config_id = 1482086, name = "PLATFORM_REACH_POINT_482086", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_482086", action = "action_EVENT_PLATFORM_REACH_POINT_482086", trigger_count = 0, tag = "888" },
	{ config_id = 1482087, name = "PLATFORM_REACH_POINT_482087", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_482087", action = "action_EVENT_PLATFORM_REACH_POINT_482087", trigger_count = 0, tag = "888" },
	{ config_id = 1482088, name = "PLATFORM_REACH_POINT_482088", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_482088", action = "action_EVENT_PLATFORM_REACH_POINT_482088", trigger_count = 0, tag = "888" },
	{ config_id = 1482089, name = "PLATFORM_REACH_POINT_482089", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_482089", action = "action_EVENT_PLATFORM_REACH_POINT_482089", trigger_count = 0, tag = "888" },
	{ config_id = 1482090, name = "PLATFORM_REACH_POINT_482090", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_482090", action = "action_EVENT_PLATFORM_REACH_POINT_482090", trigger_count = 0, tag = "888" }
}

-- 变量
variables = {
	{ config_id = 1, name = "challengeSuccess", value = 0, no_refresh = false },
	{ config_id = 2, name = "deadMonster", value = 0, no_refresh = false }
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
		gadgets = { 482007, 482015, 482016 },
		regions = { 482077 },
		triggers = { "PLATFORM_REACH_POINT_482032", "ENTER_REGION_482077", "CHALLENGE_SUCCESS_482078", "PLATFORM_REACH_POINT_482079", "CHALLENGE_FAIL_482080", "ANY_GADGET_DIE_482081", "PLATFORM_REACH_POINT_482082", "PLATFORM_REACH_POINT_482083", "PLATFORM_REACH_POINT_482084", "PLATFORM_REACH_POINT_482085", "PLATFORM_REACH_POINT_482086", "PLATFORM_REACH_POINT_482087", "PLATFORM_REACH_POINT_482088", "PLATFORM_REACH_POINT_482089", "PLATFORM_REACH_POINT_482090" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 482017, 482018, 482020, 482021, 482022, 482023, 482024, 482025, 482026, 482027, 482028, 482062, 482063, 482064, 482065, 482066, 482067 },
		regions = { 482029 },
		triggers = { "ENTER_REGION_482029" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 事件完成空Suite,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = Monsters2,
		monsters = { 482004, 482006, 482092 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = Monsters4,
		monsters = { 482008, 482009, 482010 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_482030", "VARIABLE_CHANGE_482031" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = Monsters5,
		monsters = { 482012, 482013, 482014, 482091 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = Monsters6,
		monsters = { 482093, 482094 },
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
function condition_EVENT_ENTER_REGION_482029(context, evt)
	if evt.param1 ~= 482029 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_482029(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103482, 5)
	
	-- 将configid为 482020 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 482020, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_482030(context, evt)
	-- 针对当前group内变量名为 "deadMonster" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "deadMonster", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_482031(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"deadMonster"为3
	if ScriptLib.GetGroupVariableValue(context, "deadMonster") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_482031(context, evt)
	-- 将configid为 482020 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 482020, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103482, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_482032(context, evt)
	-- 判断是gadgetid 为 482015的移动平台，是否到达了310300175 的路线中的 10 点
	
	if 482015 ~= evt.param1 then
	  return false
	end
	
	if 310300175 ~= evt.param2 then
	  return false
	end
	
	if 10 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_482032(context, evt)
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103482, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_482077(context, evt)
	if evt.param1 ~= 482077 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_482077(context, evt)
	-- 创建编号为666（该挑战的识别id),挑战内容为203的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.StartChallenge(context, 666, 203, {26, 888, 8, 2,999,1}) then
		return -1
	end
	
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103482, 2)
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103482, 4)
	
	-- 将configid为 0 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 482015, GadgetState.GearStart) then
	  return -1
	end 
	
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 482015) then
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_482078(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103482, 2)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103482, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103482, 5)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103482, 6)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103482, 7)
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133103482, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_482079(context, evt)
	-- 判断是gadgetid 为 482015的移动平台，是否到达了310300175 的路线中的 34 点
	
	if 482015 ~= evt.param1 then
	  return false
	end
	
	if 310300175 ~= evt.param2 then
	  return false
	end
	
	if 34 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_482079(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 482067 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 终止识别id为666的挑战，并判定失败
		ScriptLib.StopChallenge(context, 666, 0)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_482080(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133103482, EntityType.GADGET, 482015 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103482, 2)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103482, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103482, 5)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103482, 6)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103482, 7)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133103482, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_482081(context, evt)
	if 482015 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_482081(context, evt)
	-- 终止识别id为666的挑战，并判定成功
		ScriptLib.StopChallenge(context, 666, 1)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_482082(context, evt)
	-- 判断是gadgetid 为 482015的移动平台，是否到达了310300175 的路线中的 7 点
	
	if 482015 ~= evt.param1 then
	  return false
	end
	
	if 310300175 ~= evt.param2 then
	  return false
	end
	
	if 7 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_482082(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 482026 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_482083(context, evt)
	-- 判断是gadgetid 为 482015的移动平台，是否到达了310300175 的路线中的 18 点
	
	if 482015 ~= evt.param1 then
	  return false
	end
	
	if 310300175 ~= evt.param2 then
	  return false
	end
	
	if 18 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_482083(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103482, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_482084(context, evt)
	-- 判断是gadgetid 为 482015的移动平台，是否到达了310300175 的路线中的 25 点
	
	if 482015 ~= evt.param1 then
	  return false
	end
	
	if 310300175 ~= evt.param2 then
	  return false
	end
	
	if 25 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_482084(context, evt)
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103482, 6)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103482, 7)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_482085(context, evt)
	-- 判断是gadgetid 为 482015的移动平台，是否到达了310300175 的路线中的 4 点
	
	if 482015 ~= evt.param1 then
	  return false
	end
	
	if 310300175 ~= evt.param2 then
	  return false
	end
	
	if 4 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_482085(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 482023 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_482086(context, evt)
	-- 判断是gadgetid 为 482015的移动平台，是否到达了310300175 的路线中的 12 点
	
	if 482015 ~= evt.param1 then
	  return false
	end
	
	if 310300175 ~= evt.param2 then
	  return false
	end
	
	if 12 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_482086(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 482062 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_482087(context, evt)
	-- 判断是gadgetid 为 482015的移动平台，是否到达了310300175 的路线中的 19 点
	
	if 482015 ~= evt.param1 then
	  return false
	end
	
	if 310300175 ~= evt.param2 then
	  return false
	end
	
	if 19 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_482087(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 482063 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_482088(context, evt)
	-- 判断是gadgetid 为 482015的移动平台，是否到达了310300175 的路线中的 24 点
	
	if 482015 ~= evt.param1 then
	  return false
	end
	
	if 310300175 ~= evt.param2 then
	  return false
	end
	
	if 24 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_482088(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 482064 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_482089(context, evt)
	-- 判断是gadgetid 为 482015的移动平台，是否到达了310300175 的路线中的 25 点
	
	if 482015 ~= evt.param1 then
	  return false
	end
	
	if 310300175 ~= evt.param2 then
	  return false
	end
	
	if 25 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_482089(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 482065 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_482090(context, evt)
	-- 判断是gadgetid 为 482015的移动平台，是否到达了310300175 的路线中的 27 点
	
	if 482015 ~= evt.param1 then
	  return false
	end
	
	if 310300175 ~= evt.param2 then
	  return false
	end
	
	if 27 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_482090(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 482066 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end