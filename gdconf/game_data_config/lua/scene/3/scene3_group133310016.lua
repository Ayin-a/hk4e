-- 基础信息
local base_info = {
	group_id = 133310016
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
	{ config_id = 16001, gadget_id = 70330262, pos = { x = -2953.023, y = 60.198, z = 4612.587 }, rot = { x = 359.629, y = 233.106, z = 8.943 }, level = 1, state = GadgetState.Action01, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 28 },
	{ config_id = 16003, gadget_id = 70330437, pos = { x = -2952.488, y = 64.460, z = 4614.160 }, rot = { x = 341.700, y = 13.433, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 28 }
}

-- 区域
regions = {
	{ config_id = 16005, shape = RegionShape.SPHERE, radius = 10, pos = { x = -2954.208, y = 58.963, z = 4605.281 }, area_id = 28 }
}

-- 触发器
triggers = {
	{ config_id = 1016002, name = "ANY_GADGET_DIE_16002", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_16002", action = "action_EVENT_ANY_GADGET_DIE_16002", trigger_count = 0 },
	{ config_id = 1016004, name = "GROUP_LOAD_16004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_16004", action = "action_EVENT_GROUP_LOAD_16004", trigger_count = 0 },
	{ config_id = 1016005, name = "ENTER_REGION_16005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_16005", action = "action_EVENT_ENTER_REGION_16005", trigger_count = 0 },
	{ config_id = 1016006, name = "QUEST_START_16006", event = EventType.EVENT_QUEST_START, source = "7308405", condition = "", action = "action_EVENT_QUEST_START_16006", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "Quest_Finish", value = 0, no_refresh = true }
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
		gadgets = { 16001, 16003 },
		regions = { 16005 },
		triggers = { "ANY_GADGET_DIE_16002", "GROUP_LOAD_16004", "ENTER_REGION_16005", "QUEST_START_16006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_16002(context, evt)
	if 16001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_16002(context, evt)
	-- 将本组内变量名为 "Quest_Finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Quest_Finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "WQ7308405") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将configid为 16003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 16003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_16004(context, evt)
	-- 判断变量"Quest_Finish"为1
	if ScriptLib.GetGroupVariableValue(context, "Quest_Finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_16004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "WQ7308405") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将configid为 16003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 16003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_16005(context, evt)
	if evt.param1 ~= 16005 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_16005(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7026, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_16006(context, evt)
	-- 将configid为 16001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 16001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end