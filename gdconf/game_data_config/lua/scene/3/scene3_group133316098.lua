-- 基础信息
local base_info = {
	group_id = 133316098
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
	{ config_id = 98001, gadget_id = 70350433, pos = { x = 427.205, y = 128.401, z = 6332.068 }, rot = { x = 0.000, y = 92.711, z = 0.000 }, level = 32, area_id = 30 },
	{ config_id = 98002, gadget_id = 70310001, pos = { x = 430.442, y = 126.233, z = 6328.103 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 30 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1098003, name = "GADGET_STATE_CHANGE_98003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_98003", action = "action_EVENT_GADGET_STATE_CHANGE_98003" }
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
		gadgets = { 98001, 98002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_98003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_98003(context, evt)
	if 98002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_98003(context, evt)
	-- 将configid为 98001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 98001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7325122") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end