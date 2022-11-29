-- 基础信息
local base_info = {
	group_id = 133102002
}

-- Trigger变量
local defs = {
	quest_1_fail = "2500040440102",
	quest_1_success = "2500040440101",
	quest_2_fail = "2500040440202",
	quest_2_success = "2500040440201",
	quest_3_fail = "2500040440302",
	quest_3_success = "2500040440301",
	challenge_1_duration = 100,
	challenge_2_duration = 90,
	challenge_3_duration = 60,
	chest_1 = 38,
	chest_2 = 37,
	chest_3 = 39,
	region_1 = 11,
	group_id = 133102002,
	quest_4_fail = "2500040440402",
	quest_4_success = "2500040440401",
	quest_1_id = "2000002",
	quest_2_id = "2000004",
	quest_3_id = "2000006",
	quest_4_id = "2000008",
	gadget_destination_id = 55
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
	{ config_id = 1, npc_id = 20003, pos = { x = 1940.519, y = 242.593, z = 612.649 }, rot = { x = 0.146, y = 40.765, z = 359.705 }, area_id = 5 }
}

-- 装置
gadgets = {
	{ config_id = 37, gadget_id = 70211111, pos = { x = 1944.958, y = 242.543, z = 610.635 }, rot = { x = 359.263, y = 16.090, z = 358.276 }, level = 16, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 38, gadget_id = 70211101, pos = { x = 1946.948, y = 242.474, z = 610.159 }, rot = { x = 354.041, y = 11.834, z = 351.705 }, level = 16, drop_tag = "解谜低级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 39, gadget_id = 70211121, pos = { x = 1942.848, y = 242.589, z = 611.266 }, rot = { x = 359.771, y = 20.996, z = 359.266 }, level = 16, drop_tag = "解谜高级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 55, gadget_id = 70360025, pos = { x = 1746.715, y = 304.072, z = 470.313 }, rot = { x = 0.000, y = 329.501, z = 0.000 }, level = 18, area_id = 5 },
	{ config_id = 2001, gadget_id = 70900201, pos = { x = 1746.704, y = 304.076, z = 470.269 }, rot = { x = 0.000, y = 329.501, z = 0.000 }, level = 18, area_id = 5 },
	{ config_id = 2002, gadget_id = 70690001, pos = { x = 1648.352, y = 221.486, z = 627.088 }, rot = { x = 0.000, y = 134.128, z = 0.000 }, level = 18, area_id = 5 },
	{ config_id = 2003, gadget_id = 70690001, pos = { x = 1666.458, y = 222.428, z = 603.370 }, rot = { x = 0.000, y = 319.010, z = 0.000 }, level = 18, area_id = 5 },
	{ config_id = 2004, gadget_id = 70690006, pos = { x = 1675.002, y = 220.055, z = 587.864 }, rot = { x = 0.000, y = 104.139, z = 0.000 }, level = 18, area_id = 5 },
	{ config_id = 2006, gadget_id = 70690001, pos = { x = 1675.000, y = 242.493, z = 587.900 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 18, area_id = 5 },
	{ config_id = 2007, gadget_id = 70690001, pos = { x = 1693.063, y = 247.637, z = 579.264 }, rot = { x = 0.000, y = 130.570, z = 0.000 }, level = 18, area_id = 5 },
	{ config_id = 2008, gadget_id = 70360046, pos = { x = 1746.524, y = 303.447, z = 470.546 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 5 },
	{ config_id = 2009, gadget_id = 70690001, pos = { x = 1728.992, y = 247.286, z = 508.888 }, rot = { x = 0.000, y = 143.340, z = 0.000 }, level = 18, area_id = 5 },
	{ config_id = 2010, gadget_id = 70690001, pos = { x = 1708.820, y = 247.627, z = 555.333 }, rot = { x = 0.000, y = 161.551, z = 0.000 }, level = 18, area_id = 5 },
	{ config_id = 2011, gadget_id = 70690001, pos = { x = 1730.322, y = 247.286, z = 507.138 }, rot = { x = 0.000, y = 143.340, z = 0.000 }, level = 18, area_id = 5 },
	{ config_id = 2012, gadget_id = 70690006, pos = { x = 1740.774, y = 246.465, z = 488.765 }, rot = { x = 0.000, y = 104.139, z = 0.000 }, level = 18, area_id = 5 },
	{ config_id = 2013, gadget_id = 70690006, pos = { x = 1740.785, y = 271.360, z = 488.776 }, rot = { x = 0.000, y = 104.139, z = 0.000 }, level = 18, area_id = 5 },
	{ config_id = 2017, gadget_id = 70690001, pos = { x = 1766.779, y = 286.441, z = 575.092 }, rot = { x = 0.000, y = 131.979, z = 0.000 }, level = 18, area_id = 5 },
	{ config_id = 2018, gadget_id = 70690001, pos = { x = 1782.746, y = 285.732, z = 558.315 }, rot = { x = 0.000, y = 131.979, z = 0.000 }, level = 18, area_id = 5 },
	{ config_id = 2019, gadget_id = 70690001, pos = { x = 1807.032, y = 260.912, z = 537.724 }, rot = { x = 0.000, y = 122.554, z = 0.000 }, level = 18, area_id = 5 },
	{ config_id = 2020, gadget_id = 70690001, pos = { x = 1712.834, y = 247.286, z = 541.102 }, rot = { x = 0.000, y = 157.912, z = 0.000 }, level = 18, area_id = 5 },
	{ config_id = 2026, gadget_id = 70690001, pos = { x = 1741.193, y = 278.490, z = 489.332 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 18, area_id = 5 },
	{ config_id = 2027, gadget_id = 70690001, pos = { x = 1741.193, y = 297.535, z = 489.332 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 18, area_id = 5 },
	{ config_id = 2028, gadget_id = 70690001, pos = { x = 1751.843, y = 279.574, z = 589.349 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 18, area_id = 5 },
	{ config_id = 2029, gadget_id = 70690006, pos = { x = 1927.956, y = 241.935, z = 620.607 }, rot = { x = 89.379, y = 104.142, z = 180.001 }, level = 18, area_id = 5 },
	{ config_id = 2030, gadget_id = 70690001, pos = { x = 1861.321, y = 233.437, z = 637.397 }, rot = { x = 0.000, y = 104.139, z = 0.000 }, level = 18, area_id = 5 },
	{ config_id = 2031, gadget_id = 70690001, pos = { x = 1906.824, y = 241.900, z = 625.935 }, rot = { x = 0.000, y = 104.139, z = 0.000 }, level = 18, area_id = 5 },
	{ config_id = 2032, gadget_id = 70690001, pos = { x = 1835.526, y = 227.323, z = 643.895 }, rot = { x = 0.000, y = 104.139, z = 0.000 }, level = 18, area_id = 5 },
	{ config_id = 2033, gadget_id = 70690001, pos = { x = 1692.681, y = 242.916, z = 686.718 }, rot = { x = 0.000, y = 77.427, z = 0.000 }, level = 18, area_id = 5 },
	{ config_id = 2034, gadget_id = 70690001, pos = { x = 1885.897, y = 241.900, z = 631.206 }, rot = { x = 0.000, y = 104.139, z = 0.000 }, level = 18, area_id = 5 },
	{ config_id = 2035, gadget_id = 70690001, pos = { x = 1655.181, y = 227.298, z = 664.252 }, rot = { x = 0.000, y = 352.606, z = 0.000 }, level = 18, area_id = 5 },
	{ config_id = 2036, gadget_id = 70690001, pos = { x = 1776.195, y = 256.154, z = 662.340 }, rot = { x = 0.000, y = 104.139, z = 0.000 }, level = 18, area_id = 5 },
	{ config_id = 2037, gadget_id = 70690006, pos = { x = 1794.664, y = 223.328, z = 656.996 }, rot = { x = 0.000, y = 104.139, z = 0.000 }, level = 18, area_id = 5 },
	{ config_id = 2038, gadget_id = 70690001, pos = { x = 1815.727, y = 227.481, z = 648.883 }, rot = { x = 0.000, y = 104.139, z = 0.000 }, level = 18, area_id = 5 },
	{ config_id = 2039, gadget_id = 70690001, pos = { x = 1794.700, y = 234.666, z = 657.000 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 18, area_id = 5 },
	{ config_id = 2040, gadget_id = 70690001, pos = { x = 1748.119, y = 250.119, z = 668.795 }, rot = { x = 0.000, y = 104.139, z = 0.000 }, level = 18, area_id = 5 },
	{ config_id = 2041, gadget_id = 70690001, pos = { x = 1665.974, y = 242.916, z = 679.992 }, rot = { x = 0.000, y = 54.458, z = 0.000 }, level = 18, area_id = 5 },
	{ config_id = 2042, gadget_id = 70690001, pos = { x = 1721.995, y = 243.755, z = 674.675 }, rot = { x = 0.000, y = 104.139, z = 0.000 }, level = 18, area_id = 5 },
	{ config_id = 2044, gadget_id = 70690001, pos = { x = 1656.774, y = 227.298, z = 633.455 }, rot = { x = 0.000, y = 353.386, z = 0.000 }, level = 18, area_id = 5 },
	{ config_id = 2045, gadget_id = 70690001, pos = { x = 1667.788, y = 227.538, z = 682.593 }, rot = { x = 356.028, y = 43.936, z = 356.182 }, level = 18, area_id = 5 },
	{ config_id = 2046, gadget_id = 70690001, pos = { x = 1721.268, y = 247.306, z = 522.326 }, rot = { x = 0.000, y = 160.176, z = 0.000 }, level = 18, area_id = 5 },
	{ config_id = 2047, gadget_id = 70690001, pos = { x = 1675.000, y = 231.214, z = 587.900 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 18, area_id = 5 },
	{ config_id = 2049, gadget_id = 70690001, pos = { x = 1741.150, y = 261.605, z = 489.283 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 18, area_id = 5 }
}

-- 区域
regions = {
	{ config_id = 11, shape = RegionShape.SPHERE, radius = 2, pos = { x = 1746.743, y = 304.074, z = 470.495 }, area_id = 5 }
}

-- 触发器
triggers = {
	{ config_id = 1000003, name = "QUEST_START_3", event = EventType.EVENT_QUEST_START, source = defs.quest_1_id, condition = "", action = "action_EVENT_QUEST_START_3", trigger_count = 0 },
	{ config_id = 1000004, name = "QUEST_START_4", event = EventType.EVENT_QUEST_START, source = defs.quest_2_id, condition = "", action = "action_EVENT_QUEST_START_4", trigger_count = 0 },
	{ config_id = 1000005, name = "QUEST_START_5", event = EventType.EVENT_QUEST_START, source = defs.quest_3_id, condition = "", action = "action_EVENT_QUEST_START_5", trigger_count = 0 },
	{ config_id = 1000006, name = "CHALLENGE_SUCCESS_6", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "10", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_6", trigger_count = 0 },
	{ config_id = 1000010, name = "CHALLENGE_FAIL_10", event = EventType.EVENT_CHALLENGE_FAIL, source = "10", condition = "", action = "action_EVENT_CHALLENGE_FAIL_10", trigger_count = 0 },
	{ config_id = 1000011, name = "ENTER_REGION_11", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_11", action = "action_EVENT_ENTER_REGION_11", trigger_count = 0, tag = "555" },
	{ config_id = 1000012, name = "QUEST_START_12", event = EventType.EVENT_QUEST_START, source = defs.quest_4_id, condition = "", action = "action_EVENT_QUEST_START_12", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "Challenge_Flag", value = 0, no_refresh = false }
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
		gadgets = { },
		regions = { },
		triggers = { "QUEST_START_3", "QUEST_START_4", "QUEST_START_5", "QUEST_START_12" },
		npcs = { 1 },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 55, 2001, 2002, 2003, 2004, 2006, 2007, 2008, 2009, 2010, 2011, 2012, 2013, 2017, 2018, 2019, 2020, 2026, 2027, 2028, 2029, 2030, 2031, 2032, 2033, 2034, 2035, 2036, 2037, 2038, 2039, 2040, 2041, 2042, 2044, 2045, 2046, 2047, 2049 },
		regions = { 11 },
		triggers = { "CHALLENGE_SUCCESS_6", "CHALLENGE_FAIL_10", "ENTER_REGION_11" },
		rand_weight = 0
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { 55, 2001, 2002, 2003, 2004, 2006, 2007, 2008, 2009, 2010, 2011, 2012, 2013, 2017, 2018, 2019, 2020, 2026, 2027, 2028, 2029, 2030, 2031, 2032, 2033, 2034, 2035, 2036, 2037, 2038, 2039, 2040, 2041, 2042, 2044, 2045, 2046, 2047, 2049 },
		regions = { 11 },
		triggers = { "CHALLENGE_SUCCESS_6", "CHALLENGE_FAIL_10", "ENTER_REGION_11" },
		rand_weight = 0
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { },
		gadgets = { 55, 2001, 2002, 2003, 2004, 2006, 2007, 2008, 2009, 2010, 2011, 2012, 2013, 2017, 2018, 2019, 2020, 2026, 2027, 2028, 2029, 2030, 2031, 2032, 2033, 2034, 2035, 2036, 2037, 2038, 2039, 2040, 2041, 2042, 2044, 2045, 2046, 2047, 2049 },
		regions = { 11 },
		triggers = { "CHALLENGE_SUCCESS_6", "CHALLENGE_FAIL_10", "ENTER_REGION_11" },
		rand_weight = 0
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_START_3(context, evt)
			-- 添加2号资源包
			ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
			-- 开启限时到达挑战
			ScriptLib.ActiveChallenge(context, 10, 184, defs.challenge_1_duration, 4, 555, 1)
			-- 设定挑战标志符为1
			ScriptLib.SetGroupVariableValue(context, "Challenge_Flag", 1)
			return 0
end

-- 触发操作
function action_EVENT_QUEST_START_4(context, evt)
			-- 添加3号资源包
			ScriptLib.AddExtraGroupSuite(context, defs.group_id, 3)
			-- 开启限时到达挑战
			ScriptLib.ActiveChallenge(context, 10, 184, defs.challenge_2_duration, 4, 555, 1)
			-- 设定挑战标志符为2
			ScriptLib.SetGroupVariableValue(context, "Challenge_Flag", 2)
			return 0
end

-- 触发操作
function action_EVENT_QUEST_START_5(context, evt)
			-- 添加4号资源包
			ScriptLib.AddExtraGroupSuite(context, defs.group_id, 4)
			-- 开启限时到达挑战
			ScriptLib.ActiveChallenge(context, 10, 168, defs.challenge_3_duration, 4, 555, 1)
			-- 设定挑战标志符为3
			ScriptLib.SetGroupVariableValue(context, "Challenge_Flag", 3)
			return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_6(context, evt)
				-- 根据触发的挑战类型决定奖励物品
				local reward = ScriptLib.GetGroupVariableValue(context, "Challenge_Flag")
				if reward == 1 then
					ScriptLib.CreateGadget(context, {config_id = defs.chest_1} )
					-- 向任务返回结果
	
	-- Kill掉终点
	ScriptLib.KillEntityByConfigId(context, { config_id = defs.gadget_destination_id }) 
					ScriptLib.AddQuestProgress(context, defs.quest_1_success)
		
			
	-- 挑战结束卸载资源包
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 2)
				elseif reward == 2 then
					ScriptLib.CreateGadget(context, {config_id = defs.chest_2} )
					-- 向任务返回结果
	
	-- Kill掉终点
	ScriptLib.KillEntityByConfigId(context, { config_id = defs.gadget_destination_id })
					ScriptLib.AddQuestProgress(context, defs.quest_2_success)
					
	-- 挑战结束卸载资源包
					ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 3)
				elseif reward == 3 then
					ScriptLib.CreateGadget(context, {config_id = defs.chest_3} )
					-- 向任务返回结果
	
	-- Kill掉终点
	ScriptLib.KillEntityByConfigId(context, { config_id = defs.gadget_destination_id })
					ScriptLib.AddQuestProgress(context, defs.quest_3_success)
	
					-- 挑战结束卸载资源包
					ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 4)
				elseif reward == 4 then
					-- 向任务返回结果
	
	-- Kill掉终点
	ScriptLib.KillEntityByConfigId(context, { config_id = defs.gadget_destination_id }) 
					ScriptLib.AddQuestProgress(context, defs.quest_4_success)
	
					-- 挑战结束卸载资源包
					ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 4)
				end
				return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_10(context, evt)
				local reward = ScriptLib.GetGroupVariableValue(context, "Challenge_Flag")
				if reward == 1 then
					-- 向任务返回结果
	
	-- Kill掉终点
	ScriptLib.KillEntityByConfigId(context, { config_id = defs.gadget_destination_id })
					ScriptLib.AddQuestProgress(context, defs.quest_1_fail)
					ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 2)
				elseif reward == 2 then
					-- 向任务返回结果
	
	-- Kill掉终点
	ScriptLib.KillEntityByConfigId(context, { config_id = defs.gadget_destination_id })
					ScriptLib.AddQuestProgress(context, defs.quest_2_fail)
					ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 3)
				elseif reward == 3 then
					-- 向任务返回结果
	
	-- Kill掉终点
	ScriptLib.KillEntityByConfigId(context, { config_id = defs.gadget_destination_id })
					ScriptLib.AddQuestProgress(context, defs.quest_3_fail)
					ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 4)
				elseif reward == 4 then
					-- 向任务返回结果
	
	-- Kill掉终点
	ScriptLib.KillEntityByConfigId(context, { config_id = defs.gadget_destination_id })
					ScriptLib.AddQuestProgress(context, defs.quest_4_fail)
					ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 4)
				end
				return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_11(context, evt)
			if evt.param1 ~= defs.region_1 then 
				return false
			end
			return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_11(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 55 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_12(context, evt)
				-- 添加4号资源包
				ScriptLib.AddExtraGroupSuite(context, defs.group_id, 4)
				-- 开启限时到达挑战
				ScriptLib.ActiveChallenge(context, 10, 168, defs.challenge_3_duration, 4, 555, 1)
				-- 设定挑战标志符为3
				ScriptLib.SetGroupVariableValue(context, "Challenge_Flag", 4)
				return 0
end