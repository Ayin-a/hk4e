-- 基础信息
local base_info = {
	group_id = 133209046
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
	{ config_id = 46001, gadget_id = 70360286, pos = { x = -2438.643, y = 200.431, z = -3864.266 }, rot = { x = 0.000, y = 180.523, z = 0.000 }, level = 27, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1046003, name = "GADGET_CREATE_46003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_46003", action = "action_EVENT_GADGET_CREATE_46003", trigger_count = 0 },
	{ config_id = 1046004, name = "SELECT_OPTION_46004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_46004", action = "action_EVENT_SELECT_OPTION_46004", trigger_count = 0 }
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
		gadgets = { 46001 },
		regions = { },
		triggers = { "GADGET_CREATE_46003", "SELECT_OPTION_46004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
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
function condition_EVENT_GADGET_CREATE_46003(context, evt)
	if 46001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_46003(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133209046, 46001, {77}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_46004(context, evt)
	-- 判断是gadgetid 46001 option_id 77
	if 46001 ~= evt.param1 then
		return false	
	end
	
	if 77 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_46004(context, evt)
	-- 将使用操作台的玩家传送至目标点
		if evt.uid ~= nil then
	    local t_pos = {x=-2368.54, y=199.86, z=-4151.15}
	    if 0 ~= ScriptLib.TransPlayerToPos(context, {uid_list = {evt.uid}, pos = t_pos, rot = {x=0, y=-166.322, z=0}}) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : trans_player_byOption")
	      return -1
	    end
	  else
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : trans_player_byOption")
	    return -1
	  end
	
	return 0
end