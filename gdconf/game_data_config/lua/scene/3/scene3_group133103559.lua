-- 基础信息
local base_info = {
	group_id = 133103559
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
	{ config_id = 559001, gadget_id = 70690001, pos = { x = 917.669, y = 353.768, z = 1541.248 }, rot = { x = 0.000, y = 308.143, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 559002, gadget_id = 70690001, pos = { x = 903.779, y = 350.016, z = 1550.004 }, rot = { x = 16.983, y = 302.712, z = 4.378 }, level = 24, area_id = 6 },
	{ config_id = 559003, gadget_id = 70690001, pos = { x = 887.488, y = 344.323, z = 1559.547 }, rot = { x = 12.977, y = 296.934, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 559004, gadget_id = 70690001, pos = { x = 868.398, y = 349.940, z = 1648.353 }, rot = { x = 349.177, y = 0.000, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 559005, gadget_id = 70690001, pos = { x = 875.446, y = 338.289, z = 1575.495 }, rot = { x = 0.000, y = 358.105, z = 0.000 }, level = 24, area_id = 6 },
	-- 第1节点用目标点指引
	{ config_id = 559007, gadget_id = 70350085, pos = { x = 875.875, y = 338.846, z = 1567.462 }, rot = { x = 0.000, y = 139.846, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 559008, gadget_id = 70690006, pos = { x = 875.566, y = 321.948, z = 1587.886 }, rot = { x = 0.000, y = 139.846, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 559009, gadget_id = 70690001, pos = { x = 872.320, y = 344.374, z = 1601.922 }, rot = { x = 350.063, y = 353.757, z = 93.863 }, level = 24, area_id = 6 },
	{ config_id = 559010, gadget_id = 70690001, pos = { x = 870.441, y = 344.798, z = 1613.620 }, rot = { x = 349.804, y = 358.088, z = 105.515 }, level = 24, area_id = 6 },
	{ config_id = 559011, gadget_id = 70690001, pos = { x = 870.124, y = 345.703, z = 1624.718 }, rot = { x = 349.804, y = 358.088, z = 105.515 }, level = 24, area_id = 6 },
	{ config_id = 559012, gadget_id = 70690001, pos = { x = 869.907, y = 347.243, z = 1637.649 }, rot = { x = 349.804, y = 358.088, z = 105.515 }, level = 24, area_id = 6 },
	-- 第2节点用目标点指引
	{ config_id = 559013, gadget_id = 70350085, pos = { x = 868.540, y = 352.212, z = 1666.431 }, rot = { x = 0.000, y = 139.846, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 559014, gadget_id = 70690001, pos = { x = 863.559, y = 351.489, z = 1663.835 }, rot = { x = 4.208, y = 247.404, z = 0.494 }, level = 24, area_id = 6 },
	-- 干扰风环
	{ config_id = 559015, gadget_id = 70690001, pos = { x = 847.525, y = 347.997, z = 1657.196 }, rot = { x = 0.000, y = 247.266, z = 0.000 }, level = 24, area_id = 6 },
	-- 干扰风环
	{ config_id = 559016, gadget_id = 70690001, pos = { x = 834.565, y = 345.458, z = 1652.147 }, rot = { x = 0.000, y = 256.795, z = 343.535 }, level = 24, area_id = 6 },
	-- 干扰风场
	{ config_id = 559017, gadget_id = 70690005, pos = { x = 859.640, y = 348.944, z = 1646.950 }, rot = { x = 270.000, y = 162.809, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 559021, gadget_id = 70690001, pos = { x = 821.429, y = 343.161, z = 1648.793 }, rot = { x = 0.000, y = 261.866, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 559029, gadget_id = 70690001, pos = { x = 806.610, y = 340.614, z = 1645.071 }, rot = { x = 4.401, y = 252.678, z = 0.000 }, level = 24, area_id = 6 },
	-- 第3节点用目标点指引
	{ config_id = 559030, gadget_id = 70350085, pos = { x = 785.557, y = 333.292, z = 1642.116 }, rot = { x = 0.000, y = 139.846, z = 0.000 }, level = 24, area_id = 6 }
}

-- 区域
regions = {
	{ config_id = 559032, shape = RegionShape.SPHERE, radius = 5, pos = { x = 785.550, y = 332.800, z = 1642.110 }, area_id = 6 },
	{ config_id = 559033, shape = RegionShape.SPHERE, radius = 2, pos = { x = 876.027, y = 338.872, z = 1567.239 }, area_id = 6 },
	{ config_id = 559034, shape = RegionShape.SPHERE, radius = 2, pos = { x = 868.364, y = 352.206, z = 1666.526 }, area_id = 6 }
}

-- 触发器
triggers = {
	{ config_id = 1559031, name = "QUEST_FINISH_559031", event = EventType.EVENT_QUEST_FINISH, source = "80001", condition = "condition_EVENT_QUEST_FINISH_559031", action = "action_EVENT_QUEST_FINISH_559031", trigger_count = 0 },
	{ config_id = 1559032, name = "ENTER_REGION_559032", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_559032", action = "action_EVENT_ENTER_REGION_559032", tag = "888" },
	{ config_id = 1559033, name = "ENTER_REGION_559033", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_559033", action = "action_EVENT_ENTER_REGION_559033" },
	{ config_id = 1559034, name = "ENTER_REGION_559034", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_559034", action = "action_EVENT_ENTER_REGION_559034" },
	{ config_id = 1559035, name = "CHALLENGE_SUCCESS_559035", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_559035", trigger_count = 0 },
	{ config_id = 1559036, name = "CHALLENGE_FAIL_559036", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_559036", trigger_count = 0 }
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
		-- description = 初始空suite,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = 挑战控制逻辑用suite,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "QUEST_FINISH_559031", "CHALLENGE_SUCCESS_559035", "CHALLENGE_FAIL_559036" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = 节点1挑战gadget——加速环,
		monsters = { },
		gadgets = { 559001, 559002, 559003, 559007 },
		regions = { 559033 },
		triggers = { "ENTER_REGION_559033" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 4,
		-- description = 节点2gadget——加速环,风场,风琥珀,
		monsters = { },
		gadgets = { 559004, 559005, 559008, 559009, 559010, 559011, 559012, 559013 },
		regions = { 559034 },
		triggers = { "ENTER_REGION_559034" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 5,
		-- description = 节点3gadget——加速环,干扰风场,风种子(可选),
		monsters = { },
		gadgets = { 559014, 559015, 559016, 559017, 559021, 559029, 559030 },
		regions = { 559032 },
		triggers = { "ENTER_REGION_559032" },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_QUEST_FINISH_559031(context, evt)
	--检查ID为80001的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 80001 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_559031(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103559, 3)
	
	-- 创建编号为666（该挑战的识别id),挑战内容为184的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 184, 300, 4, 888, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_559032(context, evt)
	if evt.param1 ~= 559032 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_559032(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 559030 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 559013 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 559007 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 终止识别id为666的挑战，并判定成功
		ScriptLib.StopChallenge(context, 666, 1)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_559033(context, evt)
	if evt.param1 ~= 559033 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_559033(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 559007 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103559, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_559034(context, evt)
	if evt.param1 ~= 559034 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_559034(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 559013 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103559, 5)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_559035(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 559007 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 559013 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 559030 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133103559, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "8000201") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_559036(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 559007 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 559013 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 559030 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133103559, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "8000202") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end