-- 基础信息
local base_info = {
	group_id = 133210030
}

-- Trigger变量
local defs = {
	loop_mode = 1,
	group_ID = 133210030,
	gadget_1 = 30001,
	gadget_2 = 30002,
	gadget_3 = 30003,
	gadget_4 = 30004,
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
	[30001] = { config_id = 30001, gadget_id = 70330073, pos = { x = -3766.743, y = 202.484, z = -1033.391 }, rot = { x = 0.240, y = 129.286, z = 354.478 }, level = 30, area_id = 17 },
	[30002] = { config_id = 30002, gadget_id = 70330073, pos = { x = -3769.610, y = 200.941, z = -1024.013 }, rot = { x = 352.385, y = 216.943, z = 348.014 }, level = 30, state = GadgetState.Action02, area_id = 17 },
	[30003] = { config_id = 30003, gadget_id = 70330073, pos = { x = -3781.566, y = 200.895, z = -1026.616 }, rot = { x = 355.338, y = 102.149, z = 13.964 }, level = 30, state = GadgetState.Action03, area_id = 17 },
	[30004] = { config_id = 30004, gadget_id = 70330073, pos = { x = -3780.595, y = 202.365, z = -1033.756 }, rot = { x = 359.969, y = 60.459, z = 5.423 }, level = 30, area_id = 17 },
	[30006] = { config_id = 30006, gadget_id = 70211101, pos = { x = -3775.409, y = 202.185, z = -1030.516 }, rot = { x = 11.465, y = 0.203, z = 2.018 }, level = 26, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1030007, name = "VARIABLE_CHANGE_30007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_30007", action = "" }
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
		gadgets = { 30001, 30002, 30003, 30004 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 30006 },
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
function condition_EVENT_VARIABLE_CHANGE_30007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

require "BlackBoxPlay/LightResonanceStone"