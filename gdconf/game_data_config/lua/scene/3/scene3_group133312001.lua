-- 基础信息
local base_info = {
	group_id = 133312001
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
	{ config_id = 1001, gadget_id = 70330224, pos = { x = -3258.694, y = 196.746, z = 4559.751 }, rot = { x = 32.527, y = 133.800, z = 355.602 }, level = 1, area_id = 28 }
}

-- 区域
regions = {
	{ config_id = 1002, shape = RegionShape.POLYGON, pos = { x = -3087.646, y = 127.810, z = 4360.582 }, height = 304.380, point_array = { { x = -2908.764, y = 4208.417 }, { x = -2893.009, y = 4260.066 }, { x = -2942.083, y = 4371.665 }, { x = -3005.595, y = 4488.973 }, { x = -3060.198, y = 4542.687 }, { x = -3155.548, y = 4609.038 }, { x = -3256.128, y = 4555.081 }, { x = -3282.283, y = 4520.155 }, { x = -3186.867, y = 4315.644 }, { x = -3154.650, y = 4292.089 }, { x = -3128.304, y = 4216.971 }, { x = -3071.620, y = 4112.125 }, { x = -2968.444, y = 4155.307 } }, area_id = 28 },
	{ config_id = 1003, shape = RegionShape.POLYGON, pos = { x = -3087.646, y = 127.810, z = 4360.582 }, height = 304.380, point_array = { { x = -2908.764, y = 4208.417 }, { x = -2893.009, y = 4260.066 }, { x = -2942.083, y = 4371.665 }, { x = -3005.595, y = 4488.973 }, { x = -3060.198, y = 4542.687 }, { x = -3155.548, y = 4609.038 }, { x = -3256.128, y = 4555.081 }, { x = -3282.283, y = 4520.155 }, { x = -3186.867, y = 4315.644 }, { x = -3154.650, y = 4292.089 }, { x = -3128.304, y = 4216.971 }, { x = -3071.620, y = 4112.125 }, { x = -2968.444, y = 4155.307 } }, area_id = 28 }
}

-- 触发器
triggers = {
	{ config_id = 1001002, name = "ENTER_REGION_1002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1002", action = "action_EVENT_ENTER_REGION_1002", trigger_count = 0, forbid_guest = false },
	{ config_id = 1001003, name = "LEAVE_REGION_1003", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_1003", action = "action_EVENT_LEAVE_REGION_1003", trigger_count = 0, forbid_guest = false },
	{ config_id = 1001004, name = "QUEST_FINISH_1004", event = EventType.EVENT_QUEST_FINISH, source = "7308418", condition = "", action = "action_EVENT_QUEST_FINISH_1004" },
	{ config_id = 1001005, name = "QUEST_FINISH_1005", event = EventType.EVENT_QUEST_FINISH, source = "7308402", condition = "", action = "action_EVENT_QUEST_FINISH_1005" }
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
	end_suite = 2,
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
		gadgets = { 1001 },
		regions = { 1002, 1003 },
		triggers = { "ENTER_REGION_1002", "LEAVE_REGION_1003", "QUEST_FINISH_1004", "QUEST_FINISH_1005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
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
function condition_EVENT_ENTER_REGION_1002(context, evt)
	if evt.param1 ~= 1002 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1002(context, evt)
	-- 将configid为 1001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "WQ7308401") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_1003(context, evt)
	if evt.param1 ~= 1003 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) > 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_1003(context, evt)
	-- 将configid为 1001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_1004(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7025, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_1005(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7025, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end