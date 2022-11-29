-- 基础信息
local base_info = {
	group_id = 133107238
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
	{ config_id = 238004, gadget_id = 70300118, pos = { x = -782.792, y = 205.796, z = 733.355 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, interact_id = 91, area_id = 8 },
	{ config_id = 238005, gadget_id = 71700330, pos = { x = -783.196, y = 206.227, z = 734.095 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, interact_id = 91, area_id = 8 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1238001, name = "GADGET_STATE_CHANGE_238001", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_238001", action = "action_EVENT_GADGET_STATE_CHANGE_238001" }
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
		gadgets = { 238004, 238005 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_238001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_238001(context, evt)
	if 238005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_238001(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133107238") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end