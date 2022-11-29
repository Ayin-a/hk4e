-- 基础信息
local base_info = {
	group_id = 133209045
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
	{ config_id = 45001, gadget_id = 70360286, pos = { x = -2634.154, y = 204.168, z = -3803.630 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 45002, gadget_id = 71700226, pos = { x = -2634.212, y = 204.173, z = -3803.590 }, rot = { x = 0.000, y = 126.456, z = 0.000 }, level = 27, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1045003, name = "GADGET_CREATE_45003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_45003", action = "action_EVENT_GADGET_CREATE_45003", trigger_count = 0 },
	{ config_id = 1045004, name = "SELECT_OPTION_45004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_45004", action = "action_EVENT_SELECT_OPTION_45004", trigger_count = 0 }
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
		gadgets = { 45001 },
		regions = { },
		triggers = { "GADGET_CREATE_45003", "SELECT_OPTION_45004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 45002 },
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
function condition_EVENT_GADGET_CREATE_45003(context, evt)
	if 45001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_45003(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133209045, 45001, {76}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_45004(context, evt)
	-- 判断是gadgetid 45001 option_id 76
	if 45001 ~= evt.param1 then
		return false	
	end
	
	if 76 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_45004(context, evt)
	-- 将使用操作台的玩家传送至目标点
		if evt.uid ~= nil then
	    local t_pos = {x=-2469.81, y=203.723, z=-3896.554}
	    if 0 ~= ScriptLib.TransPlayerToPos(context, {uid_list = {evt.uid}, pos = t_pos, rot = {x=0, y=14.558, z=0}}) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : trans_player_byOption")
	      return -1
	    end
	  else
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : trans_player_byOption")
	    return -1
	  end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q72809_JVMINGQUCHUANSONG") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end