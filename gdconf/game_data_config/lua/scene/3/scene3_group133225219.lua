-- 基础信息
local base_info = {
	group_id = 133225219
}

-- DEFS_MISCS
defs = {
        group_id = 133225219,        --当前Group的ID
        isRandom = false,--定义这个组是否会随机取
        child_group = {[133223371] = 2}, --groupid和需要切到的SuiteID，一一对应
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
	{ config_id = 219001, gadget_id = 70290160, pos = { x = -6417.549, y = 199.806, z = -2384.307 }, rot = { x = 2.538, y = 169.647, z = 1.987 }, level = 33, persistent = true, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 雕像被羽毛激活触发
	{ config_id = 1219002, name = "VARIABLE_CHANGE_219002", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_219002", action = "action_EVENT_VARIABLE_CHANGE_219002" },
	{ config_id = 1219003, name = "QUEST_START_219003", event = EventType.EVENT_QUEST_START, source = "7220803", condition = "condition_EVENT_QUEST_START_219003", action = "action_EVENT_QUEST_START_219003", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "Seed", value = 0, no_refresh = true },
	{ config_id = 2, name = "Notified", value = 0, no_refresh = false }
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
		gadgets = { 219001 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_219002", "QUEST_START_219003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_219002(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Notified"为1
	if ScriptLib.GetGroupVariableValue(context, "Notified") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_219002(context, evt)
	-- 触发镜头注目，注目位置为坐标（-6430，200，-2386），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-6430, y=200, z=-2386}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_219003(context, evt)
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133225219, 219001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_219003(context, evt)
	-- 将configid为 219001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 219001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V2_2/TsurumiBirdFather"