-- 基础信息
local base_info = {
	group_id = 133223441
}

-- DEFS_MISCS
defs = {
group_id = 133223441, 
pointarray_id = 322300061, --使用的移动点阵ID
pillar_num = 6, --移动石柱的数量
suite_opts = 2, --操作台在的Suite
Graph = {       --定义符文石和移动点之间的位置关系
[1]={preNode= 0, nextNode= 0, outNode= 0, inNode= 2, selfSigil= 0},
[2]={preNode= 7, nextNode= 3, outNode= 1, inNode= 0, selfSigil= 3},
[3]={preNode= 2, nextNode= 4, outNode= 0, inNode= 0, selfSigil= 5},
[4]={preNode= 3, nextNode= 5, outNode= 0, inNode= 0, selfSigil= 1},
[5]={preNode= 4, nextNode= 6, outNode= 0, inNode= 0, selfSigil= 6},
[6]={preNode= 5, nextNode= 7, outNode= 0, inNode= 0, selfSigil= 2},
[7]={preNode= 6, nextNode= 2, outNode= 8, inNode= 0, selfSigil= 7},
[8]={preNode= 0, nextNode= 0, outNode= 0, inNode= 7, selfSigil= 0},
},
--每个桩的存储id
PillarInfo = {
[441005] = { name = "Pillar01", initPos = 1, finPos = 7},
[441003] = { name = "Pillar02", initPos = 4, finPos = 5},
[441002] = { name = "Pillar03", initPos = 3, finPos = 4},
[441016] = { name = "Pillar04", initPos = 5, finPos = 6},
[441001] = { name = "Pillar05", initPos = 8, finPos = 2},
[441004] = { name = "Pillar06", initPos = 2, finPos = 3},
        },
--每个操作台对应的位置
OperatorPos = {
[441006] = 1,
[441007] = 2,
[441008] = 3,
[441009] = 4,
[441010] = 5,
[441011] = 6,
[441012] = 7,
[441013] = 8,
        },
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
	{ config_id = 441001, gadget_id = 70380289, pos = { x = -5878.164, y = 201.888, z = -2519.443 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, is_use_point_array = true, area_id = 18 },
	{ config_id = 441002, gadget_id = 70380287, pos = { x = -5886.067, y = 201.612, z = -2502.675 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, is_use_point_array = true, area_id = 18 },
	{ config_id = 441003, gadget_id = 70380292, pos = { x = -5891.771, y = 201.627, z = -2507.066 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, is_use_point_array = true, area_id = 18 },
	{ config_id = 441004, gadget_id = 70380291, pos = { x = -5879.545, y = 201.628, z = -2505.289 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, is_use_point_array = true, area_id = 18 },
	{ config_id = 441005, gadget_id = 70380293, pos = { x = -5874.644, y = 202.077, z = -2507.183 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, is_use_point_array = true, area_id = 18 },
	{ config_id = 441006, gadget_id = 70360001, pos = { x = -5874.690, y = 202.260, z = -2507.321 }, rot = { x = 0.000, y = 305.246, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 441007, gadget_id = 70360001, pos = { x = -5879.797, y = 202.170, z = -2505.365 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 441008, gadget_id = 70360001, pos = { x = -5886.149, y = 201.947, z = -2502.723 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 441009, gadget_id = 70360001, pos = { x = -5891.663, y = 201.852, z = -2507.001 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 441010, gadget_id = 70360001, pos = { x = -5890.939, y = 201.861, z = -2513.874 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 441011, gadget_id = 70360001, pos = { x = -5884.635, y = 201.648, z = -2516.285 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 441012, gadget_id = 70360001, pos = { x = -5879.269, y = 201.650, z = -2512.109 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 441013, gadget_id = 70360001, pos = { x = -5878.099, y = 201.974, z = -2519.514 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 441015, gadget_id = 70211111, pos = { x = -5883.779, y = 201.551, z = -2509.675 }, rot = { x = 0.000, y = 267.482, z = 0.000 }, level = 26, chest_drop_id = 1050146, drop_count = 1, isOneoff = true, persistent = true, autopick = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
	{ config_id = 441016, gadget_id = 70380288, pos = { x = -5890.943, y = 201.698, z = -2513.991 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, is_use_point_array = true, area_id = 18 },
	{ config_id = 441017, gadget_id = 70380287, pos = { x = -5891.770, y = 201.640, z = -2507.082 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, is_use_point_array = true, area_id = 18 },
	{ config_id = 441018, gadget_id = 70380288, pos = { x = -5884.866, y = 201.642, z = -2516.337 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, is_use_point_array = true, area_id = 18 },
	{ config_id = 441019, gadget_id = 70380289, pos = { x = -5879.534, y = 201.638, z = -2505.299 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, is_use_point_array = true, area_id = 18 },
	{ config_id = 441020, gadget_id = 70380291, pos = { x = -5886.093, y = 201.613, z = -2502.517 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, is_use_point_array = true, area_id = 18 },
	{ config_id = 441021, gadget_id = 70380292, pos = { x = -5890.956, y = 201.659, z = -2513.974 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, is_use_point_array = true, area_id = 18 },
	{ config_id = 441022, gadget_id = 70380293, pos = { x = -5879.151, y = 201.592, z = -2512.314 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, is_use_point_array = true, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1441014, name = "VARIABLE_CHANGE_441014", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_441014", action = "action_EVENT_VARIABLE_CHANGE_441014" },
	{ config_id = 1441023, name = "GADGET_STATE_CHANGE_441023", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_441023", action = "action_EVENT_GADGET_STATE_CHANGE_441023" }
}

-- 变量
variables = {
	{ config_id = 1, name = "Finished", value = 0, no_refresh = true },
	{ config_id = 2, name = "isNeedNotify", value = 1, no_refresh = false }
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
		gadgets = { 441001, 441002, 441003, 441004, 441005, 441016 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_441014" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 441006, 441007, 441008, 441009, 441010, 441011, 441012, 441013 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 441015, 441017, 441018, 441019, 441020, 441021, 441022 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_441023" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_441014(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Finished"为1
	if ScriptLib.GetGroupVariableValue(context, "Finished") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_441014(context, evt)
	-- 创建id为441015的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 441015 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_441023(context, evt)
	if 441015 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_441023(context, evt)
	-- 将本组内变量名为 "Finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Finish", 1, 133223440) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "Finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Finish", 1, 133223443) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

require "V2_2/PillarMove"