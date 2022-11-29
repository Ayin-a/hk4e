-- 基础信息
local base_info = {
	group_id = 133309603
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 603005, monster_id = 28010201, pos = { x = -2317.664, y = -72.246, z = 6012.875 }, rot = { x = 0.000, y = 13.378, z = 0.000 }, level = 32, drop_tag = "采集动物", area_id = 27 },
	{ config_id = 603006, monster_id = 28010203, pos = { x = -2322.306, y = -72.896, z = 6007.320 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "采集动物", area_id = 27 },
	{ config_id = 603010, monster_id = 28010202, pos = { x = -2317.320, y = -72.299, z = 6013.089 }, rot = { x = 0.000, y = 297.749, z = 0.000 }, level = 32, drop_tag = "采集动物", area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 603001, gadget_id = 70330266, pos = { x = -2311.374, y = -73.034, z = 6018.034 }, rot = { x = 341.524, y = 2.235, z = 357.102 }, level = 32, area_id = 27 },
	{ config_id = 603002, gadget_id = 70330266, pos = { x = -2317.307, y = -72.519, z = 6012.907 }, rot = { x = 334.818, y = 336.280, z = 346.931 }, level = 32, area_id = 27 },
	{ config_id = 603003, gadget_id = 70330266, pos = { x = -2322.280, y = -72.956, z = 6007.625 }, rot = { x = 21.792, y = 149.133, z = 0.176 }, level = 32, area_id = 27 },
	{ config_id = 603004, gadget_id = 70330342, pos = { x = -2311.594, y = -73.106, z = 6018.085 }, rot = { x = 342.773, y = 0.638, z = 355.787 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1603007, name = "ANY_GADGET_DIE_603007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_603007", action = "action_EVENT_ANY_GADGET_DIE_603007", trigger_count = 0 },
	{ config_id = 1603008, name = "ANY_GADGET_DIE_603008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_603008", action = "action_EVENT_ANY_GADGET_DIE_603008", trigger_count = 0 },
	{ config_id = 1603009, name = "ANY_GADGET_DIE_603009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_603009", action = "action_EVENT_ANY_GADGET_DIE_603009", trigger_count = 0 }
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
		gadgets = { 603001, 603002, 603003 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_603007", "ANY_GADGET_DIE_603008", "ANY_GADGET_DIE_603009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 603005, 603010 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 603006 },
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
function condition_EVENT_ANY_GADGET_DIE_603007(context, evt)
	if 603003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_603007(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133309603, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_603008(context, evt)
	if 603002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_603008(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133309603, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_603009(context, evt)
	if 603001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_603009(context, evt)
	-- 创建id为603004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 603004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end