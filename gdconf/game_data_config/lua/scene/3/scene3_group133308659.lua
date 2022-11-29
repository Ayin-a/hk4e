-- 基础信息
local base_info = {
	group_id = 133308659
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
	{ config_id = 659001, gadget_id = 70360392, pos = { x = -1829.029, y = 213.771, z = 4625.813 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, interact_id = 148, area_id = 26 },
	{ config_id = 659002, gadget_id = 70360040, pos = { x = -1829.029, y = 213.771, z = 4625.813 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	-- 施肥前种子
	{ config_id = 659003, gadget_id = 70330293, pos = { x = -1829.029, y = 213.781, z = 4625.813 }, rot = { x = 0.000, y = 280.000, z = 0.000 }, level = 32, state = GadgetState.ChestOpened, persistent = true, area_id = 26 },
	{ config_id = 659004, gadget_id = 70330293, pos = { x = -1829.029, y = 213.781, z = 4625.813 }, rot = { x = 0.000, y = 280.000, z = 0.000 }, level = 32, state = GadgetState.GearStop, persistent = true, area_id = 26 },
	{ config_id = 659005, gadget_id = 70330293, pos = { x = -1829.029, y = 213.781, z = 4625.813 }, rot = { x = 0.000, y = 280.000, z = 0.000 }, level = 32, state = GadgetState.CrystalResonate2, persistent = true, area_id = 26 },
	{ config_id = 659006, gadget_id = 70710470, pos = { x = -1829.029, y = 213.771, z = 4625.813 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 659007, gadget_id = 70710470, pos = { x = -1829.029, y = 213.771, z = 4625.813 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 种植
	{ config_id = 1659008, name = "GADGET_STATE_CHANGE_659008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_659008", action = "action_EVENT_GADGET_STATE_CHANGE_659008" },
	-- 施肥
	{ config_id = 1659009, name = "GADGET_STATE_CHANGE_659009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_659009", action = "action_EVENT_GADGET_STATE_CHANGE_659009" },
	-- 施肥
	{ config_id = 1659010, name = "GADGET_STATE_CHANGE_659010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_659010", action = "action_EVENT_GADGET_STATE_CHANGE_659010" },
	-- 延迟开花
	{ config_id = 1659011, name = "TIME_AXIS_PASS_659011", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_659011", action = "action_EVENT_TIME_AXIS_PASS_659011" },
	-- 保底
	{ config_id = 1659012, name = "GROUP_LOAD_659012", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_659012", action = "action_EVENT_GROUP_LOAD_659012" }
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
		-- description = ,
		monsters = { },
		gadgets = { 659001, 659002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_659008", "GADGET_STATE_CHANGE_659009" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 659004, 659007 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_659010", "TIME_AXIS_PASS_659011", "GROUP_LOAD_659012" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 659005 },
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
function condition_EVENT_GADGET_STATE_CHANGE_659008(context, evt)
	if 659001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_659008(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7327301") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133308659, EntityType.GADGET, 659001 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133308659, EntityType.GADGET, 659002 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 创建id为659003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 659003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为659006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 659006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_659009(context, evt)
	if 659003 ~= evt.param2 or GadgetState.ChestTrap ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_659009(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133308659, EntityType.GADGET, 659006 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7327302") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_659010(context, evt)
	if 659004 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_659010(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133308659, EntityType.GADGET, 659007 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 创建标识为"blossom"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "blossom", {1}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_659011(context, evt)
	if "blossom" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_659011(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133308659, suite = 4 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_659012(context, evt)
	local curQuestState = ScriptLib.GetHostQuestState(context,7330302)
	if -1 == curQuestState or 0 == curQuestState then
	  return false
	end
	if curQuestState ~= 3 then
	   return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_659012(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133308659, suite = 4 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

require "V3_0/DeathFieldStandard"