-- 基础信息
local base_info = {
	group_id = 220163008
}

-- DEFS_MISCS
local defs = {

    option_turn = 613,
    option_start = 7,
    option_stop = 920,
    point_array = 2,
    station_region = 8012,
    play_region = 8017,
    --运输装置config_id
    carrier_list = {8001,8002,8004,8013,8014,8016},
    switcher_control = 
    {--[操作台configID] = {被控岔路装置1, 被控岔路装置2},

    },

    --终点
    end_point = {8},

    --转弯
    turn_point = {3},

    --option_gadget = 8015,

    --几条路 注意是point_list有向的 倒数第二个点为岔路判定点
    way_info = 
    {
                --key为路径几 顺序无所谓
        [1] = 
        {
            point_list = {1,2,9,3,4,5,6,7,8},

            spawn_point = 9,

            gear_id = 0, --此判定点依据哪个岔路物件

            dir = --岔路物件每个State通向哪
            {   --GadgetState索引way_info ID
                [0] = 0,
                [201] = 0,
                [202] = 0,
                [203] = 0,
            }, 
        },

    },

    --停车点 到此点时会判断是否需要停车
    stop_points = 
    {
        3
    },
        --下车点 当到达下车点时，如果上面有人则停
    leave_points=
    {
        6

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
	[8001] = { config_id = 8001, gadget_id = 70320028, pos = { x = -54.113, y = 62.455, z = -44.517 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[8002] = { config_id = 8002, gadget_id = 70320028, pos = { x = -54.113, y = 62.455, z = -44.517 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[8004] = { config_id = 8004, gadget_id = 70320028, pos = { x = -54.113, y = 62.455, z = -44.517 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[8013] = { config_id = 8013, gadget_id = 70320028, pos = { x = -54.113, y = 62.455, z = -44.517 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[8014] = { config_id = 8014, gadget_id = 70320028, pos = { x = -54.113, y = 62.455, z = -44.517 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[8016] = { config_id = 8016, gadget_id = 70320028, pos = { x = -54.113, y = 62.455, z = -44.517 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[8018] = { config_id = 8018, gadget_id = 70300118, pos = { x = -42.309, y = 57.192, z = -10.668 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	[8012] = { config_id = 8012, shape = RegionShape.SPHERE, radius = 3, pos = { x = -40.117, y = 57.183, z = -10.774 } },
	-- play region
	[8017] = { config_id = 8017, shape = RegionShape.SPHERE, radius = 60, pos = { x = -47.013, y = 57.183, z = -10.240 } }
}

-- 触发器
triggers = {
	{ config_id = 1008005, name = "VARIABLE_CHANGE_8005", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_8005", action = "action_EVENT_VARIABLE_CHANGE_8005" },
	-- play region
	{ config_id = 1008017, name = "ENTER_REGION_8017", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 8003, gadget_id = 70300118, pos = { x = -39.618, y = 57.266, z = -10.709 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
		{ config_id = 8015, gadget_id = 70350439, pos = { x = -39.673, y = 57.183, z = -10.701 }, rot = { x = 0.000, y = 89.987, z = 0.000 }, level = 1, state = GadgetState.GearStart, worktop_config = { init_options = { 920 } } }
	},
	triggers = {
		{ config_id = 1008006, name = "PLATFORM_ARRIVAL_8006", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_8006", action = "action_EVENT_PLATFORM_ARRIVAL_8006", trigger_count = 0 },
		{ config_id = 1008007, name = "PLATFORM_ARRIVAL_8007", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_8007", action = "action_EVENT_PLATFORM_ARRIVAL_8007", trigger_count = 0 },
		{ config_id = 1008008, name = "PLATFORM_ARRIVAL_8008", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_8008", action = "action_EVENT_PLATFORM_ARRIVAL_8008", trigger_count = 0 },
		{ config_id = 1008009, name = "PLATFORM_ARRIVAL_8009", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_8009", action = "action_EVENT_PLATFORM_ARRIVAL_8009", trigger_count = 0 },
		{ config_id = 1008010, name = "PLATFORM_ARRIVAL_8010", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_8010", action = "action_EVENT_PLATFORM_ARRIVAL_8010", trigger_count = 0 },
		{ config_id = 1008011, name = "PLATFORM_ARRIVAL_8011", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_8011", action = "action_EVENT_PLATFORM_ARRIVAL_8011", trigger_count = 0 }
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
		gadgets = { 8001, 8018 },
		regions = { 8012, 8017 },
		triggers = { "VARIABLE_CHANGE_8005", "ENTER_REGION_8017" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_8005(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"first_station"为1
	if ScriptLib.GetGroupVariableValue(context, "first_station") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_8005(context, evt)
	-- 调用提示id为 201630103 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 201630103) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将本组内变量名为 "guideFinish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "guideFinish", 1, 220163002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

require "V3_2/MachineCarrier"