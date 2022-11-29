-- 基础信息
local base_info = {
	group_id = 199001018
}

-- DEFS_MISCS
local GivingID = {10000113,10000114,10000115}
    local MaterialID = {101935,101936,101937}
    local ConchConfigID = {18001,18002,18003}

local CreateList = {
        {[101935]={{configid = 18004,point = 18007},{configid = 18005,point = 18006}}, [101936]={{configid = 18012,point = 18014},{configid = 18013,point = 18015}}, [101937]={{configid = 18020,point = 18026},{configid = 18021,point = 18027},{configid = 18022,point = 18028}}},
        {[101935]={{configid = 18004,point = 18008},{configid = 18005,point = 18009}}, [101936]={{configid = 18012,point = 18016},{configid = 18013,point = 18017}}, [101937]={{configid = 18020,point = 18029},{configid = 18021,point = 18030},{configid = 18022,point = 18031}}},
        {[101935]={{configid = 18004,point = 18010},{configid = 18005,point = 18011}}, [101936]={{configid = 18012,point = 18018},{configid = 18013,point = 18019}}, [101937]={{configid = 18020,point = 18023},{configid = 18021,point = 18024},{configid = 18022,point = 18025}}},
    }

local NoticeReminder= {
[32]= 1111240,
[23]= 1111241,
[31]= 1111242,
[12]= 1111294,
[13]= 1111294,
[21]= 1111294,

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
	{ config_id = 18001, gadget_id = 70310344, pos = { x = 132.701, y = 121.370, z = -167.328 }, rot = { x = 0.000, y = 124.403, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 18002, gadget_id = 70310345, pos = { x = 133.753, y = 121.170, z = -169.005 }, rot = { x = 0.000, y = 187.790, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 18003, gadget_id = 70310346, pos = { x = 129.162, y = 121.608, z = -170.012 }, rot = { x = 0.000, y = 11.555, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 18004, gadget_id = 70500037, pos = { x = 142.080, y = 119.980, z = -164.998 }, rot = { x = 0.000, y = 92.617, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 18005, gadget_id = 70500044, pos = { x = 142.270, y = 119.992, z = -163.644 }, rot = { x = 0.000, y = 103.024, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 18012, gadget_id = 70500039, pos = { x = 143.518, y = 119.937, z = -173.940 }, rot = { x = 0.000, y = 304.873, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 18013, gadget_id = 70500045, pos = { x = 142.860, y = 119.931, z = -172.621 }, rot = { x = 0.000, y = 142.698, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 18020, gadget_id = 70500041, pos = { x = 118.801, y = 120.444, z = -172.910 }, rot = { x = 0.000, y = 341.373, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 18021, gadget_id = 70500051, pos = { x = 120.644, y = 120.382, z = -172.346 }, rot = { x = 0.000, y = 339.893, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 18022, gadget_id = 70500047, pos = { x = 120.184, y = 120.203, z = -162.498 }, rot = { x = 0.000, y = 341.695, z = 0.000 }, level = 1, area_id = 401 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1018032, name = "VARIABLE_CHANGE_18032", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_18032", action = "action_EVENT_VARIABLE_CHANGE_18032" },
	{ config_id = 1018034, name = "GROUP_LOAD_18034", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_18034", action = "action_EVENT_GROUP_LOAD_18034", trigger_count = 0 }
}

-- 点位
points = {
	[18006] = { config_id = 18006, pos = { x = 142.270, y = 119.992, z = -163.644 }, rot = { x = 0.000, y = 103.024, z = 0.000 }, area_id = 401 },
	[18007] = { config_id = 18007, pos = { x = 142.080, y = 119.980, z = -164.998 }, rot = { x = 0.000, y = 92.617, z = 0.000 }, area_id = 401 },
	[18008] = { config_id = 18008, pos = { x = 133.379, y = 120.010, z = -178.723 }, rot = { x = 0.000, y = 156.809, z = 0.000 }, area_id = 401 },
	[18009] = { config_id = 18009, pos = { x = 134.848, y = 120.091, z = -179.180 }, rot = { x = 0.000, y = 203.756, z = 0.000 }, area_id = 401 },
	[18010] = { config_id = 18010, pos = { x = 127.903, y = 120.158, z = -158.824 }, rot = { x = 0.000, y = 315.347, z = 0.000 }, area_id = 401 },
	[18011] = { config_id = 18011, pos = { x = 126.446, y = 120.204, z = -158.936 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 401 },
	[18014] = { config_id = 18014, pos = { x = 135.822, y = 120.009, z = -158.083 }, rot = { x = 0.000, y = 210.600, z = 0.000 }, area_id = 401 },
	[18015] = { config_id = 18015, pos = { x = 134.593, y = 120.032, z = -158.724 }, rot = { x = 0.000, y = 54.480, z = 0.000 }, area_id = 401 },
	[18016] = { config_id = 18016, pos = { x = 143.518, y = 119.937, z = -173.940 }, rot = { x = 0.000, y = 304.873, z = 0.000 }, area_id = 401 },
	[18017] = { config_id = 18017, pos = { x = 142.860, y = 119.931, z = -172.621 }, rot = { x = 0.000, y = 142.698, z = 0.000 }, area_id = 401 },
	[18018] = { config_id = 18018, pos = { x = 120.461, y = 120.261, z = -166.215 }, rot = { x = 0.000, y = 97.982, z = 0.000 }, area_id = 401 },
	[18019] = { config_id = 18019, pos = { x = 121.831, y = 120.271, z = -166.836 }, rot = { x = 0.000, y = 297.863, z = 0.000 }, area_id = 401 },
	[18023] = { config_id = 18023, pos = { x = 118.801, y = 120.444, z = -172.910 }, rot = { x = 0.000, y = 341.373, z = 0.000 }, area_id = 401 },
	[18024] = { config_id = 18024, pos = { x = 120.644, y = 120.382, z = -172.346 }, rot = { x = 0.000, y = 339.893, z = 0.000 }, area_id = 401 },
	[18025] = { config_id = 18025, pos = { x = 120.184, y = 120.203, z = -162.498 }, rot = { x = 0.000, y = 341.695, z = 0.000 }, area_id = 401 },
	[18026] = { config_id = 18026, pos = { x = 128.834, y = 120.144, z = -157.116 }, rot = { x = 0.000, y = 98.106, z = 0.000 }, area_id = 401 },
	[18027] = { config_id = 18027, pos = { x = 129.241, y = 120.084, z = -158.782 }, rot = { x = 0.000, y = 44.886, z = 0.000 }, area_id = 401 },
	[18028] = { config_id = 18028, pos = { x = 139.167, y = 120.066, z = -158.337 }, rot = { x = 0.000, y = 76.959, z = 0.000 }, area_id = 401 },
	[18029] = { config_id = 18029, pos = { x = 144.446, y = 119.979, z = -166.999 }, rot = { x = 0.000, y = 189.646, z = 0.000 }, area_id = 401 },
	[18030] = { config_id = 18030, pos = { x = 142.822, y = 119.952, z = -167.499 }, rot = { x = 0.000, y = 133.191, z = 0.000 }, area_id = 401 },
	[18031] = { config_id = 18031, pos = { x = 143.199, y = 119.882, z = -177.373 }, rot = { x = 0.000, y = 167.836, z = 0.000 }, area_id = 401 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1018033, name = "QUEST_START_18033", event = EventType.EVENT_QUEST_START, source = "7902411", condition = "", action = "action_EVENT_QUEST_START_18033" }
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
		gadgets = { 18001, 18002, 18003 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_18032", "GROUP_LOAD_18034" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 18004, 18005, 18012, 18013, 18020, 18021, 18022 },
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
function condition_EVENT_VARIABLE_CHANGE_18032(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"conch_puzzle_success"为1
	if ScriptLib.GetGroupVariableValue(context, "conch_puzzle_success") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_18032(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "quest7902407finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_18034(context, evt)
	-- 判断变量"conch_puzzle_success"为1
	if ScriptLib.GetGroupVariableValue(context, "conch_puzzle_success") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_18034(context, evt)
	ScriptLib.AddQuestProgress(context, "quest7902407finish")
	return 0
end

require "V2_8/EchoConch_Puzzle"