-- 基础信息
local base_info = {
	group_id = 133307357
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 357006, monster_id = 28060401, pos = { x = -1752.138, y = 37.337, z = 5554.261 }, rot = { x = 0.000, y = 276.008, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 1, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 357001, gadget_id = 70330315, pos = { x = -1763.927, y = 37.522, z = 5549.207 }, rot = { x = 359.875, y = 13.908, z = 0.019 }, level = 32, state = GadgetState.GearAction2, persistent = true, area_id = 27 },
	{ config_id = 357002, gadget_id = 70330225, pos = { x = -1751.105, y = 38.207, z = 5554.967 }, rot = { x = 0.000, y = 15.259, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 357004, gadget_id = 70330430, pos = { x = -1750.385, y = 37.449, z = 5555.211 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 357007, gadget_id = 70330430, pos = { x = -1750.139, y = 37.532, z = 5551.468 }, rot = { x = 0.000, y = 82.778, z = 0.000 }, level = 32, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1357003, name = "GADGET_STATE_CHANGE_357003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_357003", action = "action_EVENT_GADGET_STATE_CHANGE_357003" },
	{ config_id = 1357005, name = "ANY_GADGET_DIE_357005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_357005", action = "action_EVENT_ANY_GADGET_DIE_357005" }
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
		gadgets = { 357001, 357004, 357007 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_357003", "ANY_GADGET_DIE_357005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 357006 },
		gadgets = { 357002 },
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
function condition_EVENT_GADGET_STATE_CHANGE_357003(context, evt)
	-- 检测config_id为357001的gadget是否从GadgetState.GearAction2变为GadgetState.Default
	if 357001 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearAction2 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_357003(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31001, 3, 70330315) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_357005(context, evt)
	if 357004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_357005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133307357, 2)
	
	return 0
end

require "V3_1/Engineer_Mark"