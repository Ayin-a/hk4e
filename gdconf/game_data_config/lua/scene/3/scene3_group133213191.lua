-- 基础信息
local base_info = {
	group_id = 133213191
}

-- Trigger变量
local defs = {
	loop_mode = 0,
	group_ID = 133213191,
	gadget_1 = 191001,
	gadget_2 = 191002,
	gadget_3 = 191003,
	gadget_4 = 0,
	gadget_5 = 0
}

-- DEFS_MISCS


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
	[191001] = { config_id = 191001, gadget_id = 70330073, pos = { x = -3377.517, y = 225.077, z = -3700.741 }, rot = { x = 346.843, y = 332.016, z = 5.981 }, level = 30, state = GadgetState.Action01, area_id = 12 },
	[191002] = { config_id = 191002, gadget_id = 70330074, pos = { x = -3371.555, y = 224.442, z = -3699.190 }, rot = { x = 8.591, y = 190.274, z = 8.942 }, level = 30, state = GadgetState.Action02, area_id = 12 },
	[191003] = { config_id = 191003, gadget_id = 70330073, pos = { x = -3365.908, y = 222.998, z = -3702.660 }, rot = { x = 6.644, y = 219.089, z = 14.770 }, level = 30, state = GadgetState.Action03, area_id = 12 },
	[191006] = { config_id = 191006, gadget_id = 70211111, pos = { x = -3372.901, y = 224.090, z = -3705.400 }, rot = { x = 6.652, y = 191.250, z = 4.003 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 12 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1191004, name = "VARIABLE_CHANGE_191004", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_191004", action = "action_EVENT_VARIABLE_CHANGE_191004" }
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
		gadgets = { 191001, 191002, 191003 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_191004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 191006 },
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
function condition_EVENT_VARIABLE_CHANGE_191004(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_191004(context, evt)
	-- 将本组内变量名为 "finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "finish", 1, 133213495) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

require "BlackBoxPlay/LightResonanceStone"