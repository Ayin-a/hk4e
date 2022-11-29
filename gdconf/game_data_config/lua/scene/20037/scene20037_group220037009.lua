-- 基础信息
local base_info = {
	group_id = 220037009
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
	{ config_id = 9001, gadget_id = 70380001, pos = { x = 262.104, y = 21.692, z = 4.040 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 1, start_route = false },
	{ config_id = 9002, gadget_id = 70900009, pos = { x = 252.017, y = 21.766, z = 3.510 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 9003, gadget_id = 70350004, pos = { x = 265.278, y = 42.518, z = 4.093 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 9006, gadget_id = 70900201, pos = { x = 299.103, y = 44.862, z = 4.030 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 9005, shape = RegionShape.CUBIC, size = { x = 5.500, y = 7.000, z = 7.000 }, pos = { x = 261.994, y = 45.170, z = 4.153 } }
}

-- 触发器
triggers = {
	{ config_id = 1009004, name = "GADGET_STATE_CHANGE_9004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_9004", action = "action_EVENT_GADGET_STATE_CHANGE_9004" },
	{ config_id = 1009005, name = "ENTER_REGION_9005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_9005", action = "action_EVENT_ENTER_REGION_9005" },
	{ config_id = 1009007, name = "QUEST_START_9007", event = EventType.EVENT_QUEST_START, source = "1012202", condition = "", action = "action_EVENT_QUEST_START_9007" }
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
		gadgets = { 9001, 9002, 9003 },
		regions = { 9005 },
		triggers = { "GADGET_STATE_CHANGE_9004", "ENTER_REGION_9005", "QUEST_START_9007" },
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
function condition_EVENT_GADGET_STATE_CHANGE_9004(context, evt)
	-- 检测config_id为9002的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 9002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_9004(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 9001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_9005(context, evt)
	if evt.param1 ~= 9005 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_9005(context, evt)
	-- 将configid为 9003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 9003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1012203") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 创建id为9006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 9006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_9007(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 9006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end