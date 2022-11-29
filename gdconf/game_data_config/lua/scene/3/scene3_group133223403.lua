-- 基础信息
local base_info = {
	group_id = 133223403
}

-- DEFS_MISCS
defs = {
group_id = 133223403, 
pointarray_id = 322300053, --使用的移动点阵ID
pillar_num = 5, --移动石柱的数量
suite_opts = 2, --操作台在的Suite
Graph = {       --定义符文石和移动点之间的位置关系
[1]={preNode= 0, nextNode= 0, outNode= 0, inNode= 2, selfSigil= 0},
[2]={preNode= 7, nextNode= 3, outNode= 1, inNode= 0, selfSigil= 3},
[3]={preNode= 2, nextNode= 4, outNode= 0, inNode= 0, selfSigil= 1},
[4]={preNode= 3, nextNode= 6, outNode= 5, inNode= 0, selfSigil= 4},
[5]={preNode= 0, nextNode= 0, outNode= 0, inNode= 4, selfSigil= 0},
[6]={preNode= 4, nextNode= 7, outNode= 0, inNode= 0, selfSigil= 7},
[7]={preNode= 6, nextNode= 2, outNode= 8, inNode= 0, selfSigil= 6},
[8]={preNode= 0, nextNode= 0, outNode= 0, inNode= 7, selfSigil= 0},
},
--每个桩的存储id
PillarInfo = {
[403001] = { name = "Pillar01", initPos = 1, finPos = 2},
[403002] = { name = "Pillar02", initPos = 7, finPos = 3},
[403003] = { name = "Pillar03", initPos = 8, finPos = 7},
[403004] = { name = "Pillar04", initPos = 5, finPos = 4},
[403005] = { name = "Pillar05", initPos = 4, finPos = 6},
        },
--每个操作台对应的位置
OperatorPos = {
[403006] = 1,
[403007] = 2,
[403008] = 3,
[403009] = 4,
[403010] = 5,
[403011] = 6,
[403012] = 7,
[403013] = 8,
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
	{ config_id = 403001, gadget_id = 70380289, pos = { x = -6128.452, y = 200.220, z = -2595.432 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, is_use_point_array = true, area_id = 18 },
	{ config_id = 403002, gadget_id = 70380287, pos = { x = -6132.574, y = 200.668, z = -2583.455 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, is_use_point_array = true, area_id = 18 },
	{ config_id = 403003, gadget_id = 70380292, pos = { x = -6130.598, y = 200.547, z = -2577.147 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, is_use_point_array = true, area_id = 18 },
	{ config_id = 403004, gadget_id = 70380290, pos = { x = -6149.030, y = 200.124, z = -2590.147 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, is_use_point_array = true, area_id = 18 },
	{ config_id = 403005, gadget_id = 70380293, pos = { x = -6144.176, y = 200.290, z = -2585.483 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, is_use_point_array = true, area_id = 18 },
	{ config_id = 403006, gadget_id = 70360001, pos = { x = -6128.367, y = 200.270, z = -2595.485 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 403007, gadget_id = 70360001, pos = { x = -6133.873, y = 200.412, z = -2590.853 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 403008, gadget_id = 70360001, pos = { x = -6140.720, y = 200.746, z = -2591.848 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 403009, gadget_id = 70360001, pos = { x = -6144.173, y = 200.445, z = -2585.513 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 403010, gadget_id = 70360001, pos = { x = -6149.010, y = 200.162, z = -2590.138 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 403011, gadget_id = 70360001, pos = { x = -6138.764, y = 200.937, z = -2580.283 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 403012, gadget_id = 70360001, pos = { x = -6132.601, y = 200.676, z = -2583.430 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 403013, gadget_id = 70360001, pos = { x = -6131.038, y = 200.608, z = -2577.406 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 403016, gadget_id = 70380287, pos = { x = -6140.930, y = 200.295, z = -2591.834 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, is_use_point_array = true, area_id = 18 },
	{ config_id = 403017, gadget_id = 70380289, pos = { x = -6133.767, y = 200.425, z = -2590.826 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, is_use_point_array = true, area_id = 18 },
	{ config_id = 403018, gadget_id = 70380290, pos = { x = -6144.191, y = 200.290, z = -2585.451 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, is_use_point_array = true, area_id = 18 },
	{ config_id = 403019, gadget_id = 70380292, pos = { x = -6132.584, y = 200.638, z = -2583.459 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, is_use_point_array = true, area_id = 18 },
	{ config_id = 403020, gadget_id = 70380293, pos = { x = -6138.752, y = 200.848, z = -2580.447 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, is_use_point_array = true, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1403014, name = "VARIABLE_CHANGE_403014", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_403014", action = "action_EVENT_VARIABLE_CHANGE_403014" },
	-- 任务设置启动
	{ config_id = 1403015, name = "QUEST_START_403015", event = EventType.EVENT_QUEST_START, source = "7216614", condition = "condition_EVENT_QUEST_START_403015", action = "action_EVENT_QUEST_START_403015" }
}

-- 变量
variables = {
	{ config_id = 1, name = "Finished", value = 0, no_refresh = true },
	{ config_id = 2, name = "isNeedNotify", value = 1, no_refresh = false },
	{ config_id = 3, name = "isQuestNotify", value = 0, no_refresh = true }
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
		gadgets = { 403001, 403002, 403003, 403004, 403005 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_403014", "QUEST_START_403015" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 403006, 403007, 403008, 403009, 403010, 403011, 403012, 403013 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 403016, 403017, 403018, 403019, 403020 },
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
function condition_EVENT_VARIABLE_CHANGE_403014(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Finished"为1
	if ScriptLib.GetGroupVariableValue(context, "Finished") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_403014(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "D2_AreaB_Puzzle_Finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_403015(context, evt)
	-- 判断变量"isQuestNotify"为0
	if ScriptLib.GetGroupVariableValue(context, "isQuestNotify") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_403015(context, evt)
	-- 将本组内变量名为 "isQuestNotify" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isQuestNotify", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "Decal_Start" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Decal_Start", 1, 133223372) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

require "V2_2/PillarMove"