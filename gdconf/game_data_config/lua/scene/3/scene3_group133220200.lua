-- 基础信息
local base_info = {
	group_id = 133220200
}

-- DEFS_MISCS
--第一次交互触发CS
function SLC_PlayCutScene_UnlockSakura(context)
	--标记值为0播CS
	ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : CallPlayCutScene")
	if 0 == ScriptLib.GetGroupVariableValue(context, "HasPlayedCS") then
		ScriptLib.PlayCutScene(context, 25, 0)
		ScriptLib.SetGroupVariableValue(context, "HasPlayedCS", 1)
	end
	return 0
end

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
	{ config_id = 200001, gadget_id = 70290094, pos = { x = -2465.643, y = 449.196, z = -4422.203 }, rot = { x = 0.000, y = 332.221, z = 0.000 }, level = 27, offering_config = {offering_id = 2}, area_id = 11 },
	{ config_id = 200004, gadget_id = 70290149, pos = { x = -2463.980, y = 442.290, z = -4426.020 }, rot = { x = 0.000, y = 296.759, z = 0.000 }, level = 27, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1200002, name = "OFFERING_LEVELUP_200002", event = EventType.EVENT_OFFERING_LEVELUP, source = "", condition = "", action = "action_EVENT_OFFERING_LEVELUP_200002", trigger_count = 0 },
	{ config_id = 1200005, name = "QUEST_FINISH_200005", event = EventType.EVENT_QUEST_FINISH, source = "201310", condition = "", action = "action_EVENT_QUEST_FINISH_200005", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "HasPlayedCS", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 2,
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
		regions = { },
		triggers = { "QUEST_FINISH_200005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 200001, 200004 },
		regions = { },
		triggers = { "OFFERING_LEVELUP_200002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_OFFERING_LEVELUP_200002(context, evt)
	-- 将在groupid为 133220200 中的 configid为 200001 的供奉物件根据stateList对应等级设置其状态
	
	if 2 ~= evt.param1 then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_OfferingLevel")
	  return -1
	end
	if 0 ~=	ScriptLib.SetGroupGadgetStateByConfigId(context, 133220200, 200004, 201) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_OfferingLevel")
	 	return -1
	end	
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_200005(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133220200, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end