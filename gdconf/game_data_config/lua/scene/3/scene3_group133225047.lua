-- 基础信息
local base_info = {
	group_id = 133225047
}

-- DEFS_MISCS
defs = {
        group_id = 133225047,        --当前Group的ID
        isRandom = false,--定义这个组是否会随机取
        child_group = {}, --groupid和需要切到的SuiteID，一一对应
        notifyQuest = true, --修改Group里一个变量
        hasChild = true, --表示是否切当前Group的suite，true表示切自己的
        selfSuiteId = 2, --需要切的自己的suite
        hasMultiStatues = false, --是否有多个雷鸟雕像
        statuesMap = 
        {
                [10001] = 2, --雷鸟雕像和需要切出来的Suite的对应表
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
	{ config_id = 47001, gadget_id = 70290160, pos = { x = -6398.551, y = 200.899, z = -2792.415 }, rot = { x = 0.000, y = 24.534, z = 353.430 }, level = 33, persistent = true, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1047002, name = "VARIABLE_CHANGE_47002", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_47002", action = "action_EVENT_VARIABLE_CHANGE_47002", trigger_count = 0 },
	-- 任务激活雕像
	{ config_id = 1047003, name = "QUEST_START_47003", event = EventType.EVENT_QUEST_START, source = "7216641", condition = "", action = "action_EVENT_QUEST_START_47003", trigger_count = 0 },
	-- 任务完成，雕像灭掉
	{ config_id = 1047004, name = "QUEST_START_47004", event = EventType.EVENT_QUEST_START, source = "7216610", condition = "condition_EVENT_QUEST_START_47004", action = "action_EVENT_QUEST_START_47004" }
}

-- 变量
variables = {
	{ config_id = 1, name = "Notified", value = 0, no_refresh = false },
	{ config_id = 2, name = "Seed", value = 0, no_refresh = true },
	{ config_id = 3, name = "quest_finish", value = 0, no_refresh = true }
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
		gadgets = { 47001 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_47002", "QUEST_START_47003", "QUEST_START_47004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_47002(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Notified"为1
	if ScriptLib.GetGroupVariableValue(context, "Notified") ~= 1 then
			return false
	end
	
	-- 判断变量"quest_finish"为0
	if ScriptLib.GetGroupVariableValue(context, "quest_finish") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_47002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "72166_AreaA_ItemUse") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（-6409.559，201.8235，-2782.41），持续时间为4秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-6409.559, y=201.8235, z=-2782.41}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 4, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_47003(context, evt)
	-- 将configid为 47001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 47001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "Notified" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Notified", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_47004(context, evt)
	-- 判断变量"quest_finish"为0
	if ScriptLib.GetGroupVariableValue(context, "quest_finish") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_47004(context, evt)
	-- 将本组内变量名为 "quest_finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "quest_finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 47001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 47001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V2_2/TsurumiBirdFather"