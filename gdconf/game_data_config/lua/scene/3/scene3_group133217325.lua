-- 基础信息
local base_info = {
	group_id = 133217325
}

-- Trigger变量
local defs = {
	group_ID = 133217325,
	gadget_1 = 325001,
	rotation_1 = 0,
	gadget_2 = 325002,
	rotation_2 = 90,
	gadget_3 = 325003,
	rotation_3 = 180,
	gadget_4 = 0,
	rotation_4 = 0,
	gadget_5 = 0,
	rotation_5 = 0,
	gadget_connect1 = {},
	gadget_connect2 = {},
	gadget_connect3 = {},
	gadget_connect4 = {},
	gadget_connect5 = {}
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
	{ config_id = 325001, gadget_id = 70330081, pos = { x = -4364.987, y = 204.593, z = -3967.544 }, rot = { x = 0.000, y = 93.141, z = 0.000 }, level = 2, is_use_point_array = true, area_id = 14 },
	{ config_id = 325002, gadget_id = 70330083, pos = { x = -4364.895, y = 204.556, z = -3965.033 }, rot = { x = 7.353, y = 92.885, z = 356.019 }, level = 2, is_use_point_array = true, area_id = 14 },
	{ config_id = 325003, gadget_id = 70330081, pos = { x = -4364.660, y = 204.579, z = -3962.381 }, rot = { x = 0.000, y = 93.141, z = 0.000 }, level = 2, is_use_point_array = true, area_id = 14 },
	{ config_id = 325004, gadget_id = 70330084, pos = { x = -4364.972, y = 204.398, z = -3967.534 }, rot = { x = 7.182, y = 153.776, z = 6.268 }, level = 2, area_id = 14 },
	{ config_id = 325006, gadget_id = 70211101, pos = { x = -4362.243, y = 204.062, z = -3965.230 }, rot = { x = 11.283, y = 93.235, z = 356.488 }, level = 26, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 },
	{ config_id = 325008, gadget_id = 70330084, pos = { x = -4364.855, y = 204.582, z = -3965.004 }, rot = { x = 351.962, y = 332.475, z = 354.124 }, level = 30, area_id = 14 },
	{ config_id = 325009, gadget_id = 70330084, pos = { x = -4364.438, y = 204.679, z = -3962.494 }, rot = { x = 5.805, y = 141.280, z = 5.446 }, level = 30, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1325007, name = "VARIABLE_CHANGE_325007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_325007", action = "" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 325010, gadget_id = 70330081, pos = { x = -4364.987, y = 205.925, z = -3967.544 }, rot = { x = 0.000, y = 93.141, z = 0.000 }, level = 30, is_use_point_array = true, area_id = 14 },
		{ config_id = 325011, gadget_id = 70330081, pos = { x = -4364.704, y = 205.925, z = -3962.395 }, rot = { x = 0.000, y = 93.141, z = 0.000 }, level = 30, is_use_point_array = true, area_id = 14 }
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
		gadgets = { 325001, 325002, 325003, 325004, 325008, 325009 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 325006 },
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
function condition_EVENT_VARIABLE_CHANGE_325007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

require "BlackBoxPlay/LightSquare"