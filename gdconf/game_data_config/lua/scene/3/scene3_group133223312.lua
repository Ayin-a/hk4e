-- 基础信息
local base_info = {
	group_id = 133223312
}

-- DEFS_MISCS
defs = 
{
        group_id = 133223312,        --当前Group的ID
        isRandom = false,--定义这个组是否会随机取
        child_group = {}, --groupid和需要切到的SuiteID，一一对应
	hasChild = true,
        notifyQuest = true, --修改Group里一个变量
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
	{ config_id = 312001, gadget_id = 70290160, pos = { x = -6277.375, y = 213.436, z = -2993.290 }, rot = { x = 1.925, y = 213.127, z = 357.053 }, level = 33, persistent = true, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 镜头给小象
	{ config_id = 1312002, name = "QUEST_START_312002", event = EventType.EVENT_QUEST_START, source = "7216604", condition = "", action = "action_EVENT_QUEST_START_312002", trigger_count = 0 },
	-- 镜头给阿釜幻影
	{ config_id = 1312003, name = "QUEST_FINISH_312003", event = EventType.EVENT_QUEST_FINISH, source = "7216604", condition = "", action = "action_EVENT_QUEST_FINISH_312003", trigger_count = 0 },
	{ config_id = 1312004, name = "VARIABLE_CHANGE_312004", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_312004", action = "action_EVENT_VARIABLE_CHANGE_312004", trigger_count = 0 },
	{ config_id = 1312005, name = "TIME_AXIS_PASS_312005", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_312005", action = "action_EVENT_TIME_AXIS_PASS_312005" },
	{ config_id = 1312007, name = "QUEST_START_312007", event = EventType.EVENT_QUEST_START, source = "7216637", condition = "", action = "action_EVENT_QUEST_START_312007", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "Notified", value = 0, no_refresh = false },
	{ config_id = 2, name = "Seed", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1312006, name = "QUEST_START_312006", event = EventType.EVENT_QUEST_START, source = "", condition = "", action = "action_EVENT_QUEST_START_312006", trigger_count = 0 }
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
		gadgets = { 312001 },
		regions = { },
		triggers = { "QUEST_START_312002", "QUEST_FINISH_312003", "VARIABLE_CHANGE_312004", "TIME_AXIS_PASS_312005", "QUEST_START_312007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_START_312002(context, evt)
	-- 将configid为 312001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 312001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 变量"Notified"赋值为0
	ScriptLib.SetGroupVariableValue(context, "Notified", 0)
	
	-- 触发镜头注目，注目位置为坐标（-6277.375，213.4355，-2993.29），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-6277.375, y=213.4355, z=-2993.29}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 创建标识为"Start_Toturial"，时间节点为{3}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "Start_Toturial", {3}, false)
	
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_312003(context, evt)
	-- 触发镜头注目，注目位置为坐标（-6285.767，212，-2998.999），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-6285.767, y=212, z=-2998.999}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 1,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_312004(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Notified"为1
	if ScriptLib.GetGroupVariableValue(context, "Notified") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_312004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "set_mission_7216604_finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_312005(context, evt)
	if "Start_Toturial" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_312005(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7010, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_312007(context, evt)
	-- 将configid为 312001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 312001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V2_2/TsurumiBirdFather"