-- 基础信息
local base_info = {
	group_id = 133107932
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
	{ config_id = 932001, gadget_id = 70710111, pos = { x = -360.478, y = 209.169, z = 360.149 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, interact_id = 12, area_id = 7 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1932002, name = "QUEST_START_932002", event = EventType.EVENT_QUEST_START, source = "7180702", condition = "", action = "action_EVENT_QUEST_START_932002", trigger_count = 0 },
	{ config_id = 1932003, name = "GADGET_STATE_CHANGE_932003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_932003", action = "action_EVENT_GADGET_STATE_CHANGE_932003", trigger_count = 0 }
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
		gadgets = { 932001 },
		regions = { },
		triggers = { "QUEST_START_932002" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_932003" },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_START_932002(context, evt)
	-- 改变指定group组133107932中， configid为932001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133107932, 932001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133107932, 2)
	
		-- 移除指定monster
		ScriptLib.RemoveEntityByConfigId(context, 133107801, EntityType.MONSTER, 801007)
	
		
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133107801, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_932003(context, evt)
	if 932001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_932003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133107932") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133107932, 2)
	
	return 0
end