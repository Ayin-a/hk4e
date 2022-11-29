-- 基础信息
local base_info = {
	group_id = 133303042
}

-- DEFS_MISCS
local DreamStonePlay = {
    LevelTagGroup = 19,
    DreamStoneCid = 42001,
}

-- 在对应LevelTag中操作梦境石发生的切换
local LevelTagState = {
    ["3.0_CaveForest_Dream"] ={
        ChangeTag = 56,
        WeatherStateList = {
            {AreaID = 4045,State =0},
            {AreaID = 4051,State =0},
        },
    },
    ["3.0_CaveForest_Reality"] ={
        ChangeTag = 55,
        WeatherStateList = {
            {AreaID = 4045,State =1},
            {AreaID = 4051,State =1},
        },
    },
}

local KeyQuest = {
    ["Lock"] = {7301712},
    ["Unlock"] ={7301715,7301714},
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
	{ config_id = 42001, gadget_id = 70330237, pos = { x = -1814.090, y = 143.720, z = 3546.934 }, rot = { x = 0.000, y = 180.973, z = 0.000 }, level = 30, persistent = true, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1042002, name = "QUEST_FINISH_42002", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "condition_EVENT_QUEST_FINISH_42002", action = "action_EVENT_QUEST_FINISH_42002" },
	{ config_id = 1042005, name = "GROUP_LOAD_42005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_42005", action = "action_EVENT_GROUP_LOAD_42005" }
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
		gadgets = { 42001 },
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
function condition_EVENT_QUEST_FINISH_42002(context, evt)
	--检查ID为7301704的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 7301704 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_42002(context, evt)
	-- 将configid为 42001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 42001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_42005(context, evt)
	local curQuestState = ScriptLib.GetHostQuestState(context,7301704)
	if -1 == curQuestState or 0 == curQuestState then
	  return false
	end
	if curQuestState ~= 3 then
	   return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_42005(context, evt)
	-- 将configid为 42001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 42001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V3_0/DreamStone"