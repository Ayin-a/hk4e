-- 基础信息
local base_info = {
	group_id = 133209043
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
	{ config_id = 43001, gadget_id = 70360286, pos = { x = -2469.938, y = 203.488, z = -3896.284 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 43004, gadget_id = 71700226, pos = { x = -2469.651, y = 203.456, z = -3896.684 }, rot = { x = 0.000, y = 285.702, z = 0.000 }, level = 27, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1043002, name = "GADGET_CREATE_43002", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_43002", action = "action_EVENT_GADGET_CREATE_43002", trigger_count = 0 },
	{ config_id = 1043003, name = "SELECT_OPTION_43003", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_43003", action = "action_EVENT_SELECT_OPTION_43003", trigger_count = 0 }
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
		gadgets = { 43001 },
		regions = { },
		triggers = { "GADGET_CREATE_43002", "SELECT_OPTION_43003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 43004 },
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
function condition_EVENT_GADGET_CREATE_43002(context, evt)
	if 43001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_43002(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133209043, 43001, {75}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_43003(context, evt)
	-- 判断是gadgetid 43001 option_id 75
	if 43001 ~= evt.param1 then
		return false	
	end
	
	if 75 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_43003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q72809_YIGNDICHUANSONG") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将使用操作台的玩家传送至目标点
		if evt.uid ~= nil then
	    local t_pos = {x=-2634.26, y=204.488, z=-3803.538}
	    if 0 ~= ScriptLib.TransPlayerToPos(context, {uid_list = {evt.uid}, pos = t_pos, rot = {x=0, y=-38.088, z=0}}) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : trans_player_byOption")
	      return -1
	    end
	  else
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : trans_player_byOption")
	    return -1
	  end
	
	return 0
end