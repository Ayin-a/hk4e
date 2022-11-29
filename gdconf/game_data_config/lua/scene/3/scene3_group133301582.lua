-- 基础信息
local base_info = {
	group_id = 133301582
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
	{ config_id = 582001, gadget_id = 70290517, pos = { x = -617.530, y = 136.310, z = 3636.590 }, rot = { x = 358.221, y = 353.820, z = 354.437 }, level = 33, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 22 },
	{ config_id = 582003, gadget_id = 70290517, pos = { x = -617.530, y = 136.310, z = 3636.590 }, rot = { x = 358.221, y = 353.820, z = 354.437 }, level = 33, state = GadgetState.GearStart, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 22 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 7303510开始触发，延迟1s后remove门
	{ config_id = 1582004, name = "QUEST_START_582004", event = EventType.EVENT_QUEST_START, source = "7303510", condition = "", action = "action_EVENT_QUEST_START_582004", trigger_count = 0 },
	{ config_id = 1582005, name = "TIME_AXIS_PASS_582005", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_582005", action = "action_EVENT_TIME_AXIS_PASS_582005", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1582002, name = "QUEST_START_582002", event = EventType.EVENT_QUEST_START, source = "7303510", condition = "", action = "action_EVENT_QUEST_START_582002", trigger_count = 0 }
	}
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
		gadgets = { 582001 },
		regions = { },
		triggers = { "QUEST_START_582004", "TIME_AXIS_PASS_582005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 582003 },
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

-- 触发操作
function action_EVENT_QUEST_START_582004(context, evt)
	-- 创建标识为"dooropen"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "dooropen", {1}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_582005(context, evt)
	if "dooropen" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_582005(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133301582, EntityType.GADGET, 582001 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end