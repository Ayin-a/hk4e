-- 基础信息
local base_info = {
	group_id = 235850001
}

-- DEFS_MISCS
local defs = {
    --起始操作台
    starter = 1001,
    --起始操作台选项
    option_id = 94,
    --波次之间延时 秒
    delay = 3,
    --挑战总时限 秒
    time_limit = 300,

    --怪物潮信息
    --monsters填入怪物configID，
    --当场上本列表的怪数量小于min时触发补怪，补至max。max勿超过mosnters数量
    --spec_event:随着本怪物潮的出现而发生的关卡事件。为LD约定好的枚举。
    tide_cfg = {

        [1] = { monsters = {1010,1011,1012,1013,1014,1015,1016,1017}, min = 8, max = 8},
        [2] = { monsters = {1018,1019,1020,1021,1022,1023}, min = 6, max = 6},
        [3] = { monsters = {1024,1025,1026}, min = 3, max = 3},
        [4] = { monsters = {1027,1028,1029}, min = 3, max = 3},
    },
    --怪物潮随机表
    --随机固定顺序怪物潮组合 每次进地城随机取key。
    --key对应value代表依序出现的MonsterTide，小花括号内配置复数个表示同时刷出。
    rand_table = {
        [1] = 
        {
            {1},
            {2},
            {3}
        },
        [2] = 
        {
            {1},
            {2},
            {4}
         },
    },
    --谁的地城 1-万叶 2-辛焱 3-菲谢尔 4-莫娜
    type = 3,

    --莫娜、辛焱需配这里-随机suite池
    rand_suites = {},

    --万叶、菲谢尔需配这里-生成buff随机点位configIDs
    point_list = {1033,1034,1035,1036,1037,1038,1039,1040},
    --万叶、菲谢尔需配这里-buff物件池
    buff_pool = {1030,1031,1032},
    --万叶、菲谢尔需配这里-buff物件每次刷几个
    buff_count = 3,
    challenge_id = 2010048,
    crow_id = {1043,1048,1049,1050,1051},
    buff_pool_spec = {},
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[1010] = { config_id = 1010, monster_id = 21010701, pos = { x = -12.587, y = 84.829, z = 28.806 }, rot = { x = 0.000, y = 227.765, z = 0.000 }, level = 1 },
	[1011] = { config_id = 1011, monster_id = 21010701, pos = { x = -14.223, y = 84.829, z = 15.397 }, rot = { x = 0.000, y = 328.281, z = 0.000 }, level = 1 },
	[1012] = { config_id = 1012, monster_id = 21010701, pos = { x = -28.952, y = 84.829, z = 17.590 }, rot = { x = 0.000, y = 52.967, z = 0.000 }, level = 1 },
	[1013] = { config_id = 1013, monster_id = 21010701, pos = { x = -27.164, y = 84.829, z = 29.087 }, rot = { x = 0.000, y = 136.175, z = 0.000 }, level = 1 },
	[1014] = { config_id = 1014, monster_id = 21010301, pos = { x = -21.761, y = 84.829, z = 31.534 }, rot = { x = 0.000, y = 180.422, z = 0.000 }, level = 1 },
	[1015] = { config_id = 1015, monster_id = 21010301, pos = { x = -22.480, y = 84.829, z = 12.771 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[1016] = { config_id = 1016, monster_id = 21010201, pos = { x = -10.936, y = 84.829, z = 22.708 }, rot = { x = 0.000, y = 266.831, z = 0.000 }, level = 1 },
	[1017] = { config_id = 1017, monster_id = 21010201, pos = { x = -30.040, y = 84.829, z = 22.095 }, rot = { x = 0.000, y = 83.979, z = 0.000 }, level = 1 },
	[1018] = { config_id = 1018, monster_id = 21020101, pos = { x = -18.232, y = 84.829, z = 14.113 }, rot = { x = 0.000, y = 316.666, z = 0.000 }, level = 1 },
	[1019] = { config_id = 1019, monster_id = 21020101, pos = { x = -26.168, y = 84.829, z = 26.672 }, rot = { x = 0.000, y = 115.694, z = 0.000 }, level = 1 },
	[1020] = { config_id = 1020, monster_id = 20011301, pos = { x = -17.446, y = 84.829, z = 28.483 }, rot = { x = 0.000, y = 216.215, z = 0.000 }, level = 1 },
	[1021] = { config_id = 1021, monster_id = 20011301, pos = { x = -25.337, y = 84.829, z = 18.500 }, rot = { x = 0.000, y = 48.028, z = 0.000 }, level = 1 },
	[1022] = { config_id = 1022, monster_id = 20011201, pos = { x = -18.854, y = 84.829, z = 29.985 }, rot = { x = 0.000, y = 215.594, z = 0.000 }, level = 1 },
	[1023] = { config_id = 1023, monster_id = 20011201, pos = { x = -23.863, y = 84.870, z = 16.687 }, rot = { x = 0.000, y = 20.340, z = 0.000 }, level = 1 },
	[1024] = { config_id = 1024, monster_id = 22010101, pos = { x = -24.356, y = 84.829, z = 21.947 }, rot = { x = 0.000, y = 71.217, z = 0.000 }, level = 1 },
	[1025] = { config_id = 1025, monster_id = 22010101, pos = { x = -18.307, y = 84.829, z = 25.822 }, rot = { x = 0.000, y = 194.521, z = 0.000 }, level = 1 },
	[1026] = { config_id = 1026, monster_id = 22010101, pos = { x = -18.484, y = 84.829, z = 18.789 }, rot = { x = 0.000, y = 330.128, z = 0.000 }, level = 1 },
	[1027] = { config_id = 1027, monster_id = 22010201, pos = { x = -22.456, y = 84.853, z = 26.243 }, rot = { x = 0.000, y = 148.353, z = 0.000 }, level = 1 },
	[1028] = { config_id = 1028, monster_id = 22010201, pos = { x = -16.160, y = 84.846, z = 22.324 }, rot = { x = 0.000, y = 274.017, z = 0.000 }, level = 1 },
	[1029] = { config_id = 1029, monster_id = 22010201, pos = { x = -23.211, y = 84.829, z = 19.146 }, rot = { x = 0.000, y = 22.918, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[1001] = { config_id = 1001, gadget_id = 70360010, pos = { x = -20.220, y = 84.564, z = 22.409 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	[1003] = { config_id = 1003, gadget_id = 70950010, pos = { x = -5.890, y = 84.868, z = 1.285 }, rot = { x = 0.000, y = 269.903, z = 0.000 }, level = 1 },
	[1004] = { config_id = 1004, gadget_id = 70950010, pos = { x = -5.847, y = 84.816, z = 15.808 }, rot = { x = 0.000, y = 270.687, z = 0.000 }, level = 1 },
	[1005] = { config_id = 1005, gadget_id = 70950010, pos = { x = -5.674, y = 84.936, z = 30.229 }, rot = { x = 0.000, y = 270.687, z = 0.000 }, level = 1 },
	[1006] = { config_id = 1006, gadget_id = 70950010, pos = { x = -5.554, y = 84.789, z = 40.243 }, rot = { x = 0.000, y = 270.687, z = 0.000 }, level = 1 },
	[1007] = { config_id = 1007, gadget_id = 70950010, pos = { x = -23.289, y = 84.729, z = 46.514 }, rot = { x = 0.000, y = 179.803, z = 0.000 }, level = 1 },
	[1008] = { config_id = 1008, gadget_id = 70950010, pos = { x = -23.098, y = 84.772, z = -14.176 }, rot = { x = 0.000, y = 359.867, z = 0.000 }, level = 1 },
	[1009] = { config_id = 1009, gadget_id = 70950010, pos = { x = -38.692, y = 84.693, z = 22.141 }, rot = { x = 0.000, y = 90.255, z = 0.000 }, level = 1 },
	[1030] = { config_id = 1030, gadget_id = 70310324, pos = { x = -14.030, y = 84.795, z = 13.769 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[1031] = { config_id = 1031, gadget_id = 70310325, pos = { x = -21.146, y = 84.795, z = 33.913 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[1032] = { config_id = 1032, gadget_id = 70310326, pos = { x = -31.780, y = 84.795, z = 17.595 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[1033] = { config_id = 1033, gadget_id = 70350085, pos = { x = -10.516, y = 84.829, z = 20.902 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[1034] = { config_id = 1034, gadget_id = 70350085, pos = { x = -20.218, y = 84.829, z = 29.383 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[1035] = { config_id = 1035, gadget_id = 70350085, pos = { x = -15.334, y = 84.795, z = 3.381 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[1036] = { config_id = 1036, gadget_id = 70350085, pos = { x = -23.878, y = 84.829, z = 20.707 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[1037] = { config_id = 1037, gadget_id = 70350085, pos = { x = -28.831, y = 84.795, z = 35.656 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[1038] = { config_id = 1038, gadget_id = 70350085, pos = { x = -12.188, y = 84.795, z = 36.475 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[1039] = { config_id = 1039, gadget_id = 70350085, pos = { x = -29.794, y = 84.795, z = 8.485 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[1040] = { config_id = 1040, gadget_id = 70350085, pos = { x = -19.087, y = 84.795, z = 5.678 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[1043] = { config_id = 1043, gadget_id = 44000431, pos = { x = -17.023, y = 84.829, z = 18.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[1046] = { config_id = 1046, gadget_id = 70360001, pos = { x = -20.486, y = 84.829, z = 21.631 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[1048] = { config_id = 1048, gadget_id = 44000431, pos = { x = -17.023, y = 84.829, z = 18.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[1049] = { config_id = 1049, gadget_id = 44000431, pos = { x = -17.023, y = 84.829, z = 18.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[1050] = { config_id = 1050, gadget_id = 44000431, pos = { x = -17.023, y = 84.829, z = 18.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[1051] = { config_id = 1051, gadget_id = 44000431, pos = { x = -17.023, y = 84.829, z = 18.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1001002, name = "SELECT_OPTION_1002", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_1002", action = "action_EVENT_SELECT_OPTION_1002", trigger_count = 0 },
	{ config_id = 1001044, name = "GROUP_REFRESH_1044", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "condition_EVENT_GROUP_REFRESH_1044", action = "action_EVENT_GROUP_REFRESH_1044", trigger_count = 0 },
	{ config_id = 1001045, name = "VARIABLE_CHANGE_1045", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_1045", action = "action_EVENT_VARIABLE_CHANGE_1045", trigger_count = 0 },
	{ config_id = 1001047, name = "GADGET_CREATE_1047", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_1047", action = "action_EVENT_GADGET_CREATE_1047", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "start", value = 0, no_refresh = true },
	{ config_id = 2, name = "start1", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 1042, gadget_id = 70360002, pos = { x = -19.562, y = 77.757, z = 22.022 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
	},
	triggers = {
		{ config_id = 1001041, name = "VARIABLE_CHANGE_1041", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_1041", action = "action_EVENT_VARIABLE_CHANGE_1041", trigger_count = 0 }
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
		gadgets = { 1046 },
		regions = { },
		triggers = { "SELECT_OPTION_1002", "GROUP_REFRESH_1044", "VARIABLE_CHANGE_1045", "GADGET_CREATE_1047" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 1003, 1004, 1005, 1006, 1007, 1008, 1009 },
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
function condition_EVENT_SELECT_OPTION_1002(context, evt)
	-- 判断是gadgetid 1001 option_id 94
	if 1001 ~= evt.param1 then
		return false	
	end
	
	if 94 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_1002(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 235850001, 2)
	
	-- 删除指定group： 235850001 ；指定config：1001；物件身上指定option：94；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 235850001, 1001, 94) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 1001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_REFRESH_1044(context, evt)
	-- 判断变量"start"为1
	if ScriptLib.GetGroupVariableValue(context, "start") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_1044(context, evt)
	-- 创建id为1001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 235850001, 1001, {94}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_1045(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"start1"为1
	if ScriptLib.GetGroupVariableValue(context, "start1") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_1045(context, evt)
	-- 创建id为1001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 235850001, 1001, {94}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_1047(context, evt)
	if 1046 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"start1"为1
	if ScriptLib.GetGroupVariableValue(context, "start1") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_1047(context, evt)
	-- 创建id为1001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 235850001, 1001, {94}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

require "V2_8/DLActivityDungeon"