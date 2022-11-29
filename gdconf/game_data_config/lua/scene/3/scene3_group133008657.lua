-- 基础信息
local base_info = {
	group_id = 133008657
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 657001, monster_id = 20040501, pos = { x = 1172.105, y = 286.316, z = -548.883 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 657002, gadget_id = 70210106, pos = { x = 1173.012, y = 285.416, z = -547.383 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "无相之冰", isOneoff = true, persistent = true, boss_chest = {monster_config_id=657001, resin=40,life_time=600, take_num=100}, area_id = 10 },
	{ config_id = 657008, gadget_id = 70360165, pos = { x = 1171.124, y = 290.355, z = -548.845 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 10 }
}

-- 区域
regions = {
	{ config_id = 657006, shape = RegionShape.SPHERE, radius = 35, pos = { x = 1172.475, y = 285.454, z = -545.475 }, area_id = 10 },
	{ config_id = 657007, shape = RegionShape.SPHERE, radius = 45, pos = { x = 1172.475, y = 285.454, z = -545.475 }, area_id = 10 },
	{ config_id = 657010, shape = RegionShape.CUBIC, size = { x = 60.000, y = 10.000, z = 60.000 }, pos = { x = 1171.124, y = 290.355, z = -548.845 }, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1657003, name = "ANY_MONSTER_DIE_657003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_657003", action = "action_EVENT_ANY_MONSTER_DIE_657003" },
	{ config_id = 1657004, name = "GROUP_LOAD_657004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_657004", trigger_count = 0 },
	{ config_id = 1657005, name = "QUEST_START_657005", event = EventType.EVENT_QUEST_START, source = "7014403", condition = "", action = "action_EVENT_QUEST_START_657005", trigger_count = 0 },
	{ config_id = 1657006, name = "ENTER_REGION_657006", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_657006", action = "action_EVENT_ENTER_REGION_657006", trigger_count = 0, forbid_guest = false },
	{ config_id = 1657007, name = "LEAVE_REGION_657007", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_657007", action = "action_EVENT_LEAVE_REGION_657007", trigger_count = 0, forbid_guest = false },
	{ config_id = 1657009, name = "ANY_MONSTER_LIVE_657009", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_657009", action = "action_EVENT_ANY_MONSTER_LIVE_657009", trigger_count = 0 },
	{ config_id = 1657010, name = "ENTER_REGION_657010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_657010", action = "action_EVENT_ENTER_REGION_657010", trigger_count = 0, forbid_guest = false }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 657011, gadget_id = 70290053, pos = { x = 1172.460, y = 285.200, z = -548.850 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 }
	}
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 2,
	end_suite = 1,
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
		monsters = { 657001 },
		gadgets = { },
		regions = { 657006, 657007 },
		triggers = { "ANY_MONSTER_DIE_657003", "GROUP_LOAD_657004", "ENTER_REGION_657006", "LEAVE_REGION_657007", "ANY_MONSTER_LIVE_657009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "QUEST_START_657005" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 657010 },
		triggers = { "ENTER_REGION_657010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_657003(context, evt)
	--判断死亡怪物的configid是否为 657001
	if evt.param1 ~= 657001 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_657003(context, evt)
	-- 创建id为657002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 657002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13300865701") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 657008 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133008657, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_657004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133008048, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133008381, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133008380, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133008382, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133008483, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133008576, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_657005(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133008657, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133008382, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_657006(context, evt)
	if evt.param1 ~= 657006 then return false end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_657006(context, evt)
	    	if context.uid~=0 then
			local small_region={}
			local big_region={}
			for i=1,#regions do
				if regions[i].config_id==657006 then
					small_region=regions[i]
				end
				if regions[i].config_id==657007 then
					big_region=regions[i]
				end
			end
			TrySetPlayerEyePoint(context, small_region, big_region, 0, {0})
		end
	
	return 0
	
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_657007(context, evt)
	if evt.param1 ~= 657007 then return false end
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_657007(context, evt)
	  	if context.uid~=0 then
			ScriptLib.ClearPlayerEyePoint(context, 657006)
		end
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_657009(context, evt)
	if 657001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_657009(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133008657, 3)
	
	-- 创建id为657008的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 657008 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_657010(context, evt)
	if evt.param1 ~= 657010 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_657010(context, evt)
	-- 调用提示id为 400030 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400030) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

require "TD_Lib"