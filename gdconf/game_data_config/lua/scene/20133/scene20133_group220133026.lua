-- 基础信息
local base_info = {
	group_id = 220133026
}

-- DEFS_MISCS
local defs = 
{
                guide_region = 26034,
	--玩法完成时 这个gadget如果为GearStop则会被设为Default
        	finish_gadget = 26011,
	--起点格configid
	starter = 26007,
	--终点格configid
	ender = 26033,
	--矩阵 用于踩格子时判断是否相邻
	matrix = 
	{
	
		{       0,       0,       0,26018,26017,       0,       0,       0,       0},

		{       0,       0,26030,26003,26015,       0,       0,26010,26002},

		{       0,       0,26028,       0,       0,       0,       0,       0,26023},

		{       0,       0,       0,       0,       0,       0,       0,       0,26022},

		{26006,26025,       0,       0,       0,       0,       0,26001,26004},

		{       0,26031,26032,       0,       0,       0,       0,26007,       0},

		{       0,       0,26029,26033,       0,       0,       0,       0,       0},

	},	
	--每个还原格控制哪些离散格
	reveal_tiles=
	{
		[26006] = {26008,26009,26019,26024},

	},
	--离散格拼入哪个位置，拼入位置需要布设普通格，初始状态为903
	reveal_match=
	{
		[26008] = 26025,
		[26009] = 26031,
		[26019] = 26032,
		[26024] = 26029,

	},

       	        --移动格的目标位置和使用的点阵
        movable_pos = 
        {--[移动格子configID] = new_pos: 两位数字的矩阵坐标，x是十位，y是个位
 [26010] = { new_pos = 26 }, 
 [26028] = { new_pos = 41 }, 
        },
	        lines=
        {
                [26010] = 26012,
                [26028] = 26026,
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
	[26001] = { config_id = 26001, gadget_id = 70360350, pos = { x = 2168.707, y = 541.821, z = 511.195 }, rot = { x = 19.149, y = 176.066, z = 351.185 }, level = 1, server_global_value_config = { ["SGV_NoteSlate_Sound"]= 1} },
	-- 普通
	[26002] = { config_id = 26002, gadget_id = 70360350, pos = { x = 2177.620, y = 542.876, z = 508.214 }, rot = { x = 13.377, y = 174.426, z = 344.153 }, level = 1, server_global_value_config = { ["SGV_NoteSlate_Sound"]= 5} },
	[26003] = { config_id = 26003, gadget_id = 70360350, pos = { x = 2166.625, y = 549.839, z = 526.987 }, rot = { x = 347.911, y = 348.013, z = 5.358 }, level = 1, server_global_value_config = { ["SGV_NoteSlate_Sound"]= 10} },
	-- 还原格
	[26004] = { config_id = 26004, gadget_id = 70360350, pos = { x = 2168.901, y = 540.837, z = 508.369 }, rot = { x = 19.149, y = 176.066, z = 351.185 }, level = 1, server_global_value_config = { ["SGV_NoteSlate_Sound"]= 2} },
	[26006] = { config_id = 26006, gadget_id = 70360352, pos = { x = 2152.262, y = 547.998, z = 518.795 }, rot = { x = 351.278, y = 345.230, z = 347.184 }, level = 1, server_global_value_config = { ["SGV_NoteSlate_Sound"]= 13} },
	[26007] = { config_id = 26007, gadget_id = 70360354, pos = { x = 2165.807, y = 541.569, z = 511.066 }, rot = { x = 19.700, y = 175.287, z = 358.736 }, level = 1 },
	[26008] = { config_id = 26008, gadget_id = 70360353, pos = { x = 2159.382, y = 547.004, z = 516.975 }, rot = { x = 36.073, y = 106.892, z = 120.024 }, level = 1 },
	[26009] = { config_id = 26009, gadget_id = 70360353, pos = { x = 2156.455, y = 547.829, z = 515.269 }, rot = { x = 17.694, y = 278.260, z = 335.177 }, level = 1 },
	-- 移动平台移动
	[26010] = { config_id = 26010, gadget_id = 70360351, pos = { x = 2177.296, y = 543.558, z = 511.116 }, rot = { x = 13.189, y = 173.750, z = 343.997 }, level = 1, route_id = 5, start_route = false, server_global_value_config = { ["SGV_NoteSlate_Sound"]= 6} },
	[26011] = { config_id = 26011, gadget_id = 70310171, pos = { x = 2156.244, y = 540.397, z = 507.763 }, rot = { x = 350.323, y = 68.521, z = 344.585 }, level = 1, state = GadgetState.GearStop, persistent = true, interact_id = 64 },
	[26012] = { config_id = 26012, gadget_id = 70310349, pos = { x = 2176.475, y = 544.260, z = 512.441 }, rot = { x = 337.693, y = 336.682, z = 18.445 }, level = 1 },
	[26015] = { config_id = 26015, gadget_id = 70360350, pos = { x = 2169.536, y = 550.111, z = 527.545 }, rot = { x = 347.911, y = 348.013, z = 5.358 }, level = 1, server_global_value_config = { ["SGV_NoteSlate_Sound"]= 7} },
	[26017] = { config_id = 26017, gadget_id = 70360350, pos = { x = 2168.929, y = 550.736, z = 530.401 }, rot = { x = 347.911, y = 348.013, z = 5.358 }, level = 1, server_global_value_config = { ["SGV_NoteSlate_Sound"]= 8} },
	[26018] = { config_id = 26018, gadget_id = 70360350, pos = { x = 2166.023, y = 550.460, z = 529.822 }, rot = { x = 347.911, y = 348.013, z = 5.358 }, level = 1, server_global_value_config = { ["SGV_NoteSlate_Sound"]= 9} },
	[26019] = { config_id = 26019, gadget_id = 70360353, pos = { x = 2157.832, y = 550.853, z = 517.373 }, rot = { x = 78.170, y = 19.285, z = 151.693 }, level = 1 },
	-- 还原格
	[26022] = { config_id = 26022, gadget_id = 70360350, pos = { x = 2171.799, y = 541.428, z = 508.273 }, rot = { x = 18.992, y = 175.466, z = 344.434 }, level = 1, server_global_value_config = { ["SGV_NoteSlate_Sound"]= 3} },
	-- 还原格
	[26023] = { config_id = 26023, gadget_id = 70360350, pos = { x = 2174.700, y = 542.181, z = 508.231 }, rot = { x = 16.341, y = 176.336, z = 344.696 }, level = 1, server_global_value_config = { ["SGV_NoteSlate_Sound"]= 4} },
	[26024] = { config_id = 26024, gadget_id = 70360353, pos = { x = 2158.443, y = 546.338, z = 511.798 }, rot = { x = 321.056, y = 172.484, z = 25.147 }, level = 1 },
	-- 隐藏
	[26025] = { config_id = 26025, gadget_id = 70360356, pos = { x = 2155.002, y = 547.329, z = 519.655 }, rot = { x = 347.797, y = 345.129, z = 344.195 }, level = 1, state = GadgetState.Action03, server_global_value_config = { ["SGV_NoteSlate_Sound"]= 14} },
	[26026] = { config_id = 26026, gadget_id = 70310349, pos = { x = 2164.158, y = 549.669, z = 523.557 }, rot = { x = 2.451, y = 259.833, z = 12.052 }, level = 1 },
	-- 移动平台移动
	[26028] = { config_id = 26028, gadget_id = 70360351, pos = { x = 2164.402, y = 549.008, z = 523.521 }, rot = { x = 347.800, y = 344.018, z = 358.788 }, level = 1, route_id = 6, start_route = false, server_global_value_config = { ["SGV_NoteSlate_Sound"]= 12} },
	[26029] = { config_id = 26029, gadget_id = 70360356, pos = { x = 2158.934, y = 545.094, z = 514.670 }, rot = { x = 348.248, y = 349.795, z = 336.183 }, level = 1, state = GadgetState.Action03, server_global_value_config = { ["SGV_NoteSlate_Sound"]= 17} },
	[26030] = { config_id = 26030, gadget_id = 70360350, pos = { x = 2163.715, y = 549.597, z = 526.366 }, rot = { x = 348.422, y = 347.994, z = 356.798 }, level = 1, server_global_value_config = { ["SGV_NoteSlate_Sound"]= 11} },
	[26031] = { config_id = 26031, gadget_id = 70360356, pos = { x = 2155.755, y = 546.671, z = 516.800 }, rot = { x = 347.291, y = 345.909, z = 343.242 }, level = 1, state = GadgetState.Action03, server_global_value_config = { ["SGV_NoteSlate_Sound"]= 15} },
	[26032] = { config_id = 26032, gadget_id = 70360356, pos = { x = 2158.411, y = 545.708, z = 517.575 }, rot = { x = 348.248, y = 349.795, z = 336.183 }, level = 1, state = GadgetState.Action03, server_global_value_config = { ["SGV_NoteSlate_Sound"]= 16} },
	[26033] = { config_id = 26033, gadget_id = 70360355, pos = { x = 2161.601, y = 543.995, z = 515.383 }, rot = { x = 348.248, y = 349.795, z = 336.183 }, level = 1, server_global_value_config = { ["SGV_NoteSlate_Sound"]= 18} }
}

-- 区域
regions = {
	-- 玩法限定区域
	[26027] = { config_id = 26027, shape = RegionShape.SPHERE, radius = 20, pos = { x = 2165.940, y = 540.941, z = 519.733 } },
	[26034] = { config_id = 26034, shape = RegionShape.SPHERE, radius = 7, pos = { x = 2162.951, y = 541.893, z = 510.706 } }
}

-- 触发器
triggers = {
	-- 音符植物重新激活时，提示玩家并播镜头
	{ config_id = 1026013, name = "GADGET_STATE_CHANGE_26013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_26013", action = "action_EVENT_GADGET_STATE_CHANGE_26013" },
	-- 镜头结束-播放remidner
	{ config_id = 1026014, name = "CUTSCENE_END_26014", event = EventType.EVENT_CUTSCENE_END, source = "201330104", condition = "", action = "action_EVENT_CUTSCENE_END_26014", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 26016, gadget_id = 70360356, pos = { x = 2150.780, y = 546.338, z = 513.566 }, rot = { x = 26.620, y = 154.920, z = 331.659 }, level = 1, state = GadgetState.Action03, server_global_value_config = { ["SGV_NoteSlate_Sound"]= 5} },
		{ config_id = 26020, gadget_id = 70360351, pos = { x = 2172.505, y = 550.683, z = 527.957 }, rot = { x = 12.217, y = 170.359, z = 343.252 }, level = 1 },
		{ config_id = 26021, gadget_id = 70360351, pos = { x = 2151.417, y = 548.621, z = 521.751 }, rot = { x = 347.800, y = 344.018, z = 358.788 }, level = 1 }
	},
	triggers = {
		{ config_id = 1026005, name = "GADGET_STATE_CHANGE_26005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_26005", trigger_count = 0 }
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
		gadgets = { 26011 },
		regions = { 26034 },
		triggers = { "GADGET_STATE_CHANGE_26013", "CUTSCENE_END_26014" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 26001, 26002, 26003, 26004, 26006, 26007, 26008, 26009, 26010, 26012, 26015, 26017, 26018, 26019, 26022, 26023, 26024, 26025, 26026, 26028, 26029, 26030, 26031, 26032, 26033 },
		regions = { 26027 },
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
function condition_EVENT_GADGET_STATE_CHANGE_26013(context, evt)
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 220133026, 26011) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_26013(context, evt)
	-- 通知场景上的所有玩家播放名字为201330104 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 201330104, 22) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : play_cutscene")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CUTSCENE_END_26014(context, evt)
	if evt.param1 == 201330104 and evt.param2 == 1 then
		ScriptLib.ShowReminder(context, 1111288)
		
		ScriptLib.SetGroupVariableValueByGroup(context, "GadgetADie", 1, 220133091)
		
		ScriptLib.KillEntityByConfigId(context, {group_id=220133091, config_id=91001, entity_type=EntityType.GADGET})
	end
	
	return 0
end

require "V2_8/DrawOneLine_Dreamland"