-- 基础信息
local base_info = {
	group_id = 111101255
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
	{ config_id = 255001, gadget_id = 70360002, pos = { x = 2594.024, y = 317.991, z = -773.581 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 255002, gadget_id = 70360001, pos = { x = 2579.683, y = 318.410, z = -742.557 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	-- 传送玩家到定点
	{ config_id = 255003, shape = RegionShape.SPHERE, radius = 3, pos = { x = 2582.813, y = 319.084, z = -748.371 } }
}

-- 触发器
triggers = {
	-- 传送玩家到定点
	{ config_id = 1255003, name = "ENTER_REGION_255003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_255003", action = "action_EVENT_ENTER_REGION_255003", trigger_count = 0 },
	-- 创建selectoption
	{ config_id = 1255004, name = "GADGET_CREATE_255004", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_255004", action = "action_EVENT_GADGET_CREATE_255004", trigger_count = 0 },
	-- 玩家选择“传送”选项，直接传送玩家位置
	{ config_id = 1255005, name = "SELECT_OPTION_255005", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_255005", action = "action_EVENT_SELECT_OPTION_255005", trigger_count = 0 }
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
		gadgets = { 255001, 255002 },
		regions = { 255003 },
		triggers = { "ENTER_REGION_255003", "GADGET_CREATE_255004", "SELECT_OPTION_255005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_255003(context, evt)
	if evt.param1 ~= 255003 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_255003(context, evt)
	-- 将使用操作台的玩家传送至目标点
		if evt.uid ~= nil then
	    local t_pos = {x=2594.024, y=317.9908, z=-773.5813}
	    if 0 ~= ScriptLib.TransPlayerToPos(context, {uid_list = {evt.uid}, pos = t_pos, rot = {x=0, y=0, z=0}}) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : trans_player_byOption")
	      return -1
	    end
	  else
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : trans_player_byOption")
	    return -1
	  end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_255004(context, evt)
	if 255002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_255004(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 111101255, 255002, {4005}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_255005(context, evt)
	-- 判断是gadgetid 255002 option_id 4005
	if 255002 ~= evt.param1 then
		return false	
	end
	
	if 4005 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_255005(context, evt)
	-- 将使用操作台的玩家传送至目标点
		if evt.uid ~= nil then
	    local t_pos = {x=2594.024, y=317.9908, z=-773.5813}
	    if 0 ~= ScriptLib.TransPlayerToPos(context, {uid_list = {evt.uid}, pos = t_pos, rot = {x=0, y=0, z=0}}) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : trans_player_byOption")
	      return -1
	    end
	  else
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : trans_player_byOption")
	    return -1
	  end
	
	return 0
end