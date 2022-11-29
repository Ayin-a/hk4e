-- 基础信息
local base_info = {
	group_id = 133222007
}

-- Trigger变量
local defs = {
	group_ID = 133222007,
	gadget_1 = 7001,
	rotation_1 = 0,
	gadget_2 = 7002,
	rotation_2 = 180,
	gadget_3 = 7003,
	rotation_3 = 0,
	gadget_4 = 7012,
	rotation_4 = 90,
	gadget_5 = 0,
	rotation_5 = 0,
	gadget_connect1 = {7003},
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
	{ config_id = 7001, gadget_id = 70330081, pos = { x = -4260.437, y = 217.690, z = -4133.354 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, is_use_point_array = true, area_id = 14 },
	{ config_id = 7002, gadget_id = 70330081, pos = { x = -4247.548, y = 216.755, z = -4136.449 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, is_use_point_array = true, area_id = 14 },
	{ config_id = 7003, gadget_id = 70330081, pos = { x = -4266.564, y = 220.348, z = -4146.892 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, is_use_point_array = true, area_id = 14 },
	{ config_id = 7004, gadget_id = 70330084, pos = { x = -4260.437, y = 217.690, z = -4133.354 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 14 },
	{ config_id = 7005, gadget_id = 70330085, pos = { x = -4266.564, y = 222.257, z = -4146.892 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 14 },
	{ config_id = 7006, gadget_id = 70211101, pos = { x = -4272.027, y = 220.662, z = -4145.535 }, rot = { x = 10.761, y = 66.331, z = 0.317 }, level = 26, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 },
	{ config_id = 7008, gadget_id = 70330084, pos = { x = -4247.604, y = 216.501, z = -4136.439 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 7009, gadget_id = 70330084, pos = { x = -4266.535, y = 220.089, z = -4146.916 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 7010, gadget_id = 70330085, pos = { x = -4247.566, y = 218.663, z = -4136.452 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 7011, gadget_id = 70330085, pos = { x = -4260.444, y = 219.577, z = -4133.346 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 7012, gadget_id = 70330083, pos = { x = -4263.533, y = 219.350, z = -4134.945 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, is_use_point_array = true, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1007007, name = "VARIABLE_CHANGE_7007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_7007", action = "action_EVENT_VARIABLE_CHANGE_7007" }
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
		gadgets = { 7001, 7002, 7003, 7004, 7005, 7008, 7009, 7010, 7011, 7012 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_7007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 7006 },
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
function condition_EVENT_VARIABLE_CHANGE_7007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_7007(context, evt)
	-- 改变指定group组133222237中， configid为237001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133222237, 237001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

require "BlackBoxPlay/LightSquare"