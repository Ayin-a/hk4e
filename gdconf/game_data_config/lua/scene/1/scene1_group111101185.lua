-- 基础信息
local base_info = {
	group_id = 111101185
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
	{ config_id = 185003, gadget_id = 70310001, pos = { x = 2927.275, y = 288.208, z = -1439.493 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 185004, shape = RegionShape.SPHERE, radius = 3, pos = { x = 2927.337, y = 288.205, z = -1439.541 } },
	{ config_id = 185005, shape = RegionShape.SPHERE, radius = 3, pos = { x = 2927.271, y = 288.148, z = -1439.504 } }
}

-- 触发器
triggers = {
	{ config_id = 1185004, name = "ENTER_REGION_185004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_185004", action = "action_EVENT_ENTER_REGION_185004", trigger_count = 0 },
	{ config_id = 1185005, name = "LEAVE_REGION_185005", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_185005", action = "action_EVENT_LEAVE_REGION_185005", trigger_count = 0 }
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
		gadgets = { 185003 },
		regions = { 185004, 185005 },
		triggers = { "ENTER_REGION_185004", "LEAVE_REGION_185005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_185004(context, evt)
	if evt.param1 ~= 185004 then return false end
	
	-- 判断是区域1185004
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 1185004 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_185004(context, evt)
	ScriptLib.PrintContextLog(context, "[Threat Test] SGV_CAN_CLEAR_THREAT Set: 1. @EntityID: "..evt.target_eid.." @UID: "..evt.uid)
	ScriptLib.SetTeamServerGlobalValue(context, evt.uid, "SGV_CAN_CLEAR_THREAT", 1)
		
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_185005(context, evt)
	-- 判断是区域1185005
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 1185005 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_185005(context, evt)
	ScriptLib.PrintContextLog(context, "[Threat Test] SGV_CAN_CLEAR_THREAT Set: 0. @EntityID: "..evt.target_eid.." @UID: "..evt.uid)
	ScriptLib.SetTeamServerGlobalValue(context, evt.uid, "SGV_CAN_CLEAR_THREAT", 0)
		
	return 0
end