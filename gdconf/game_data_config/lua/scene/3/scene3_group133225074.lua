-- 基础信息
local base_info = {
	group_id = 133225074
}

-- DEFS_MISCS
defs = {
group_id = 133225074,--使用的移动点阵ID
pointarray_id = 322500003,
pillar_num = 5,--定义的给操作台的操作数
suite_opts = 2,
        
--定义符文石和移动点之间的位置关系
Graph = {
[1] = {preNode = 0, nextNode = 0, outNode = 0, inNode = 2, selfSigil= 0},
[2] = {preNode = 3, nextNode = 6, outNode = 1, inNode = 0, selfSigil= 1},
[3] = {preNode = 4, nextNode = 2, outNode = 5, inNode = 0, selfSigil= 7},
[4] = {preNode = 0, nextNode = 3, outNode = 0, inNode = 0, selfSigil= 4},
[5] = {preNode = 0, nextNode = 0, outNode = 0, inNode = 3, selfSigil= 0},
[6] = {preNode = 2, nextNode = 7, outNode = 8, inNode = 0, selfSigil= 6},
[7] = {preNode = 6, nextNode = 0, outNode = 0, inNode = 0, selfSigil= 3},
[8] = {preNode = 0, nextNode = 0, outNode = 9, inNode = 6, selfSigil= 0},
[9] = {preNode = 0, nextNode = 0, outNode = 0, inNode = 8, selfSigil= 0},
},

--每个操作台对应的位置
OperatorPos = {
[74006] = 1,
[74007] = 2,
[74008] = 3,
[74009] = 4,
[74010] = 5,
[74011] = 6,
[74012] = 7,
[74013] = 8,
[74016] = 9,},
--每个桩的存储id
PillarInfo = {
[74001] = { name = "Pillar01", initPos = 9, finPos = 4},
[74002] = { name = "Pillar02", initPos = 2, finPos = 6},
[74003] = { name = "Pillar03", initPos = 5, finPos = 7},
[74004] = { name = "Pillar04", initPos = 3, finPos = 2},
[74005] = { name = "Pillar05", initPos = 6, finPos = 3},},
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
	{ config_id = 74001, gadget_id = 70380290, pos = { x = -6483.095, y = 200.267, z = -2412.045 }, rot = { x = 0.000, y = 77.481, z = 0.000 }, level = 33, is_use_point_array = true, area_id = 18 },
	{ config_id = 74002, gadget_id = 70380292, pos = { x = -6462.153, y = 200.484, z = -2410.512 }, rot = { x = 0.000, y = 61.033, z = 0.000 }, level = 33, is_use_point_array = true, area_id = 18 },
	{ config_id = 74003, gadget_id = 70380289, pos = { x = -6461.107, y = 200.407, z = -2417.633 }, rot = { x = 0.000, y = 42.078, z = 0.000 }, level = 33, is_use_point_array = true, area_id = 18 },
	{ config_id = 74004, gadget_id = 70380287, pos = { x = -6457.182, y = 200.226, z = -2415.785 }, rot = { x = 0.000, y = 93.963, z = 0.000 }, level = 33, is_use_point_array = true, area_id = 18 },
	{ config_id = 74005, gadget_id = 70380293, pos = { x = -6469.631, y = 200.659, z = -2410.527 }, rot = { x = 0.000, y = 121.190, z = 0.000 }, level = 33, is_use_point_array = true, area_id = 18 },
	{ config_id = 74006, gadget_id = 70360001, pos = { x = -6460.278, y = 200.178, z = -2403.873 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 74007, gadget_id = 70360001, pos = { x = -6462.212, y = 200.559, z = -2410.373 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 74008, gadget_id = 70360001, pos = { x = -6457.223, y = 200.358, z = -2415.812 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 74009, gadget_id = 70360001, pos = { x = -6454.954, y = 199.908, z = -2422.386 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 74010, gadget_id = 70360001, pos = { x = -6461.215, y = 200.424, z = -2417.682 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 74011, gadget_id = 70360001, pos = { x = -6469.576, y = 200.724, z = -2410.568 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 74012, gadget_id = 70360001, pos = { x = -6470.084, y = 200.901, z = -2417.040 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 74013, gadget_id = 70360001, pos = { x = -6476.482, y = 200.580, z = -2412.653 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 74015, gadget_id = 70211111, pos = { x = -6463.888, y = 200.646, z = -2413.448 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1050146, drop_count = 1, isOneoff = true, persistent = true, autopick = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
	{ config_id = 74016, gadget_id = 70360001, pos = { x = -6483.125, y = 200.282, z = -2412.026 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 74017, gadget_id = 70380287, pos = { x = -6462.165, y = 200.510, z = -2410.511 }, rot = { x = 0.000, y = 62.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, is_use_point_array = true, area_id = 18 },
	{ config_id = 74018, gadget_id = 70380289, pos = { x = -6470.156, y = 200.828, z = -2417.270 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, is_use_point_array = true, area_id = 18 },
	{ config_id = 74019, gadget_id = 70380290, pos = { x = -6455.103, y = 200.074, z = -2422.144 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, is_use_point_array = true, area_id = 18 },
	{ config_id = 74020, gadget_id = 70380292, pos = { x = -6469.656, y = 200.671, z = -2410.522 }, rot = { x = 0.000, y = 117.300, z = 0.000 }, level = 33, state = GadgetState.GearStart, is_use_point_array = true, area_id = 18 },
	{ config_id = 74021, gadget_id = 70380293, pos = { x = -6457.180, y = 200.238, z = -2415.825 }, rot = { x = 0.000, y = 103.100, z = 0.000 }, level = 33, state = GadgetState.GearStart, is_use_point_array = true, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1074014, name = "VARIABLE_CHANGE_74014", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_74014", action = "action_EVENT_VARIABLE_CHANGE_74014" },
	{ config_id = 1074022, name = "GADGET_STATE_CHANGE_74022", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_74022", action = "action_EVENT_GADGET_STATE_CHANGE_74022" }
}

-- 变量
variables = {
	{ config_id = 1, name = "Finished", value = 0, no_refresh = true },
	{ config_id = 2, name = "isNeedNotify", value = 1, no_refresh = false }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1074023, name = "GROUP_LOAD_74023", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_74023", action = "", trigger_count = 0 }
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
	end_suite = 3,
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
		gadgets = { 74001, 74002, 74003, 74004, 74005 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_74014" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 74006, 74007, 74008, 74009, 74010, 74011, 74012, 74013, 74016 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 74015, 74017, 74018, 74019, 74020, 74021 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_74022" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_74014(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Finished"为1
	if ScriptLib.GetGroupVariableValue(context, "Finished") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_74014(context, evt)
	-- 创建id为74015的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 74015 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_74022(context, evt)
	if 74015 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_74022(context, evt)
	-- 将本组内变量名为 "Finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Finish", 1, 133225075) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "Finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Finish", 1, 133225177) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

require "V2_2/PillarMove"