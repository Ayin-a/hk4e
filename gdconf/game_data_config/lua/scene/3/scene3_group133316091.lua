-- 基础信息
local base_info = {
	group_id = 133316091
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
	{ config_id = 91001, gadget_id = 70900050, pos = { x = 1011.864, y = 119.732, z = 6447.630 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStop, area_id = 30 },
	{ config_id = 91003, gadget_id = 70350433, pos = { x = 1034.115, y = 114.846, z = 6464.402 }, rot = { x = 0.000, y = 64.822, z = 0.000 }, level = 1, area_id = 30 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1091002, name = "GADGET_STATE_CHANGE_91002", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_91002", action = "action_EVENT_GADGET_STATE_CHANGE_91002" }
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
		gadgets = { 91001, 91003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_91002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_91002(context, evt)
	if 91001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_91002(context, evt)
	ScriptLib.AddQuestProgress(context, "Q7325613")
	
	ScriptLib.SetGadgetStateByConfigId(context,91003, GadgetState.GearStart)
	
	return 0
end