-- 基础信息
local base_info = {
	group_id = 133210206
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
	{ config_id = 206001, gadget_id = 70710219, pos = { x = -3773.140, y = 153.310, z = -752.775 }, rot = { x = 0.000, y = 175.977, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 206002, gadget_id = 70710222, pos = { x = -3797.271, y = 149.263, z = -747.906 }, rot = { x = 0.000, y = 185.912, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 206003, gadget_id = 70710222, pos = { x = -3819.819, y = 146.230, z = -752.487 }, rot = { x = 0.000, y = 185.912, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 206005, gadget_id = 70710222, pos = { x = -3842.495, y = 144.573, z = -762.837 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 206006, gadget_id = 70710222, pos = { x = -3872.522, y = 149.132, z = -773.642 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 206007, gadget_id = 70710222, pos = { x = -3913.202, y = 149.710, z = -792.302 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 206009, gadget_id = 70710222, pos = { x = -3942.219, y = 156.404, z = -809.778 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 206010, gadget_id = 70710222, pos = { x = -3954.803, y = 156.185, z = -795.380 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 206011, gadget_id = 70710222, pos = { x = -3966.884, y = 155.552, z = -783.052 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 206013, gadget_id = 70710222, pos = { x = -3966.553, y = 160.225, z = -762.059 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 206014, gadget_id = 70710222, pos = { x = -3956.339, y = 164.419, z = -743.439 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 206016, gadget_id = 70710222, pos = { x = -3953.207, y = 169.702, z = -709.214 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 206017, gadget_id = 70710222, pos = { x = -3949.463, y = 168.117, z = -726.906 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 206019, gadget_id = 70710222, pos = { x = -3794.913, y = 164.411, z = -757.727 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17 }
}

-- 区域
regions = {
	{ config_id = 206004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -3820.230, y = 145.126, z = -755.258 }, area_id = 17 },
	{ config_id = 206008, shape = RegionShape.SPHERE, radius = 5, pos = { x = -3928.200, y = 152.542, z = -800.877 }, area_id = 17 },
	{ config_id = 206012, shape = RegionShape.SPHERE, radius = 5, pos = { x = -3966.052, y = 155.808, z = -784.724 }, area_id = 17 },
	{ config_id = 206015, shape = RegionShape.SPHERE, radius = 5, pos = { x = -3951.304, y = 166.957, z = -735.130 }, area_id = 17 },
	{ config_id = 206018, shape = RegionShape.SPHERE, radius = 5, pos = { x = -3961.838, y = 170.498, z = -702.050 }, area_id = 17 },
	{ config_id = 206020, shape = RegionShape.SPHERE, radius = 5, pos = { x = -3794.390, y = 164.405, z = -757.762 }, area_id = 17 }
}

-- 触发器
triggers = {
	{ config_id = 1206004, name = "ENTER_REGION_206004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_206004", action = "action_EVENT_ENTER_REGION_206004" },
	{ config_id = 1206008, name = "ENTER_REGION_206008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_206008", action = "action_EVENT_ENTER_REGION_206008" },
	{ config_id = 1206012, name = "ENTER_REGION_206012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_206012", action = "action_EVENT_ENTER_REGION_206012" },
	{ config_id = 1206015, name = "ENTER_REGION_206015", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_206015", action = "action_EVENT_ENTER_REGION_206015" },
	{ config_id = 1206018, name = "ENTER_REGION_206018", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_206018", action = "action_EVENT_ENTER_REGION_206018" },
	{ config_id = 1206020, name = "ENTER_REGION_206020", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_206020", action = "action_EVENT_ENTER_REGION_206020" }
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
		-- description = ,
		monsters = { },
		gadgets = { 206019 },
		regions = { 206020 },
		triggers = { "ENTER_REGION_206020" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 206001, 206002, 206003 },
		regions = { 206004 },
		triggers = { "ENTER_REGION_206004" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 206005, 206006, 206007 },
		regions = { 206008 },
		triggers = { "ENTER_REGION_206008" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 206009, 206010, 206011 },
		regions = { 206012 },
		triggers = { "ENTER_REGION_206012" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 206013, 206014 },
		regions = { 206015 },
		triggers = { "ENTER_REGION_206015" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 206016, 206017 },
		regions = { 206018 },
		triggers = { "ENTER_REGION_206018" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_206004(context, evt)
	if evt.param1 ~= 206004 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_206004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1202205") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133210206, 3)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133210206, 1)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_206008(context, evt)
	if evt.param1 ~= 206008 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_206008(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1202206") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133210206, 4)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133210206, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_206012(context, evt)
	if evt.param1 ~= 206012 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_206012(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1202214") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133210206, 5)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133210206, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_206015(context, evt)
	if evt.param1 ~= 206015 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_206015(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1202215") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133210206, 6)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133210206, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_206018(context, evt)
	if evt.param1 ~= 206018 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_206018(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1202207") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133210206, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_206020(context, evt)
	if evt.param1 ~= 206020 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_206020(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1202204") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133210206, 2)
	
	return 0
end