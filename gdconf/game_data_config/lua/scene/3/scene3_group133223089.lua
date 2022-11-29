-- 基础信息
local base_info = {
	group_id = 133223089
}

-- Trigger变量
local defs = {
	group_ID = 133223089,
	gadget_1 = 89001,
	rotation_1 = 0,
	gadget_2 = 89002,
	rotation_2 = 90,
	gadget_3 = 89003,
	rotation_3 = 180,
	gadget_4 = 89008,
	rotation_4 = 0,
	gadget_5 = 89009,
	rotation_5 = 0,
	gadget_connect1 = {},
	gadget_connect2 = {89003},
	gadget_connect3 = {},
	gadget_connect4 = {},
	gadget_connect5 = {89001}
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
	{ config_id = 89001, gadget_id = 70330081, pos = { x = -5788.893, y = 209.707, z = -2563.810 }, rot = { x = 0.000, y = 221.133, z = 0.000 }, level = 2, is_use_point_array = true, area_id = 18 },
	{ config_id = 89002, gadget_id = 70330081, pos = { x = -5788.893, y = 211.027, z = -2563.810 }, rot = { x = 0.000, y = 221.133, z = 0.000 }, level = 2, is_use_point_array = true, area_id = 18 },
	{ config_id = 89003, gadget_id = 70330081, pos = { x = -5784.617, y = 209.679, z = -2567.869 }, rot = { x = 0.000, y = 226.348, z = 0.000 }, level = 2, is_use_point_array = true, area_id = 18 },
	{ config_id = 89004, gadget_id = 70330084, pos = { x = -5788.893, y = 209.749, z = -2563.810 }, rot = { x = 0.000, y = 221.133, z = 0.000 }, level = 2, area_id = 18 },
	{ config_id = 89005, gadget_id = 70330085, pos = { x = -5788.893, y = 212.815, z = -2563.810 }, rot = { x = 0.000, y = 221.133, z = 0.000 }, level = 2, area_id = 18 },
	{ config_id = 89006, gadget_id = 70330084, pos = { x = -5784.617, y = 209.679, z = -2567.869 }, rot = { x = 0.000, y = 223.330, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 89008, gadget_id = 70330083, pos = { x = -5790.161, y = 209.927, z = -2569.777 }, rot = { x = 0.000, y = 220.154, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 89009, gadget_id = 70330081, pos = { x = -5784.617, y = 211.004, z = -2567.869 }, rot = { x = 0.000, y = 226.348, z = 0.000 }, level = 33, is_use_point_array = true, area_id = 18 },
	{ config_id = 89010, gadget_id = 70330085, pos = { x = -5784.612, y = 212.761, z = -2567.847 }, rot = { x = 0.000, y = 225.526, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 89011, gadget_id = 70211101, pos = { x = -5789.121, y = 210.080, z = -2572.531 }, rot = { x = 0.959, y = 327.171, z = 352.885 }, level = 26, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1089007, name = "VARIABLE_CHANGE_89007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_89007", action = "action_EVENT_VARIABLE_CHANGE_89007" }
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
		gadgets = { 89001, 89002, 89003, 89004, 89005, 89006, 89008, 89009, 89010 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_89007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 89011 },
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
function condition_EVENT_VARIABLE_CHANGE_89007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_89007(context, evt)
	-- 针对当前group内变量名为 "puzzle_progress" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "puzzle_progress", 1, 133223096) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

require "BlackBoxPlay/LightSquare"