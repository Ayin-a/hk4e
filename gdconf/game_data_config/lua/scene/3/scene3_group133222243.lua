-- 基础信息
local base_info = {
	group_id = 133222243
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 243005, monster_id = 28020504, pos = { x = -4298.316, y = 214.886, z = -4241.492 }, rot = { x = 0.000, y = 204.219, z = 0.000 }, level = 30, drop_tag = "走兽", disableWander = true, pose_id = 1, area_id = 14 },
	{ config_id = 243007, monster_id = 28020504, pos = { x = -4297.202, y = 214.783, z = -4243.227 }, rot = { x = 0.000, y = 203.585, z = 0.000 }, level = 30, drop_tag = "走兽", disableWander = true, pose_id = 1, area_id = 14 },
	{ config_id = 243009, monster_id = 28020504, pos = { x = -4295.771, y = 214.512, z = -4244.136 }, rot = { x = 0.000, y = 210.495, z = 0.000 }, level = 30, drop_tag = "走兽", disableWander = true, pose_id = 1, area_id = 14 },
	{ config_id = 243011, monster_id = 28020504, pos = { x = -4294.017, y = 214.282, z = -4244.057 }, rot = { x = 0.000, y = 159.034, z = 0.000 }, level = 30, drop_tag = "走兽", disableWander = true, pose_id = 1, area_id = 14 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 243001, gadget_id = 70710110, pos = { x = -4298.708, y = 215.086, z = -4242.125 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, interact_id = 50, area_id = 14 },
	{ config_id = 243002, gadget_id = 70710110, pos = { x = -4297.607, y = 214.959, z = -4243.843 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, interact_id = 50, area_id = 14 },
	{ config_id = 243003, gadget_id = 70710110, pos = { x = -4296.206, y = 214.668, z = -4244.723 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, interact_id = 50, area_id = 14 },
	{ config_id = 243004, gadget_id = 70710110, pos = { x = -4293.953, y = 214.396, z = -4244.760 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, interact_id = 50, area_id = 14 },
	{ config_id = 243013, gadget_id = 70211121, pos = { x = -4295.312, y = 215.391, z = -4241.677 }, rot = { x = 346.226, y = 191.658, z = 13.407 }, level = 26, drop_tag = "解谜高级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1243006, name = "GADGET_STATE_CHANGE_243006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_243006", action = "action_EVENT_GADGET_STATE_CHANGE_243006", trigger_count = 0 },
	{ config_id = 1243008, name = "GADGET_STATE_CHANGE_243008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_243008", action = "action_EVENT_GADGET_STATE_CHANGE_243008", trigger_count = 0 },
	{ config_id = 1243010, name = "GADGET_STATE_CHANGE_243010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_243010", action = "action_EVENT_GADGET_STATE_CHANGE_243010", trigger_count = 0 },
	{ config_id = 1243012, name = "GADGET_STATE_CHANGE_243012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_243012", action = "action_EVENT_GADGET_STATE_CHANGE_243012", trigger_count = 0 }
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
		monsters = { 243005 },
		gadgets = { 243001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_243006" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 243007 },
		gadgets = { 243002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_243008" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 243009 },
		gadgets = { 243003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_243010" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 243011 },
		gadgets = { 243004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_243012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_243006(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133222243, 243001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_243006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7222401") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_243008(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133222243, 243002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_243008(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7222402") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_243010(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133222243, 243003) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_243010(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7222403") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_243012(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133222243, 243004) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_243012(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7222404") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 6057, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 创建id为243013的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 243013 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end