-- 基础信息
local base_info = {
	group_id = 133315151
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
	{ config_id = 151001, gadget_id = 70360001, pos = { x = 362.867, y = 182.695, z = 2277.925 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 任务开始，播cutscene
	{ config_id = 1151002, name = "QUEST_START_151002", event = EventType.EVENT_QUEST_START, source = "7306620", condition = "", action = "action_EVENT_QUEST_START_151002" },
	-- 播完切操作台状态
	{ config_id = 1151003, name = "CUTSCENE_END_151003", event = EventType.EVENT_CUTSCENE_END, source = "72", condition = "", action = "action_EVENT_CUTSCENE_END_151003" }
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
		gadgets = { 151001 },
		regions = { },
		triggers = { "QUEST_START_151002", "CUTSCENE_END_151003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_START_151002(context, evt)
	-- 通知场景上的所有玩家播放名字为72 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 72, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : play_cutscene")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CUTSCENE_END_151003(context, evt)
	-- 将configid为 151001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 151001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end