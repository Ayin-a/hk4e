-- 基础信息
local base_info = {
	group_id = 133210336
}

-- Trigger变量
local defs = {
	group_ID = 133210336,
	gadget_1 = 336001,
	rotation_1 = 0,
	gadget_2 = 336002,
	rotation_2 = 90,
	gadget_3 = 336003,
	rotation_3 = 180,
	gadget_4 = 336008,
	rotation_4 = 0,
	gadget_5 = 336009,
	rotation_5 = 270,
	gadget_connect1 = {336009},
	gadget_connect2 = {336003},
	gadget_connect3 = {336001},
	gadget_connect4 = {},
	gadget_connect5 = {336001,336002,336003}
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
	{ config_id = 336001, gadget_id = 70330081, pos = { x = -3664.224, y = 174.468, z = -946.312 }, rot = { x = 0.000, y = 320.296, z = 0.000 }, level = 2, is_use_point_array = true, area_id = 17 },
	{ config_id = 336002, gadget_id = 70330081, pos = { x = -3671.340, y = 173.757, z = -949.171 }, rot = { x = 0.000, y = 320.296, z = 0.000 }, level = 2, is_use_point_array = true, area_id = 17 },
	{ config_id = 336003, gadget_id = 70330081, pos = { x = -3677.846, y = 172.550, z = -952.632 }, rot = { x = 0.000, y = 320.296, z = 0.000 }, level = 2, is_use_point_array = true, area_id = 17 },
	{ config_id = 336004, gadget_id = 70330084, pos = { x = -3664.224, y = 174.468, z = -946.312 }, rot = { x = 0.000, y = 320.296, z = 0.000 }, level = 2, area_id = 17 },
	{ config_id = 336005, gadget_id = 70330085, pos = { x = -3664.224, y = 176.296, z = -946.312 }, rot = { x = 0.000, y = 320.296, z = 0.000 }, level = 2, area_id = 17 },
	{ config_id = 336006, gadget_id = 70211111, pos = { x = -3662.235, y = 169.845, z = -951.353 }, rot = { x = 4.345, y = 224.854, z = 345.422 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 17 },
	{ config_id = 336008, gadget_id = 70330083, pos = { x = -3671.616, y = 165.686, z = -960.225 }, rot = { x = 359.545, y = 320.296, z = 358.051 }, level = 30, is_use_point_array = true, area_id = 17 },
	{ config_id = 336009, gadget_id = 70330081, pos = { x = -3682.658, y = 172.084, z = -959.646 }, rot = { x = 0.000, y = 320.296, z = 0.000 }, level = 30, is_use_point_array = true, area_id = 17 },
	{ config_id = 336010, gadget_id = 70330084, pos = { x = -3671.340, y = 173.425, z = -949.171 }, rot = { x = 0.000, y = 140.296, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 336011, gadget_id = 70330085, pos = { x = -3671.340, y = 175.604, z = -949.171 }, rot = { x = 0.000, y = 320.296, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 336012, gadget_id = 70330084, pos = { x = -3677.846, y = 172.219, z = -952.632 }, rot = { x = 0.000, y = 320.296, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 336013, gadget_id = 70330085, pos = { x = -3677.846, y = 174.378, z = -952.632 }, rot = { x = 0.000, y = 320.296, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 336014, gadget_id = 70330084, pos = { x = -3682.658, y = 172.084, z = -959.646 }, rot = { x = 0.000, y = 320.296, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 336015, gadget_id = 70330085, pos = { x = -3682.658, y = 173.912, z = -959.646 }, rot = { x = 0.000, y = 320.296, z = 0.000 }, level = 30, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1336007, name = "VARIABLE_CHANGE_336007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_336007", action = "" }
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
		gadgets = { 336001, 336002, 336003, 336004, 336005, 336008, 336009, 336010, 336011, 336012, 336013, 336014, 336015 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 336006 },
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
function condition_EVENT_VARIABLE_CHANGE_336007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

require "BlackBoxPlay/LightSquare"