-- 基础信息
local base_info = {
	group_id = 133315053
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
	{ config_id = 53001, gadget_id = 70360001, pos = { x = -699.154, y = 187.339, z = -2749.230 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 16 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 任务开始，播cutscene
	{ config_id = 1053002, name = "QUEST_START_53002", event = EventType.EVENT_QUEST_START, source = "7306640", condition = "", action = "action_EVENT_QUEST_START_53002" },
	-- 播完切操作台状态
	{ config_id = 1053003, name = "CUTSCENE_END_53003", event = EventType.EVENT_CUTSCENE_END, source = "73", condition = "", action = "action_EVENT_CUTSCENE_END_53003" }
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
		gadgets = { 53001 },
		regions = { },
		triggers = { "QUEST_START_53002", "CUTSCENE_END_53003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_START_53002(context, evt)
	-- 通知场景上的所有玩家播放名字为73 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 73, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : play_cutscene")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CUTSCENE_END_53003(context, evt)
	-- 将configid为 53001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 53001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7306640") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end