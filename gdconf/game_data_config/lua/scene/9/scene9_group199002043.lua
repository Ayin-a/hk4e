-- 基础信息
local base_info = {
	group_id = 199002043
}

-- DEFS_MISCS
local        defs = 
{
	--幕布Group
	curtain_group = 199002073,
        --每个阶段的所有演员物件config_id。用于统一设置可拾取/可对话状态
        actor_list = 
        {
                [1] = 
                { 
                        [43001] = 1110921,
                        [43002] = 1110951,
                        [43003] = 1110952,
                        [43004] = 1110953,
                        [43006] = 1111027,
                },
                [2] = 
                { 
                        [43001] = 1110926,
                        [43003] = 1110952,
                        [43004] = 1110953,
                        [43006] = 1111027,
                },
                [3] = 
                { 
                        [43001] = 1110931,
                        [43004] = 1110953,
                        [43006] = 1111027,
                },
                [4] = 
                { 
                        [43001] = 1110937,
                        [43005] = 1110954,
                        [43006] = 1111027,
                },
                [5] = 
                { 
                        [43001] = 1110941,
                        [43006] = 1111027,
                },

        },
        --可拾取的gadget列表，即not in any suite的夜鸦雕像
        pickable_gadget = 
        {
                [43002] = {0, 43041, 43041, 43041, 43041}, 
                [43003] = {0, 0, 43043, 43042, 43042}, 
                [43004] = {0, 0, 0, 43043, -1, -1},
                [43005] = {0, 0, 0, 0, 43048, 43049},
                [43006] = {0, 0, 0, 0, 0, 43043}, 
        },
        --行动序列
        actions = 
        {
                {
                          [1] = { config_id = 43001, reminder_id = 1110919, point_array = 0, point_id_list = 0, duration = 11},
                          [2] = { config_id = 43007, reminder_id = 1110920, point_array = 0, point_id_list = 0, duration = 9},
                          [3] = { config_id = 43001, reminder_id = 1110921, point_array = 0, point_id_list = 0, duration = 10},
                         
                        
                },
                {
                          [1] = { config_id = 43002, reminder_id = 1110922, point_array = 0, point_id_list = 0, duration = 31},
                          [2] = { config_id = 43001, reminder_id = 1110926, point_array = 0, point_id_list = 0, duration = 10},



                },
                {
                          [1] = { config_id = 43003, reminder_id = 1110927, point_array = 900200037, point_id_list = {1,2,3,4,5,6,7}, duration = 36},
                          [2] = { config_id = 43001, reminder_id = 1110931, point_array = 0, point_id_list = 0, duration = 10},


                },
                {
                          [1] = { config_id = 43004, reminder_id = 1110932, point_array = 900200038, point_id_list = {1,2,3,4,5}, duration = 26},
                          [2] = { config_id = 43004, reminder_id = 0, point_array = 0, point_id_list = 0, arg = 1, duration = 0},
                          [3] = { config_id = 43001, reminder_id = 1110936, point_array = 0, point_id_list = 0, duration = 15},
                          [4] = { config_id = 0, reminder_id = 1111285, point_array = 0, point_id_list = 0, duration = 7},


                },
                {
                          [1] = { config_id = 43005, reminder_id = 1110938, point_array = 900200039, point_id_list = {1,2,3}, duration = 8},
                          [2] = { config_id = 43007, reminder_id = 1110940, point_array = 0, point_id_list = 0, duration = 11},
                          [3] = { config_id = 43001, reminder_id = 1110941, point_array = 0, point_id_list = 0, duration = 8},


                },
                {
                          [1] = { config_id = 43006, reminder_id = 1110942, point_array = 900200040, point_id_list = {1,2,3,4,5}, duration = 15},
                          [2] = { config_id = 43001, reminder_id = 1110944, point_array = 0, point_id_list = 0, duration = 20},
                          [3] = { config_id = 43005, reminder_id = 1110946, point_array = 0, point_id_list = 0, duration = 10},
                          [4] = { config_id = 43007, reminder_id = 0, point_array = 900200041, point_id_list = {1,2,3}, duration = 3},
                          [5] = { config_id = 43005, reminder_id = 0, point_array = 0, point_id_list = 0, arg =1, duration = 1},
                          [6] = { config_id = 43007, reminder_id = 1110947, point_array = 0, point_id_list = 0, duration = 28},
                          [7] = { config_id = 43001, reminder_id = 1110950, point_array = 0, point_id_list = 0, duration = 10},



                },
        },

        --每段剧情结束时加载的对应suite(放聚光灯和操作台用),和正确的放置槽位config_id
        --key是阶段id
        question_suits =  
        {
                   [1] = { add_suite = 3, correct_slot = 43008, correct_gadget = 43002},
                   [2] = { add_suite = 4, correct_slot = 43009, correct_gadget = 43003},
                   [3] = { add_suite = 5, correct_slot = 43009, correct_gadget = 43004},
                   [4] = { add_suite = 6, correct_slot = 43010, correct_gadget = 43005},
                   [5] = { add_suite = 7, correct_slot = 43009, correct_gadget = 43006},
        },
no_actor = 43001
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
	-- 旁白
	[43001] = { config_id = 43001, gadget_id = 70310175, pos = { x = 376.811, y = 125.207, z = -469.823 }, rot = { x = 0.000, y = 317.770, z = 0.000 }, level = 20, area_id = 401 },
	-- 公主
	[43002] = { config_id = 43002, gadget_id = 70310173, pos = { x = 364.059, y = 124.600, z = -457.593 }, rot = { x = 0.000, y = 116.080, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 401 },
	-- 老成的守卫
	[43003] = { config_id = 43003, gadget_id = 70310173, pos = { x = 367.160, y = 124.169, z = -454.309 }, rot = { x = 0.000, y = 124.908, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 401 },
	-- 年轻的守卫
	[43004] = { config_id = 43004, gadget_id = 70310173, pos = { x = 362.830, y = 124.712, z = -455.870 }, rot = { x = 0.000, y = 117.758, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 401 },
	-- 年轻的守卫（真）
	[43005] = { config_id = 43005, gadget_id = 70310173, pos = { x = 388.455, y = 121.694, z = -437.064 }, rot = { x = 0.000, y = 202.999, z = 0.000 }, level = 20, state = GadgetState.GearStop, is_use_point_array = true, area_id = 401 },
	-- 忠诚的侍从
	[43006] = { config_id = 43006, gadget_id = 70310265, pos = { x = 360.628, y = 124.625, z = -459.944 }, rot = { x = 0.000, y = 113.761, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 401 },
	-- 恶龙
	[43007] = { config_id = 43007, gadget_id = 70310173, pos = { x = 379.051, y = 125.358, z = -465.108 }, rot = { x = 0.000, y = 21.756, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 401 },
	-- 公主操作台
	[43008] = { config_id = 43008, gadget_id = 70360001, pos = { x = 381.138, y = 125.378, z = -459.170 }, rot = { x = 0.000, y = 205.521, z = 0.000 }, level = 20, area_id = 401 },
	-- 老成的守卫,年轻的守卫,忠诚的侍从操作台
	[43009] = { config_id = 43009, gadget_id = 70360001, pos = { x = 385.453, y = 125.360, z = -459.918 }, rot = { x = 0.000, y = 201.321, z = 0.000 }, level = 20, area_id = 401 },
	-- 年轻的守卫·真操作台
	[43010] = { config_id = 43010, gadget_id = 70360001, pos = { x = 380.280, y = 125.371, z = -461.840 }, rot = { x = 0.000, y = 200.695, z = 0.000 }, level = 20, area_id = 401 },
	-- 公主，忠诚侍从坐点
	[43012] = { config_id = 43012, gadget_id = 70310174, pos = { x = 381.120, y = 125.370, z = -459.428 }, rot = { x = 0.000, y = 198.627, z = 0.000 }, level = 20, area_id = 401 },
	-- 老成的守卫坐点
	[43013] = { config_id = 43013, gadget_id = 70310174, pos = { x = 385.368, y = 125.358, z = -460.165 }, rot = { x = 0.000, y = 202.172, z = 0.000 }, level = 20, area_id = 401 },
	-- 年轻的守卫·真坐点
	[43014] = { config_id = 43014, gadget_id = 70310174, pos = { x = 380.195, y = 125.325, z = -462.079 }, rot = { x = 0.000, y = 200.614, z = 0.000 }, level = 20, area_id = 401 },
	-- 开始剧目
	[43015] = { config_id = 43015, gadget_id = 70360001, pos = { x = 375.874, y = 125.515, z = -467.877 }, rot = { x = 0.000, y = 307.128, z = 0.000 }, level = 20, area_id = 401 },
	[43019] = { config_id = 43019, gadget_id = 70310398, pos = { x = 385.453, y = 125.360, z = -459.918 }, rot = { x = 0.000, y = 201.321, z = 0.000 }, level = 20, area_id = 401 },
	[43020] = { config_id = 43020, gadget_id = 70310398, pos = { x = 385.401, y = 125.324, z = -460.215 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[43021] = { config_id = 43021, gadget_id = 70310398, pos = { x = 380.397, y = 125.324, z = -461.698 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[43022] = { config_id = 43022, gadget_id = 70310473, pos = { x = 364.258, y = 123.762, z = -457.686 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[43023] = { config_id = 43023, gadget_id = 70310473, pos = { x = 367.160, y = 124.169, z = -454.309 }, rot = { x = 0.000, y = 124.908, z = 0.000 }, level = 20, area_id = 401 },
	[43024] = { config_id = 43024, gadget_id = 70310473, pos = { x = 362.918, y = 124.218, z = -455.889 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[43025] = { config_id = 43025, gadget_id = 70310473, pos = { x = 360.615, y = 123.969, z = -459.847 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[43026] = { config_id = 43026, gadget_id = 70310473, pos = { x = 388.455, y = 121.367, z = -437.064 }, rot = { x = 0.000, y = 202.999, z = 0.000 }, level = 20, area_id = 401 },
	[43027] = { config_id = 43027, gadget_id = 70310309, pos = { x = 384.808, y = 125.324, z = -461.599 }, rot = { x = 0.000, y = 21.081, z = 0.000 }, level = 20, area_id = 401 },
	[43028] = { config_id = 43028, gadget_id = 70310311, pos = { x = 384.027, y = 125.324, z = -463.382 }, rot = { x = 0.000, y = 20.904, z = 0.000 }, level = 20, area_id = 401 },
	[43029] = { config_id = 43029, gadget_id = 70310310, pos = { x = 383.128, y = 125.324, z = -465.961 }, rot = { x = 0.000, y = 201.045, z = 0.000 }, level = 20, area_id = 401 },
	[43030] = { config_id = 43030, gadget_id = 70310310, pos = { x = 383.753, y = 125.324, z = -464.337 }, rot = { x = 0.000, y = 201.045, z = 0.000 }, level = 20, area_id = 401 },
	[43031] = { config_id = 43031, gadget_id = 70310310, pos = { x = 383.171, y = 125.324, z = -463.052 }, rot = { x = 0.000, y = 291.531, z = 0.000 }, level = 20, area_id = 401 },
	[43032] = { config_id = 43032, gadget_id = 70310310, pos = { x = 381.852, y = 125.324, z = -462.532 }, rot = { x = 0.000, y = 291.531, z = 0.000 }, level = 20, area_id = 401 },
	[43033] = { config_id = 43033, gadget_id = 70310310, pos = { x = 379.894, y = 125.324, z = -462.862 }, rot = { x = 0.000, y = 201.045, z = 0.000 }, level = 20, area_id = 401 },
	[43034] = { config_id = 43034, gadget_id = 70310310, pos = { x = 378.841, y = 125.324, z = -465.673 }, rot = { x = 0.000, y = 20.821, z = 0.000 }, level = 20, area_id = 401 },
	[43036] = { config_id = 43036, gadget_id = 70211121, pos = { x = 372.730, y = 122.197, z = -465.062 }, rot = { x = 0.000, y = 297.222, z = 0.000 }, level = 16, drop_tag = "解谜高级群岛", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 401 },
	-- 公主站点
	[43041] = { config_id = 43041, gadget_id = 70310189, pos = { x = 381.138, y = 125.378, z = -459.170 }, rot = { x = 0.000, y = 205.521, z = 0.000 }, level = 1, area_id = 401 },
	-- 老守卫站点
	[43042] = { config_id = 43042, gadget_id = 70310189, pos = { x = 382.854, y = 125.360, z = -466.578 }, rot = { x = 0.000, y = 291.397, z = 0.000 }, level = 1, area_id = 401 },
	-- 老成守卫/年轻守卫/忠诚侍从起始点
	[43043] = { config_id = 43043, gadget_id = 70310189, pos = { x = 385.453, y = 125.360, z = -459.918 }, rot = { x = 0.000, y = 201.321, z = 0.000 }, level = 1, area_id = 401 },
	[43047] = { config_id = 43047, gadget_id = 70310398, pos = { x = 381.138, y = 125.412, z = -459.170 }, rot = { x = 0.000, y = 205.521, z = 0.000 }, level = 1, area_id = 401 },
	-- 【年轻守卫】起始点
	[43048] = { config_id = 43048, gadget_id = 70310189, pos = { x = 380.280, y = 125.371, z = -461.840 }, rot = { x = 0.000, y = 200.695, z = 0.000 }, level = 1, area_id = 401 },
	-- 【年轻守卫】站定点
	[43049] = { config_id = 43049, gadget_id = 70310189, pos = { x = 379.636, y = 125.371, z = -463.546 }, rot = { x = 0.000, y = 200.695, z = 0.000 }, level = 1, area_id = 401 }
}

-- 区域
regions = {
	[43016] = { config_id = 43016, shape = RegionShape.SPHERE, radius = 40, pos = { x = 373.222, y = 123.160, z = -454.082 }, area_id = 401 }
}

-- 触发器
triggers = {
	-- 检测当在第四阶段的时候将守卫对话状态流转
	{ config_id = 1043011, name = "VARIABLE_CHANGE_43011", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_43011", action = "action_EVENT_VARIABLE_CHANGE_43011", trigger_count = 0 },
	-- 完成间幕2时改juchang3变量
	{ config_id = 1043017, name = "VARIABLE_CHANGE_43017", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_43017", action = "action_EVENT_VARIABLE_CHANGE_43017", trigger_count = 0 },
	-- 间幕2完成后通报任务
	{ config_id = 1043018, name = "VARIABLE_CHANGE_43018", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_43018", action = "action_EVENT_VARIABLE_CHANGE_43018", trigger_count = 0 },
	{ config_id = 1043035, name = "VARIABLE_CHANGE_43035", event = EventType.EVENT_VARIABLE_CHANGE, source = "is_done", condition = "condition_EVENT_VARIABLE_CHANGE_43035", action = "action_EVENT_VARIABLE_CHANGE_43035", trigger_count = 0 },
	{ config_id = 1043037, name = "GROUP_LOAD_43037", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_43037", action = "action_EVENT_GROUP_LOAD_43037", trigger_count = 0 },
	{ config_id = 1043038, name = "VARIABLE_CHANGE_43038", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_43038", action = "action_EVENT_VARIABLE_CHANGE_43038", trigger_count = 0 },
	{ config_id = 1043039, name = "GROUP_LOAD_43039", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_43039", action = "action_EVENT_GROUP_LOAD_43039", trigger_count = 0 },
	-- 检测当在第四阶段的时候将守卫对话状态流转
	{ config_id = 1043040, name = "VARIABLE_CHANGE_43040", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_43040", action = "action_EVENT_VARIABLE_CHANGE_43040", trigger_count = 0 },
	{ config_id = 1043044, name = "GADGETTALK_DONE_43044", event = EventType.EVENT_GADGETTALK_DONE, source = "6800250", condition = "", action = "action_EVENT_GADGETTALK_DONE_43044", trigger_count = 0 },
	{ config_id = 1043045, name = "VARIABLE_CHANGE_43045", event = EventType.EVENT_VARIABLE_CHANGE, source = "create43005", condition = "condition_EVENT_VARIABLE_CHANGE_43045", action = "action_EVENT_VARIABLE_CHANGE_43045", trigger_count = 0 },
	{ config_id = 1043046, name = "GROUP_LOAD_43046", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_43046", action = "action_EVENT_GROUP_LOAD_43046", trigger_count = 0 },
	{ config_id = 1043050, name = "GROUP_LOAD_43050", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_43050", trigger_count = 0 },
	-- 检测当在第五阶段将阿诺德物件对话移除
	{ config_id = 1043051, name = "VARIABLE_CHANGE_43051", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_43051", action = "action_EVENT_VARIABLE_CHANGE_43051", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "play_state", value = 4, no_refresh = true },
	{ config_id = 2, name = "talk_done", value = 0, no_refresh = true },
	{ config_id = 3, name = "create43005", value = 0, no_refresh = true }
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
		regions = { 43016 },
		triggers = { "VARIABLE_CHANGE_43018", "VARIABLE_CHANGE_43035", "GROUP_LOAD_43037", "VARIABLE_CHANGE_43038", "GROUP_LOAD_43039", "GADGETTALK_DONE_43044", "VARIABLE_CHANGE_43045", "GROUP_LOAD_43046", "GROUP_LOAD_43050" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 43001, 43007, 43012, 43013, 43014, 43015, 43027, 43028, 43029, 43030, 43031, 43032, 43033, 43034 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_43011", "VARIABLE_CHANGE_43017", "VARIABLE_CHANGE_43040", "VARIABLE_CHANGE_43051" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 43008, 43022, 43023, 43024, 43025, 43047 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 43009, 43020, 43023, 43024, 43025 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 43009, 43020, 43024, 43025 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 43010, 43021, 43025, 43026 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { 43009, 43019, 43025 },
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
function condition_EVENT_VARIABLE_CHANGE_43011(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"cur_stage"为4
	if ScriptLib.GetGroupVariableValue(context, "cur_stage") ~= 4 then
			return false
	end
	
	-- 判断变量"play_state"为2
	if ScriptLib.GetGroupVariableValue(context, "play_state") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_43011(context, evt)
	ScriptLib.SetGadgetTalkByConfigId(context,199002048,48008,6800250)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_43017(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"is_done"为1
	if ScriptLib.GetGroupVariableValue(context, "is_done") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_43017(context, evt)
	-- 针对当前group内变量名为 "dramamiddle" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "dramamiddle", 1, 199002019) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "jianmu1" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "jianmu1", 0, 199002019) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "jianmu2" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "jianmu2", 0, 199002019) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "jianmu3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "jianmu3", 1, 199002019) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "appear" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "appear", 1, 199002190) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_43018(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"is_done"为1
	if ScriptLib.GetGroupVariableValue(context, "is_done") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_43018(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "drama2.2") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_43035(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"is_done"为1
	if ScriptLib.GetGroupVariableValue(context, "is_done") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_43035(context, evt)
	-- 创建id为43036的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 43036 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_43037(context, evt)
	-- 判断变量"is_done"为1
	if ScriptLib.GetGroupVariableValue(context, "is_done") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_43037(context, evt)
	-- 创建id为43036的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 43036 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_43038(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"play_state"为0
	if ScriptLib.GetGroupVariableValue(context, "play_state") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_43038(context, evt)
	-- 创建id为43005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 43005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_43039(context, evt)
	-- 判断变量"play_state"为4
	if ScriptLib.GetGroupVariableValue(context, "play_state") == 4 then
	                return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_43039(context, evt)
	-- 创建id为43005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 43005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_43040(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"cur_stage"为4
	if ScriptLib.GetGroupVariableValue(context, "cur_stage") ~= 4 then
			return false
	end
	
	-- 判断变量"play_state"为2
	if ScriptLib.GetGroupVariableValue(context, "play_state") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_43040(context, evt)
	-- 将本组内变量名为 "CrowAnorld" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "CrowAnorld", 1, 199002048) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GADGETTALK_DONE_43044(context, evt)
	-- 将本组内变量名为 "talk_done" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "talk_done", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_43045(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"create43005"为1
	if ScriptLib.GetGroupVariableValue(context, "create43005") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_43045(context, evt)
	-- 创建id为43005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 43005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_43046(context, evt)
	-- 判断变量"create43005"为1
	if ScriptLib.GetGroupVariableValue(context, "create43005") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_43046(context, evt)
	-- 创建id为43005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 43005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_43050(context, evt)
	-- 将本组内变量名为 "CrowAnorld" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "CrowAnorld", 0, 199002048) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_43051(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"cur_stage"为5
	if ScriptLib.GetGroupVariableValue(context, "cur_stage") ~= 5 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_43051(context, evt)
	-- 将本组内变量名为 "CrowAnorld1" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "CrowAnorld1", 0, 199002048) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

require "V2_8/CrowTheatre_Howdunit"