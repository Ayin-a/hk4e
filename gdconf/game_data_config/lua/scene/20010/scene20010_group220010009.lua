-- 基础信息
local base_info = {
	group_id = 220010009
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
	{ config_id = 69, gadget_id = 70211101, pos = { x = 205.543, y = -34.054, z = 32.254 }, rot = { x = 0.000, y = 271.905, z = 0.000 }, level = 6, drop_tag = "解谜低级蒙德", isOneoff = true },
	{ config_id = 70, gadget_id = 70211001, pos = { x = 373.326, y = -34.641, z = 19.610 }, rot = { x = 0.000, y = 270.458, z = 0.000 }, level = 6, drop_tag = "战斗低级蒙德", isOneoff = true },
	{ config_id = 71, gadget_id = 70211021, pos = { x = 476.138, y = -43.278, z = 14.651 }, rot = { x = 0.000, y = 272.126, z = 0.000 }, level = 6, chest_drop_id = 18000700, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1009001, name = "GADGET_STATE_CHANGE_9001", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_9001", action = "action_EVENT_GADGET_STATE_CHANGE_9001" }
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
	rand_suite = true
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
		gadgets = { 69, 70, 71 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_9001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_9001(context, evt)
	if 71 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_9001(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "22001000901") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end