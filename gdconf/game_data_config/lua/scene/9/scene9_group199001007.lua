-- 基础信息
local base_info = {
	group_id = 199001007
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
	{ config_id = 7001, gadget_id = 70710483, pos = { x = 222.916, y = 149.357, z = 349.951 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 7003, gadget_id = 70710786, pos = { x = 222.874, y = 149.445, z = 349.177 }, rot = { x = 0.000, y = 82.316, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 7004, gadget_id = 70310186, pos = { x = 223.753, y = 148.620, z = 346.598 }, rot = { x = 0.000, y = 75.098, z = 0.000 }, level = 1, state = GadgetState.GearStop, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 402 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1007002, name = "ANY_GADGET_DIE_7002", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_7002", action = "action_EVENT_ANY_GADGET_DIE_7002" },
	{ config_id = 1007005, name = "GROUP_LOAD_7005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_7005", action = "action_EVENT_GROUP_LOAD_7005", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "IsDoorDead", value = 0, no_refresh = true }
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
		gadgets = { 7001, 7003, 7004 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_7002", "GROUP_LOAD_7005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_7002(context, evt)
	if 7004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_7002(context, evt)
	-- 将本组内变量名为 "IsDoorDead" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "IsDoorDead", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7902207finished") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_7005(context, evt)
	-- 判断变量"IsDoorDead"为1
	if ScriptLib.GetGroupVariableValue(context, "IsDoorDead") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_7005(context, evt)
	ScriptLib.AddQuestProgress(context, "7902207finished")
	return 0
end