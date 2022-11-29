-- 基础信息
local base_info = {
	group_id = 220007007
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
	{ config_id = 61, gadget_id = 70380002, pos = { x = 6.000, y = 32.000, z = 50.000 }, rot = { x = 0.176, y = 72.630, z = 47.000 }, level = 1, route_id = 20007009 },
	{ config_id = 62, gadget_id = 70380002, pos = { x = 5.000, y = 32.000, z = 60.000 }, rot = { x = 0.000, y = 240.790, z = 184.600 }, level = 1, route_id = 20007010 },
	{ config_id = 63, gadget_id = 70380002, pos = { x = 5.000, y = 32.000, z = 70.000 }, rot = { x = 328.730, y = 10.028, z = 332.450 }, level = 1, route_id = 20007011 },
	{ config_id = 64, gadget_id = 70380001, pos = { x = 27.876, y = 28.126, z = 70.465 }, rot = { x = 295.500, y = 15.390, z = 0.000 }, level = 1, route_id = 20007012 },
	{ config_id = 65, gadget_id = 70380001, pos = { x = 30.940, y = 28.243, z = 55.312 }, rot = { x = 0.000, y = 336.310, z = 259.500 }, level = 1, route_id = 20007013 },
	{ config_id = 66, gadget_id = 70360002, pos = { x = 13.874, y = 26.050, z = 73.272 }, rot = { x = 0.000, y = 99.600, z = 0.000 }, level = 1 },
	{ config_id = 67, gadget_id = 70360002, pos = { x = 13.450, y = 26.050, z = 62.001 }, rot = { x = 0.000, y = 95.016, z = 0.000 }, level = 1 },
	{ config_id = 68, gadget_id = 70360002, pos = { x = 12.756, y = 26.050, z = 49.609 }, rot = { x = 0.000, y = 71.670, z = 0.000 }, level = 1 },
	{ config_id = 69, gadget_id = 70360002, pos = { x = 28.554, y = 26.050, z = 50.164 }, rot = { x = 0.000, y = 305.200, z = 0.000 }, level = 1 },
	{ config_id = 70, gadget_id = 70360002, pos = { x = 29.575, y = 26.050, z = 80.831 }, rot = { x = 0.000, y = 232.500, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000029, name = "GADGET_CREATE_29", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_29", action = "action_EVENT_GADGET_CREATE_29", trigger_count = 0 },
	{ config_id = 1000030, name = "SELECT_OPTION_30", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_30", action = "action_EVENT_SELECT_OPTION_30", trigger_count = 0, forbid_guest = false }
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
		gadgets = { 61, 62, 63, 64, 65, 66, 67, 68, 69, 70 },
		regions = { },
		triggers = { "GADGET_CREATE_29", "SELECT_OPTION_30" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_29(context, evt)
	if evt.param1 > 63 and evt.param1 < 71 then
		return true
	else
		return false
	end
end

-- 触发操作
function action_EVENT_GADGET_CREATE_29(context, evt)
	ScriptLib.SetWorktopOptionsByGroupId(context, 220007007, evt.param1, {1,4})
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_30(context, evt)
	if evt.param2 ~= 1 and evt.param2 ~= 4 then
		return false
	end
	if evt.param1 < 64 or evt.param1 > 70 then
		return false
	end
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_30(context, evt)
	local p_id = 0
	if evt.param1 == 66 then
		p_id = 63
	elseif evt.param1 == 67 then
		p_id = 62
	elseif evt.param1 == 68 then
		p_id = 61
	elseif evt.param1 == 69 then
		p_id = 65
	elseif evt.param1 == 70 then
		p_id = 64
	end
	
	if evt.param2 == 1 then
		ScriptLib.StartPlatform(context, p_id)
	elseif evt.param2 == 4 then
		ScriptLib.StopPlatform(context, p_id)
	end
	return 0
end