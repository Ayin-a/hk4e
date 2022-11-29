-- 基础信息
local base_info = {
	group_id = 133220403
}

-- Trigger变量
local defs = {
	group_ID = 133220403,
	gadget_1 = 403001,
	rotation_1 = 0,
	gadget_2 = 403002,
	rotation_2 = 0,
	gadget_3 = 403003,
	rotation_3 = 180,
	gadget_4 = 403008,
	rotation_4 = 0,
	gadget_5 = 403009,
	rotation_5 = 180,
	gadget_connect1 = {},
	gadget_connect2 = {403009},
	gadget_connect3 = {403002},
	gadget_connect4 = {},
	gadget_connect5 = {403003}
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
	{ config_id = 403001, gadget_id = 70330083, pos = { x = -2336.898, y = 225.450, z = -4236.239 }, rot = { x = 0.000, y = 133.893, z = 0.000 }, level = 2, is_use_point_array = true, area_id = 11 },
	{ config_id = 403002, gadget_id = 70330081, pos = { x = -2335.619, y = 226.834, z = -4234.911 }, rot = { x = 0.000, y = 133.893, z = 0.000 }, level = 2, is_use_point_array = true, area_id = 11 },
	{ config_id = 403003, gadget_id = 70330081, pos = { x = -2336.898, y = 227.133, z = -4236.239 }, rot = { x = 0.000, y = 133.893, z = 0.000 }, level = 2, is_use_point_array = true, area_id = 11 },
	{ config_id = 403004, gadget_id = 70330084, pos = { x = -2336.898, y = 225.450, z = -4236.239 }, rot = { x = 0.000, y = 133.893, z = 0.000 }, level = 2, area_id = 11 },
	{ config_id = 403005, gadget_id = 70330085, pos = { x = -2335.618, y = 228.736, z = -4234.911 }, rot = { x = 0.000, y = 133.893, z = 359.479 }, level = 2, area_id = 11 },
	{ config_id = 403006, gadget_id = 70211111, pos = { x = -2334.129, y = 225.249, z = -4236.302 }, rot = { x = 0.000, y = 131.188, z = 0.000 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
	{ config_id = 403008, gadget_id = 70330083, pos = { x = -2334.229, y = 225.450, z = -4233.465 }, rot = { x = 0.000, y = 133.893, z = 0.000 }, level = 27, is_use_point_array = true, area_id = 11 },
	{ config_id = 403009, gadget_id = 70330081, pos = { x = -2334.229, y = 227.133, z = -4233.465 }, rot = { x = 0.000, y = 133.893, z = 0.000 }, level = 27, is_use_point_array = true, area_id = 11 },
	{ config_id = 403010, gadget_id = 70330085, pos = { x = -2336.911, y = 227.366, z = -4236.251 }, rot = { x = 0.000, y = 133.893, z = 359.479 }, level = 27, area_id = 11 },
	{ config_id = 403011, gadget_id = 70330085, pos = { x = -2334.240, y = 227.347, z = -4233.478 }, rot = { x = 0.000, y = 133.893, z = 359.479 }, level = 27, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1403007, name = "VARIABLE_CHANGE_403007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_403007", action = "action_EVENT_VARIABLE_CHANGE_403007" }
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
		gadgets = { 403001, 403002, 403003, 403004, 403005, 403008, 403009, 403010, 403011 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_403007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 403006 },
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
function condition_EVENT_VARIABLE_CHANGE_403007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_403007(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220403, 2)
	
	-- 改变指定group组133220112中， configid为112003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133220112, 112003, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

require "BlackBoxPlay/LightSquare"