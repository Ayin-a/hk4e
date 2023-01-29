-- 基础信息
local base_info = {
	group_id = 220138008
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
	{ config_id = 8001, gadget_id = 70310251, pos = { x = -100.077, y = -46.499, z = 25.080 }, rot = { x = 0.000, y = 180.299, z = 0.000 }, level = 1, persistent = true, arguments = { 19 } },
	{ config_id = 8002, gadget_id = 70310377, pos = { x = -95.393, y = -41.267, z = 53.183 }, rot = { x = 0.000, y = 179.575, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 8005, gadget_id = 70310429, pos = { x = -99.397, y = -41.958, z = 53.288 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 8006, gadget_id = 70310429, pos = { x = -91.150, y = -36.816, z = 53.107 }, rot = { x = 0.000, y = 178.167, z = 0.000 }, level = 1, persistent = true }
}

-- 区域
regions = {
	{ config_id = 8008, shape = RegionShape.SPHERE, radius = 5, pos = { x = -100.490, y = -46.499, z = 26.071 } }
}

-- 触发器
triggers = {
	{ config_id = 1008003, name = "OBSERVATION_POINT_NOTIFY_8003", event = EventType.EVENT_OBSERVATION_POINT_NOTIFY, source = "", condition = "", action = "action_EVENT_OBSERVATION_POINT_NOTIFY_8003", trigger_count = 0 },
	{ config_id = 1008004, name = "OBSERVATION_POINT_NOTIFY_8004", event = EventType.EVENT_OBSERVATION_POINT_NOTIFY, source = "", condition = "", action = "action_EVENT_OBSERVATION_POINT_NOTIFY_8004", trigger_count = 0 },
	-- 运营埋点-补全物件
	{ config_id = 1008007, name = "GADGET_STATE_CHANGE_8007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_8007", action = "action_EVENT_GADGET_STATE_CHANGE_8007", trigger_count = 0 },
	{ config_id = 1008008, name = "ENTER_REGION_8008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_8008" }
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
		gadgets = { 8001, 8002, 8005, 8006 },
		regions = { 8008 },
		triggers = { "OBSERVATION_POINT_NOTIFY_8003", "OBSERVATION_POINT_NOTIFY_8004", "GADGET_STATE_CHANGE_8007", "ENTER_REGION_8008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_OBSERVATION_POINT_NOTIFY_8003(context, evt)
	if 8001 == evt.param1 and 405 == evt.param2 then
		ScriptLib.SetGadgetStateByConfigId(context,8002, GadgetState.GearStart)
		
		ScriptLib.AddQuestProgress(context, "4007205")
		
		ScriptLib.SetGadgetStateByConfigId(context,8001, 405)
		
		ScriptLib.KillEntityByConfigId(context, {group_id=220138008, config_id=8005, entity_type=EntityType.GADGET})
		
		ScriptLib.KillEntityByConfigId(context, {group_id=220138008, config_id=8006, entity_type=EntityType.GADGET})
	end
	
	return 0
end

-- 触发操作
function action_EVENT_OBSERVATION_POINT_NOTIFY_8004(context, evt)
	if 8001 == evt.param1 and 0 == evt.param2 then
		ScriptLib.SetGadgetStateByConfigId(context,8002, GadgetState.Default)
		
		ScriptLib.SetGadgetStateByConfigId(context,8001, GadgetState.Default)
		
		ScriptLib.CreateGadget(context, {config_id=8005})
		
		ScriptLib.CreateGadget(context, {config_id=8006})
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_8007(context, evt)
	if 8002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_8007(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2802, 2, 0) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_8008(context, evt)
	if ScriptLib.GetRegionEntityCount(context, {region_eid = evt.source_eid, entity_type = EntityType.AVATAR}) == 1 then
		ScriptLib.TryRecordActivityPushTips(context, 2014014)
		
		ScriptLib.ShowClientTutorial(context, 1189, {})
	end
	
	return 0
end