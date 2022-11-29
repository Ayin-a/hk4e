-- 基础信息
local base_info = {
	group_id = 133104584
}

-- Trigger变量
local defs = {
	option_1 = 201,
	option_2 = 202,
	option_3 = 203,
	gadget_1 = 584002,
	water_1 = 584001,
	gadget_2 = 584009,
	water_2 = 584008,
	gadget_3 = 584010,
	water_3 = 584011,
	gadget_4 = 584013,
	water_4 = 584012,
	gadget_5 = 584015,
	water_5 = 584014,
	gadget_6 = 584016,
	water_6 = 584017
}

-- DEFS_MISCS
local play = {



	options = { 

		[0] = defs.option_1, --ore 

		[1] = defs.option_2, --mithril

		[2] = defs.option_3  --crystal

	},

	colors = {

		[0] = 0,   --origin

		[1] = 201, --red

		[2] = 203, --green

		[3] = 204, --yellow

		[4] = 901, --blue

		[5] = 902, --purple

		[6] = 903  --tealblue

	},

	curColorList = {

		[0] = "curColor01",

		[1] = "curColor02",

		[2] = "curColor03",

		[3] = "curColor04",

		[4] = "curColor05",

		[5] = "curColor06"

	}

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
	-- 1号池水
	{ config_id = 584001, gadget_id = 70950012, pos = { x = 104.301, y = 203.998, z = 723.649 }, rot = { x = 0.000, y = 8.833, z = 0.000 }, level = 19, persistent = true, area_id = 9 },
	-- 1号操作台
	{ config_id = 584002, gadget_id = 70360002, pos = { x = 109.435, y = 204.674, z = 718.279 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 9 },
	-- 2号池水
	{ config_id = 584008, gadget_id = 70950012, pos = { x = 87.502, y = 206.969, z = 737.050 }, rot = { x = 0.000, y = 8.833, z = 0.000 }, level = 19, persistent = true, area_id = 9 },
	-- 2号操作台
	{ config_id = 584009, gadget_id = 70360002, pos = { x = 91.132, y = 208.619, z = 736.371 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 9 },
	-- 3号操作台
	{ config_id = 584010, gadget_id = 70360002, pos = { x = 112.483, y = 210.500, z = 795.531 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 9 },
	-- 3号池水
	{ config_id = 584011, gadget_id = 70950012, pos = { x = 108.853, y = 208.850, z = 796.211 }, rot = { x = 0.000, y = 8.833, z = 0.000 }, level = 19, persistent = true, area_id = 9 },
	-- 4号池水
	{ config_id = 584012, gadget_id = 70950012, pos = { x = 76.547, y = 206.248, z = 698.779 }, rot = { x = 0.000, y = 8.833, z = 0.000 }, level = 19, persistent = true, area_id = 9 },
	-- 4号操作台
	{ config_id = 584013, gadget_id = 70360002, pos = { x = 80.176, y = 207.898, z = 698.100 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 9 },
	-- 5号池水
	{ config_id = 584014, gadget_id = 70950012, pos = { x = 85.846, y = 206.429, z = 762.397 }, rot = { x = 0.000, y = 8.833, z = 0.000 }, level = 19, persistent = true, area_id = 9 },
	-- 5号操作台
	{ config_id = 584015, gadget_id = 70360002, pos = { x = 89.476, y = 208.079, z = 761.718 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 9 },
	-- 6号操作台
	{ config_id = 584016, gadget_id = 70360002, pos = { x = 95.942, y = 210.770, z = 777.321 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 9 },
	-- 6号池水
	{ config_id = 584017, gadget_id = 70950012, pos = { x = 92.313, y = 209.120, z = 778.001 }, rot = { x = 0.000, y = 8.833, z = 0.000 }, level = 19, persistent = true, area_id = 9 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1584003, name = "QUEST_START_584003", event = EventType.EVENT_QUEST_START, source = "7100300", condition = "", action = "action_EVENT_QUEST_START_584003" },
	{ config_id = 1584004, name = "QUEST_FINISH_584004", event = EventType.EVENT_QUEST_FINISH, source = "7100320", condition = "", action = "" },
	{ config_id = 1584005, name = "GADGET_CREATE_584005", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_584005", action = "action_EVENT_GADGET_CREATE_584005", trigger_count = 0 },
	{ config_id = 1584006, name = "VARIABLE_CHANGE_584006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_584006", action = "action_EVENT_VARIABLE_CHANGE_584006", trigger_count = 0 },
	{ config_id = 1584007, name = "SELECT_OPTION_584007", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_584007", action = "action_EVENT_SELECT_OPTION_584007", trigger_count = 0 },
	{ config_id = 1584018, name = "VARIABLE_CHANGE_584018", event = EventType.EVENT_VARIABLE_CHANGE, source = "correct", condition = "condition_EVENT_VARIABLE_CHANGE_584018", action = "action_EVENT_VARIABLE_CHANGE_584018" }
}

-- 变量
variables = {
	{ config_id = 1, name = "questStart", value = 0, no_refresh = true },
	{ config_id = 2, name = "uniqueColorCount", value = 0, no_refresh = true },
	{ config_id = 3, name = "curColor01", value = 0, no_refresh = true },
	{ config_id = 4, name = "curColor02", value = 0, no_refresh = true },
	{ config_id = 5, name = "curColor03", value = 0, no_refresh = true },
	{ config_id = 6, name = "curColor04", value = 0, no_refresh = true },
	{ config_id = 7, name = "curColor05", value = 0, no_refresh = true },
	{ config_id = 8, name = "curColor06", value = 0, no_refresh = true },
	{ config_id = 9, name = "isFinished", value = 0, no_refresh = true },
	{ config_id = 10, name = "correct", value = 0, no_refresh = true }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 584001, 584008, 584011, 584012, 584014, 584017 },
		regions = { },
		triggers = { "QUEST_START_584003" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 584001, 584002, 584008, 584009, 584010, 584011, 584012, 584013, 584014, 584015, 584016, 584017 },
		regions = { },
		triggers = { "QUEST_START_584003", "QUEST_FINISH_584004", "GADGET_CREATE_584005", "VARIABLE_CHANGE_584006", "SELECT_OPTION_584007", "VARIABLE_CHANGE_584018" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = ,
		monsters = { },
		gadgets = { 584001, 584008, 584011, 584012, 584014, 584017 },
		regions = { },
		triggers = { "GADGET_CREATE_584005", "VARIABLE_CHANGE_584006", "SELECT_OPTION_584007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_START_584003(context, evt)
	-- 将本组内变量名为 "questStart" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "questStart", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_584005(context, evt)
	-- 判断变量"questStart"为1
	if ScriptLib.GetGroupVariableValue(context, "questStart") ~= 1 then
			return false
	end
	
	if 584002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_584005(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133104584, 584002, {201,202,203}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133104584, 584009, {201,202,203}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133104584, 584010, {201,202,203}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133104584, 584013, {201,202,203}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133104584, 584015, {201,202,203}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133104584, 584016, {201,202,203}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_584006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
		-- 判断变量"fef"为0
		if evt.source_name ~= "curColor01" and
			evt.source_name ~= "curColor02" and
			evt.source_name ~= "curColor03" and
			evt.source_name ~= "curColor04" and
			evt.source_name ~= "curColor05" and
			evt.source_name ~= "curColor06" then
				return false
		end
		
		return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_584006(context, evt)
				local s = play.colors[evt.param1]
				if evt.source_name == "curColor01" then
					ScriptLib.SetGroupGadgetStateByConfigId(context, 0, defs.water_1, s)
				elseif evt.source_name	== "curColor02" then
					ScriptLib.SetGroupGadgetStateByConfigId(context, 0, defs.water_2, s)
				elseif evt.source_name	== "curColor03" then
					ScriptLib.SetGroupGadgetStateByConfigId(context, 0, defs.water_3, s)
				elseif evt.source_name	== "curColor04" then
					ScriptLib.SetGroupGadgetStateByConfigId(context, 0, defs.water_4, s)
				elseif evt.source_name	== "curColor05" then
					ScriptLib.SetGroupGadgetStateByConfigId(context, 0, defs.water_5, s)
				elseif evt.source_name	== "curColor06" then
					ScriptLib.SetGroupGadgetStateByConfigId(context, 0, defs.water_6, s)	
				end
			
				ScriptLib.SetGroupVariableValue(context, "uniqueColorCount", 0)
				local colorIndex = 0
				local colorCompare = 0
				local temp_flag = 0
				for i=0,4 do
					temp_flag = 0
					colorIndex = ScriptLib.GetGroupVariableValue(context, play.curColorList[i])
					j = i+1
			
					for n=j,5 do
						colorCompare = ScriptLib.GetGroupVariableValue(context, play.curColorList[n])
						if colorIndex == colorCompare then
							temp_flag = 1
						end
					end 
					if temp_flag == 0 then
						ScriptLib.ChangeGroupVariableValue(context, "uniqueColorCount", 1)
					end
					if ScriptLib.GetGroupVariableValue(context, "uniqueColorCount") >= 5 then
						ScriptLib.SetGroupVariableValue(context, "correct", 1)
					end
				end
				return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_584007(context, evt)
			if evt.param1 ~= defs.gadget_1 and 
				evt.param1 ~= defs.gadget_2 and
				evt.param1 ~= defs.gadget_3 and
				evt.param1 ~= defs.gadget_4 and
				evt.param1 ~= defs.gadget_5 and
				evt.param1 ~= defs.gadget_6 then
				return false
			end
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_584007(context, evt)
	local colorName = ""
		
			if evt.param1 == defs.gadget_1 then
				colorName = "curColor01"
			elseif	evt.param1 == defs.gadget_2 then
				colorName = "curColor02"
			elseif	evt.param1 == defs.gadget_3 then
				colorName = "curColor03"
			elseif	evt.param1 == defs.gadget_4 then
				colorName = "curColor04"
			elseif	evt.param1 == defs.gadget_5 then
				colorName = "curColor05"
			elseif	evt.param1 == defs.gadget_6 then
				colorName = "curColor06"
			end
						
			for i=0,2 do
				if evt.param2 == play.options[i] then
					local t = 2^i
					local c = ScriptLib.GetGroupVariableValue(context, colorName)
					if c%(2*t) >= t then
						return 0
					end
					c = c + t
					if c > 6 then
						c = c - 7
					end
					ScriptLib.SetGroupVariableValue(context, colorName, c)
					return 0
				end
			end
			return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_584018(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"correct"为1
	if ScriptLib.GetGroupVariableValue(context, "correct") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_584018(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7100310_Finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end