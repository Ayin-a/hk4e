-- 基础信息
local base_info = {
	group_id = 250015061
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
	{ config_id = 61001, gadget_id = 70690001, pos = { x = 1700.068, y = 251.248, z = 768.688 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 61002, gadget_id = 70690001, pos = { x = 1700.068, y = 251.248, z = 753.820 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 61003, gadget_id = 70690001, pos = { x = 1700.068, y = 251.248, z = 738.009 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 61006, gadget_id = 70220011, pos = { x = 1656.528, y = 230.936, z = 664.080 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 61007, gadget_id = 70690001, pos = { x = 1656.531, y = 234.942, z = 653.809 }, rot = { x = 0.000, y = 189.588, z = 0.000 }, level = 1 },
	{ config_id = 61008, gadget_id = 70690001, pos = { x = 1675.146, y = 241.675, z = 697.874 }, rot = { x = 0.000, y = 233.489, z = 0.000 }, level = 1 },
	-- 第1节点用目标点指引
	{ config_id = 61010, gadget_id = 70350085, pos = { x = 1645.858, y = 231.598, z = 673.316 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 61011, gadget_id = 70690006, pos = { x = 1659.529, y = 218.600, z = 617.806 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 61012, gadget_id = 70690001, pos = { x = 1658.478, y = 236.109, z = 617.466 }, rot = { x = 270.000, y = 183.187, z = 0.000 }, level = 1 },
	{ config_id = 61013, gadget_id = 70690001, pos = { x = 1658.478, y = 242.446, z = 617.466 }, rot = { x = 270.000, y = 183.187, z = 0.000 }, level = 1 },
	{ config_id = 61014, gadget_id = 70690001, pos = { x = 1658.478, y = 250.024, z = 617.466 }, rot = { x = 270.000, y = 183.187, z = 0.000 }, level = 1 },
	{ config_id = 61015, gadget_id = 70690001, pos = { x = 1658.478, y = 257.474, z = 617.466 }, rot = { x = 270.000, y = 183.187, z = 0.000 }, level = 1 },
	-- 第2节点用目标点指引
	{ config_id = 61017, gadget_id = 70350085, pos = { x = 1684.321, y = 262.478, z = 615.601 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 61018, gadget_id = 70690001, pos = { x = 1698.200, y = 259.416, z = 619.663 }, rot = { x = 0.000, y = 77.889, z = 0.000 }, level = 1 },
	-- 干扰风环
	{ config_id = 61019, gadget_id = 70690001, pos = { x = 1733.903, y = 244.272, z = 630.813 }, rot = { x = 0.000, y = 46.537, z = 0.000 }, level = 1 },
	-- 干扰风环
	{ config_id = 61020, gadget_id = 70690001, pos = { x = 1733.903, y = 244.272, z = 611.391 }, rot = { x = 0.000, y = 131.366, z = 0.000 }, level = 1 },
	-- 干扰风场
	{ config_id = 61021, gadget_id = 70690005, pos = { x = 1753.884, y = 228.656, z = 644.593 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 61022, gadget_id = 70900332, pos = { x = 1761.733, y = 210.909, z = 617.324 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 61023, gadget_id = 70900332, pos = { x = 1760.083, y = 211.444, z = 620.737 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 61024, gadget_id = 70900332, pos = { x = 1759.817, y = 210.865, z = 615.365 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 61025, gadget_id = 70690001, pos = { x = 1768.131, y = 215.464, z = 616.482 }, rot = { x = 0.000, y = 99.058, z = 0.000 }, level = 1 },
	{ config_id = 61026, gadget_id = 70220020, pos = { x = 1764.683, y = 211.241, z = 619.077 }, rot = { x = 343.928, y = 78.133, z = 346.193 }, level = 1 },
	{ config_id = 61027, gadget_id = 70220020, pos = { x = 1763.975, y = 211.260, z = 619.473 }, rot = { x = 343.928, y = 78.133, z = 346.193 }, level = 1 },
	{ config_id = 61028, gadget_id = 70220020, pos = { x = 1764.814, y = 210.918, z = 616.644 }, rot = { x = 0.000, y = 87.584, z = 0.000 }, level = 1 },
	{ config_id = 61029, gadget_id = 70220020, pos = { x = 1764.703, y = 210.901, z = 615.552 }, rot = { x = 0.000, y = 87.584, z = 0.000 }, level = 1 },
	{ config_id = 61030, gadget_id = 70220020, pos = { x = 1764.882, y = 210.901, z = 613.162 }, rot = { x = 0.000, y = 87.584, z = 0.000 }, level = 1 },
	{ config_id = 61031, gadget_id = 70220020, pos = { x = 1764.384, y = 211.087, z = 611.283 }, rot = { x = 0.000, y = 87.584, z = 0.000 }, level = 1 },
	{ config_id = 61032, gadget_id = 70220020, pos = { x = 1764.583, y = 210.934, z = 609.871 }, rot = { x = 0.000, y = 98.601, z = 359.466 }, level = 1 },
	{ config_id = 61033, gadget_id = 70690001, pos = { x = 1781.252, y = 215.464, z = 615.308 }, rot = { x = 0.000, y = 89.869, z = 0.000 }, level = 1 },
	-- 第3节点用目标点指引
	{ config_id = 61034, gadget_id = 70350085, pos = { x = 1684.321, y = 262.478, z = 615.601 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 61005, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1828.025, y = 210.827, z = 629.355 } },
	{ config_id = 61009, shape = RegionShape.SPHERE, radius = 2, pos = { x = 1646.152, y = 231.537, z = 673.125 } },
	{ config_id = 61016, shape = RegionShape.SPHERE, radius = 2, pos = { x = 1684.307, y = 262.478, z = 615.609 } }
}

-- 触发器
triggers = {
	{ config_id = 1061004, name = "QUEST_FINISH_61004", event = EventType.EVENT_QUEST_FINISH, source = "7081505", condition = "condition_EVENT_QUEST_FINISH_61004", action = "action_EVENT_QUEST_FINISH_61004", trigger_count = 0 },
	{ config_id = 1061005, name = "ENTER_REGION_61005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_61005", action = "action_EVENT_ENTER_REGION_61005", tag = "888" },
	{ config_id = 1061009, name = "ENTER_REGION_61009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_61009", action = "action_EVENT_ENTER_REGION_61009" },
	{ config_id = 1061016, name = "ENTER_REGION_61016", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_61016", action = "action_EVENT_ENTER_REGION_61016" },
	{ config_id = 1061035, name = "CHALLENGE_SUCCESS_61035", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_61035", trigger_count = 0 },
	{ config_id = 1061036, name = "CHALLENGE_FAIL_61036", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_61036", trigger_count = 0 }
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
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 挑战控制逻辑用suite,
		monsters = { },
		gadgets = { },
		regions = { 61005 },
		triggers = { "QUEST_FINISH_61004", "ENTER_REGION_61005", "CHALLENGE_SUCCESS_61035", "CHALLENGE_FAIL_61036" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 节点1挑战gadget——加速环,
		monsters = { },
		gadgets = { 61001, 61002, 61003, 61006, 61008, 61010 },
		regions = { 61009 },
		triggers = { "ENTER_REGION_61009" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 节点2gadget——加速环,风场,风琥珀,
		monsters = { },
		gadgets = { 61007, 61011, 61012, 61013, 61014, 61015, 61017 },
		regions = { 61016 },
		triggers = { "ENTER_REGION_61016" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 节点3gadget——加速环,干扰风场,风种子(可选),
		monsters = { },
		gadgets = { 61018, 61019, 61020, 61021, 61022, 61023, 61024, 61025, 61026, 61027, 61028, 61029, 61030, 61031, 61032, 61033, 61034 },
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
function condition_EVENT_QUEST_FINISH_61004(context, evt)
	--检查ID为7081505的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 7081505 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_61004(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250015061, 3)
	
	-- 创建编号为666（该挑战的识别id),挑战内容为184的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 184, 60, 4, 888, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_61005(context, evt)
	if evt.param1 ~= 61005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_61005(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 61034 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 61017 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 61010 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 终止识别id为666的挑战，并判定成功
		ScriptLib.StopChallenge(context, 666, 1)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_61009(context, evt)
	if evt.param1 ~= 61009 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_61009(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 61010 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250015061, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_61016(context, evt)
	if evt.param1 ~= 61016 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_61016(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 61017 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250015061, 5)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_61035(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 61010 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 61017 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 61034 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 250015061, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "2500150611") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_61036(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 61010 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 61017 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 61034 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 250015061, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "2500150612") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end