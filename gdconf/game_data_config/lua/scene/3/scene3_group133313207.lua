-- 基础信息
local base_info = {
	group_id = 133313207
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
	{ config_id = 207001, gadget_id = 70360001, pos = { x = -765.719, y = -338.522, z = 5438.380 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 32 },
	{ config_id = 207004, gadget_id = 71700288, pos = { x = -765.690, y = -338.522, z = 5438.346 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1207002, name = "GADGET_CREATE_207002", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_207002", action = "action_EVENT_GADGET_CREATE_207002", trigger_count = 0 },
	{ config_id = 1207003, name = "SELECT_OPTION_207003", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_207003", action = "action_EVENT_SELECT_OPTION_207003", trigger_count = 0 }
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
		gadgets = { 207001, 207004 },
		regions = { },
		triggers = { "GADGET_CREATE_207002", "SELECT_OPTION_207003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_207002(context, evt)
	if 207001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_207002(context, evt)
	ScriptLib.SetWorktopOptionsByGroupId(context, 133313207, 207001, {7})
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_207003(context, evt)
	-- 判断是gadgetid 207001 option_id 7
	if 207001 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_207003(context, evt)
	ScriptLib.AddQuestProgress(context, "7318349")
	
	ScriptLib.DelWorktopOptionByGroupId(context, 133313207, 207001, 7)
	
	return 0
end