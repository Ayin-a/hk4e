-- 基础信息
local base_info = {
	group_id = 133307151
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
	{ config_id = 151001, gadget_id = 70330315, pos = { x = -1480.213, y = 18.915, z = 5578.355 }, rot = { x = 0.000, y = 15.527, z = 0.000 }, level = 32, state = GadgetState.GearAction2, persistent = true, area_id = 32 },
	{ config_id = 151002, gadget_id = 70330225, pos = { x = -1484.610, y = 19.358, z = 5600.204 }, rot = { x = 0.000, y = 15.259, z = 0.000 }, level = 32, persistent = true, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1151003, name = "GADGET_STATE_CHANGE_151003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_151003", action = "action_EVENT_GADGET_STATE_CHANGE_151003" }
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
		gadgets = { 151001, 151002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_151003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_151003(context, evt)
	-- 检测config_id为151001的gadget是否从GadgetState.GearAction2变为GadgetState.Default
	if 151001 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearAction2 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_151003(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31001, 3, 70330315) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

require "V3_1/Engineer_Mark"