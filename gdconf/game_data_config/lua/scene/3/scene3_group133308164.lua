-- 基础信息
local base_info = {
	group_id = 133308164
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
	{ config_id = 164001, gadget_id = 70360392, pos = { x = -1831.955, y = 213.236, z = 4638.582 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, interact_id = 148, area_id = 26 },
	{ config_id = 164002, gadget_id = 70360040, pos = { x = -1831.955, y = 213.236, z = 4638.582 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	-- 施肥前种子
	{ config_id = 164003, gadget_id = 70330293, pos = { x = -1831.955, y = 213.236, z = 4638.582 }, rot = { x = 0.000, y = 315.000, z = 0.000 }, level = 32, state = GadgetState.ChestOpened, persistent = true, area_id = 26 },
	{ config_id = 164005, gadget_id = 70330293, pos = { x = -1831.955, y = 213.236, z = 4638.582 }, rot = { x = 0.000, y = 315.000, z = 0.000 }, level = 32, state = GadgetState.GearStop, persistent = true, area_id = 26 },
	{ config_id = 164006, gadget_id = 70330293, pos = { x = -1831.955, y = 213.236, z = 4638.582 }, rot = { x = 0.000, y = 315.000, z = 0.000 }, level = 32, state = GadgetState.CrystalResonate2, persistent = true, area_id = 26 },
	{ config_id = 164007, gadget_id = 70710470, pos = { x = -1831.955, y = 213.236, z = 4638.582 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 164009, gadget_id = 70710470, pos = { x = -1831.955, y = 213.236, z = 4638.582 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 种植
	{ config_id = 1164004, name = "GADGET_STATE_CHANGE_164004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_164004", action = "action_EVENT_GADGET_STATE_CHANGE_164004" },
	-- 施肥
	{ config_id = 1164008, name = "GADGET_STATE_CHANGE_164008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_164008", action = "action_EVENT_GADGET_STATE_CHANGE_164008" },
	-- 施肥
	{ config_id = 1164010, name = "GADGET_STATE_CHANGE_164010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_164010", action = "action_EVENT_GADGET_STATE_CHANGE_164010" },
	-- 延迟开花
	{ config_id = 1164011, name = "TIME_AXIS_PASS_164011", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_164011", action = "action_EVENT_TIME_AXIS_PASS_164011" },
	-- 保底
	{ config_id = 1164012, name = "GROUP_LOAD_164012", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_164012", action = "action_EVENT_GROUP_LOAD_164012", trigger_count = 0 }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 种植/施肥前种子,
		monsters = { },
		gadgets = { 164001, 164002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_164004", "GADGET_STATE_CHANGE_164008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 施肥前幼苗,
		monsters = { },
		gadgets = { 164005, 164009 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_164010", "TIME_AXIS_PASS_164011", "GROUP_LOAD_164012" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 绽放的花,
		monsters = { },
		gadgets = { 164006 },
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
function condition_EVENT_GADGET_STATE_CHANGE_164004(context, evt)
	if 164001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_164004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7322301") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133308164, EntityType.GADGET, 164001 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133308164, EntityType.GADGET, 164002 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 创建id为164003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 164003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为164007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 164007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_164008(context, evt)
	if 164003 ~= evt.param2 or GadgetState.ChestTrap ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_164008(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7322302") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133308164, EntityType.GADGET, 164007 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_164010(context, evt)
	if 164005 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_164010(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133308164, EntityType.GADGET, 164009 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 创建标识为"blossom"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "blossom", {1}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_164011(context, evt)
	if "blossom" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_164011(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133308164, suite = 4 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_164012(context, evt)
	local curQuestState = ScriptLib.GetHostQuestState(context,7330102)
	if -1 == curQuestState or 0 == curQuestState then
	  return false
	end
	if curQuestState ~= 3 then
	   return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_164012(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133308164, suite = 4 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

require "V3_0/DeathFieldStandard"