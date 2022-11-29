-- 基础信息
local base_info = {
	group_id = 133301103
}

-- DEFS_MISCS
local DreamStonePlay = {
    LevelTagGroup = 20,
    DreamStoneCid = 103006,
}

-- 在对应LevelTag中操作梦境石发生的切换
local LevelTagState = {
    ["3.0_Mdg_dream"] ={
        ChangeTag = 57,
        WeatherStateList = {},
    },
    ["3.0_Mdg_real"] ={
        ChangeTag = 58,
        WeatherStateList = {},    
    },
}

local KeyQuest = {
    ["Lock"] = {},
    ["Unlock"] ={},
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
	{ config_id = 103001, gadget_id = 70360001, pos = { x = -898.667, y = -5.632, z = 3154.070 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 103002, gadget_id = 70360001, pos = { x = -903.366, y = -5.630, z = 3153.089 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 103003, gadget_id = 70360001, pos = { x = -899.875, y = -5.632, z = 3154.810 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 103004, gadget_id = 70360001, pos = { x = -897.444, y = -5.634, z = 3156.252 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 103005, gadget_id = 70360001, pos = { x = -890.415, y = -5.636, z = 3154.958 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 103006, gadget_id = 70330237, pos = { x = -889.037, y = -5.627, z = 3157.041 }, rot = { x = 0.000, y = 222.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1103008, name = "QUEST_FINISH_103008", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "condition_EVENT_QUEST_FINISH_103008", action = "action_EVENT_QUEST_FINISH_103008" },
	{ config_id = 1103009, name = "TIME_AXIS_PASS_103009", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_103009", action = "action_EVENT_TIME_AXIS_PASS_103009" }
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
	suite = 2,
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
		gadgets = { 103001, 103002, 103003, 103006 },
		regions = { },
		triggers = { "QUEST_FINISH_103008", "TIME_AXIS_PASS_103009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 103004 },
		regions = { },
		triggers = { "QUEST_FINISH_103008", "TIME_AXIS_PASS_103009" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 103005 },
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
function condition_EVENT_QUEST_FINISH_103008(context, evt)
	--检查ID为7307725的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 7307725 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_103008(context, evt)
	-- 创建标识为"delay"，时间节点为{2}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "delay", {2}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_103009(context, evt)
	if "delay" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_103009(context, evt)
	-- 触发镜头注目，注目位置为坐标{x=-889.037, y=-4.527, z=3157.041}，持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-889.037, y=-4.527, z=3157.041}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

require "V3_0/DreamStone"