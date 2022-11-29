-- 基础信息
local base_info = {
	group_id = 133217043
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 43001, monster_id = 21010701, pos = { x = -4334.267, y = 215.846, z = -3872.564 }, rot = { x = 0.000, y = 243.995, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 14 },
	{ config_id = 43002, monster_id = 21011001, pos = { x = -4283.931, y = 215.053, z = -3862.972 }, rot = { x = 0.000, y = 212.503, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 32, area_id = 14 },
	{ config_id = 43003, monster_id = 21010701, pos = { x = -4262.685, y = 205.483, z = -3861.966 }, rot = { x = 0.000, y = 234.762, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 14 },
	{ config_id = 43004, monster_id = 21020701, pos = { x = -4211.666, y = 200.753, z = -3882.628 }, rot = { x = 0.000, y = 274.269, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 401, area_id = 14 },
	-- 封印圈陷阱怪物
	{ config_id = 43005, monster_id = 22010101, pos = { x = -4231.717, y = 200.244, z = -3861.678 }, rot = { x = 0.000, y = 291.379, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 14 },
	{ config_id = 43038, monster_id = 21010701, pos = { x = -4332.065, y = 215.414, z = -3877.732 }, rot = { x = 0.000, y = 265.658, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 14 },
	{ config_id = 43040, monster_id = 21010501, pos = { x = -4299.016, y = 212.457, z = -3884.944 }, rot = { x = 0.000, y = 316.128, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 32, area_id = 14 },
	{ config_id = 43041, monster_id = 21010701, pos = { x = -4268.559, y = 208.909, z = -3883.357 }, rot = { x = 0.000, y = 285.770, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 14 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 43006, gadget_id = 70300090, pos = { x = -4283.931, y = 209.498, z = -3862.972 }, rot = { x = 0.000, y = 29.996, z = 0.000 }, level = 30, area_id = 14 },
	-- 封印圈陷阱
	{ config_id = 43007, gadget_id = 70300114, pos = { x = -4235.954, y = 200.371, z = -3859.513 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 43008, gadget_id = 70710116, pos = { x = -4345.467, y = 219.791, z = -3879.454 }, rot = { x = 0.000, y = 56.813, z = 0.000 }, level = 30, start_route = false, persistent = true, area_id = 14 },
	-- 第一检查点
	{ config_id = 43009, gadget_id = 70710126, pos = { x = -4326.689, y = 213.102, z = -3870.717 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	-- 第二检查点
	{ config_id = 43010, gadget_id = 70710126, pos = { x = -4297.778, y = 210.579, z = -3874.411 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	-- 第三检查点
	{ config_id = 43011, gadget_id = 70710126, pos = { x = -4271.614, y = 207.524, z = -3871.456 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 14 },
	-- 第四检查点
	{ config_id = 43012, gadget_id = 70710126, pos = { x = -4249.659, y = 203.411, z = -3870.871 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 14 },
	-- 第五检查点
	{ config_id = 43013, gadget_id = 70710126, pos = { x = -4235.954, y = 200.371, z = -3859.513 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 14 },
	-- 第六检查点
	{ config_id = 43014, gadget_id = 70710126, pos = { x = -4223.534, y = 200.404, z = -3873.820 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 14 },
	-- 第七检查点
	{ config_id = 43015, gadget_id = 70710126, pos = { x = -4217.429, y = 200.148, z = -3891.224 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 14 },
	{ config_id = 43016, gadget_id = 70330064, pos = { x = -4327.357, y = 213.701, z = -3875.383 }, rot = { x = 4.143, y = 359.247, z = 339.407 }, level = 30, interact_id = 35, area_id = 14 },
	{ config_id = 43034, gadget_id = 70300084, pos = { x = -4348.769, y = 219.829, z = -3880.444 }, rot = { x = 0.000, y = 163.670, z = 0.000 }, level = 1, area_id = 14 },
	{ config_id = 43035, gadget_id = 70900380, pos = { x = -4319.524, y = 214.909, z = -3869.010 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 14 },
	{ config_id = 43036, gadget_id = 70900380, pos = { x = -4306.587, y = 218.705, z = -3869.408 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 14 },
	{ config_id = 43037, gadget_id = 70300084, pos = { x = -4215.615, y = 200.000, z = -3893.201 }, rot = { x = 0.000, y = 48.545, z = 0.000 }, level = 1, area_id = 14 },
	{ config_id = 43045, gadget_id = 70310006, pos = { x = -4214.641, y = 200.633, z = -3880.921 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 14 },
	{ config_id = 43046, gadget_id = 70220065, pos = { x = -4212.021, y = 200.049, z = -3890.420 }, rot = { x = 0.000, y = 18.345, z = 0.000 }, level = 1, area_id = 14 },
	{ config_id = 43047, gadget_id = 70220065, pos = { x = -4211.109, y = 200.115, z = -3888.690 }, rot = { x = 0.000, y = 17.621, z = 0.000 }, level = 1, area_id = 14 },
	{ config_id = 43048, gadget_id = 70220066, pos = { x = -4220.036, y = 200.017, z = -3895.269 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 14 },
	{ config_id = 43049, gadget_id = 70220066, pos = { x = -4220.914, y = 200.090, z = -3894.424 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 14 }
}

-- 区域
regions = {
	{ config_id = 43018, shape = RegionShape.SPHERE, radius = 5, pos = { x = -4235.954, y = 200.371, z = -3859.513 }, area_id = 14 },
	{ config_id = 43019, shape = RegionShape.SPHERE, radius = 6, pos = { x = -4345.467, y = 219.791, z = -3879.454 }, area_id = 14 }
}

-- 触发器
triggers = {
	{ config_id = 1043017, name = "VARIABLE_CHANGE_43017", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_43017", action = "action_EVENT_VARIABLE_CHANGE_43017" },
	{ config_id = 1043018, name = "ENTER_REGION_43018", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_43018", action = "action_EVENT_ENTER_REGION_43018" },
	{ config_id = 1043019, name = "ENTER_REGION_43019", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_43019", action = "action_EVENT_ENTER_REGION_43019" },
	{ config_id = 1043020, name = "CHALLENGE_SUCCESS_43020", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_43020", trigger_count = 0 },
	-- 7挑战失败的条件，到达终点挑战失败。注！！终点route和倒数第二点只有高度区别
	{ config_id = 1043021, name = "PLATFORM_REACH_POINT_43021", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_43021", action = "action_EVENT_PLATFORM_REACH_POINT_43021", trigger_count = 0, tag = "888" },
	{ config_id = 1043022, name = "CHALLENGE_FAIL_43022", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_43022", trigger_count = 0 },
	{ config_id = 1043023, name = "ANY_GADGET_DIE_43023", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_43023", action = "action_EVENT_ANY_GADGET_DIE_43023", tag = "999" },
	{ config_id = 1043024, name = "PLATFORM_REACH_POINT_43024", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_43024", action = "action_EVENT_PLATFORM_REACH_POINT_43024", trigger_count = 0, tag = "888" },
	-- 保底用重置group
	{ config_id = 1043025, name = "GROUP_LOAD_43025", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_43025", action = "action_EVENT_GROUP_LOAD_43025", trigger_count = 0 },
	{ config_id = 1043027, name = "PLATFORM_REACH_POINT_43027", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_43027", action = "action_EVENT_PLATFORM_REACH_POINT_43027", trigger_count = 0, tag = "888" },
	{ config_id = 1043028, name = "PLATFORM_REACH_POINT_43028", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_43028", action = "action_EVENT_PLATFORM_REACH_POINT_43028", trigger_count = 0, tag = "888" },
	{ config_id = 1043029, name = "PLATFORM_REACH_POINT_43029", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_43029", action = "action_EVENT_PLATFORM_REACH_POINT_43029", trigger_count = 0, tag = "888" },
	{ config_id = 1043030, name = "PLATFORM_REACH_POINT_43030", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_43030", action = "action_EVENT_PLATFORM_REACH_POINT_43030", trigger_count = 0, tag = "888" },
	{ config_id = 1043031, name = "PLATFORM_REACH_POINT_43031", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_43031", action = "action_EVENT_PLATFORM_REACH_POINT_43031", trigger_count = 0, tag = "888" },
	{ config_id = 1043033, name = "ANY_MONSTER_DIE_43033", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_43033", action = "action_EVENT_ANY_MONSTER_DIE_43033" }
}

-- 变量
variables = {
	{ config_id = 1, name = "challengeSuccess", value = 0, no_refresh = false },
	{ config_id = 2, name = "challengeStart", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 43039, monster_id = 21010701, pos = { x = -4332.445, y = 215.444, z = -3874.635 }, rot = { x = 0.000, y = 246.857, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 14 },
		{ config_id = 43042, monster_id = 21011601, pos = { x = -4270.874, y = 207.411, z = -3862.379 }, rot = { x = 0.000, y = 234.762, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 14 },
		{ config_id = 43043, monster_id = 21010601, pos = { x = -4274.133, y = 209.621, z = -3881.929 }, rot = { x = 0.000, y = 285.770, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 14 },
		{ config_id = 43044, monster_id = 21020201, pos = { x = -4213.836, y = 200.934, z = -3877.538 }, rot = { x = 0.000, y = 253.216, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 401, area_id = 14 }
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
	end_suite = 7,
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
		-- description = 总体逻辑控制,
		monsters = { },
		gadgets = { 43008, 43016, 43034, 43037, 43045, 43046, 43047, 43048, 43049 },
		regions = { 43019 },
		triggers = { "VARIABLE_CHANGE_43017", "ENTER_REGION_43019", "CHALLENGE_SUCCESS_43020", "PLATFORM_REACH_POINT_43021", "CHALLENGE_FAIL_43022", "ANY_GADGET_DIE_43023", "PLATFORM_REACH_POINT_43024", "GROUP_LOAD_43025", "PLATFORM_REACH_POINT_43027", "PLATFORM_REACH_POINT_43028", "PLATFORM_REACH_POINT_43029", "PLATFORM_REACH_POINT_43030", "PLATFORM_REACH_POINT_43031" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 检查点光柱,
		monsters = { },
		gadgets = { 43009, 43010, 43011, 43012, 43013, 43014, 43015, 43035, 43036 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 第一批怪物与物件,
		monsters = { 43001, 43038 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 第二批怪物与物件,
		monsters = { 43002, 43040 },
		gadgets = { 43006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 第三批怪物与物件,
		monsters = { 43003, 43041 },
		gadgets = { 43007 },
		regions = { 43018 },
		triggers = { "ENTER_REGION_43018", "ANY_MONSTER_DIE_43033" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 第四批怪物与物件,
		monsters = { 43004 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = 空的end suite,
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
function condition_EVENT_VARIABLE_CHANGE_43017(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"challengeStart"为1
	if ScriptLib.GetGroupVariableValue(context, "challengeStart") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_43017(context, evt)
	-- 将configid为 43008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 43008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133217043, 2)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133217043, 3)
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133217043, 4)
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 43008, 321700016) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 43008) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_43018(context, evt)
	if evt.param1 ~= 43018 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_43018(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 43005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 将configid为 43007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 43007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_43019(context, evt)
	if evt.param1 ~= 43019 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_43019(context, evt)
	-- 创建编号为666（该挑战的识别id),挑战内容为203的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.StartChallenge(context, 666, 203, {26, 888, 8, 2,999,1}) then
		return -1
	end
	
		-- 
	
	-- 将本组内变量名为 "challengeStart" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "challengeStart", 1) then
	  return -1
	end
	
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_43020(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133217043, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133217043, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133217043, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133217043, 5)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133217043, 6)
	
		-- 移除指定monster
		ScriptLib.RemoveEntityByConfigId(context, 133217043, EntityType.MONSTER, 43005)
	
		
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133217043, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 将本组内变量名为 "challengeStart" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "challengeStart", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_43021(context, evt)
	-- 判断是gadgetid 为 43008的移动平台，是否到达了321700016 的路线中的 20 点
	
	if 43008 ~= evt.param1 then
	  return false
	end
	
	if 321700016 ~= evt.param2 then
	  return false
	end
	
	if 20 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_43021(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 43015 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 终止识别id为666的挑战，并判定失败
		ScriptLib.StopChallenge(context, 666, 0)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_43022(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133217043, EntityType.GADGET, 43008 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 将本组内变量名为 "challengeStart" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "challengeStart", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133217043, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133217043, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133217043, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133217043, 5)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133217043, 6)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133217043, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 移除指定monster
		ScriptLib.RemoveEntityByConfigId(context, 133217043, EntityType.MONSTER, 43005)
	
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_43023(context, evt)
	if 43008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_43023(context, evt)
	-- 终止识别id为666的挑战，并判定成功
		ScriptLib.StopChallenge(context, 666, 1)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_43024(context, evt)
	-- 判断是gadgetid 为 43008的移动平台，是否到达了321700016 的路线中的 6 点
	
	if 43008 ~= evt.param1 then
	  return false
	end
	
	if 321700016 ~= evt.param2 then
	  return false
	end
	
	if 6 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_43024(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 43010 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133217043, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_43025(context, evt)
	-- 判断变量"challengeStart"为1
	if ScriptLib.GetGroupVariableValue(context, "challengeStart") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_43025(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133217043, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将本组内变量名为 "challengeStart" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "challengeStart", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_43027(context, evt)
	-- 判断是gadgetid 为 43008的移动平台，是否到达了321700016 的路线中的 4 点
	
	if 43008 ~= evt.param1 then
	  return false
	end
	
	if 321700016 ~= evt.param2 then
	  return false
	end
	
	if 4 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_43027(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 43009 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_43028(context, evt)
	-- 判断是gadgetid 为 43008的移动平台，是否到达了321700016 的路线中的 10 点
	
	if 43008 ~= evt.param1 then
	  return false
	end
	
	if 321700016 ~= evt.param2 then
	  return false
	end
	
	if 10 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_43028(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 43011 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_43029(context, evt)
	-- 判断是gadgetid 为 43008的移动平台，是否到达了321700016 的路线中的 14 点
	
	if 43008 ~= evt.param1 then
	  return false
	end
	
	if 321700016 ~= evt.param2 then
	  return false
	end
	
	if 14 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_43029(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 43012 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133217043, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_43030(context, evt)
	-- 判断是gadgetid 为 43008的移动平台，是否到达了321700016 的路线中的 16 点
	
	if 43008 ~= evt.param1 then
	  return false
	end
	
	if 321700016 ~= evt.param2 then
	  return false
	end
	
	if 16 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_43030(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 43013 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_43031(context, evt)
	-- 判断是gadgetid 为 43008的移动平台，是否到达了321700016 的路线中的 18 点
	
	if 43008 ~= evt.param1 then
	  return false
	end
	
	if 321700016 ~= evt.param2 then
	  return false
	end
	
	if 18 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_43031(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 43014 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_43033(context, evt)
	if 43005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_43033(context, evt)
	-- 将configid为 43007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 43007, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133217043, EntityType.GADGET, 43007 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

require "V2_0/ElectricCore"