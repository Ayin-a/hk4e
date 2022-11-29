-- 基础信息
local base_info = {
	group_id = 155006078
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 78001, monster_id = 20011201, pos = { x = 432.055, y = 144.060, z = -161.979 }, rot = { x = 0.000, y = 40.836, z = 0.000 }, level = 36, drop_tag = "史莱姆", isOneoff = true, area_id = 200 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 78002, gadget_id = 70220050, pos = { x = 432.031, y = 143.710, z = -161.966 }, rot = { x = 350.170, y = 0.736, z = 351.459 }, level = 36, isOneoff = true, persistent = true, area_id = 200 },
	{ config_id = 78003, gadget_id = 70220051, pos = { x = 431.691, y = 143.205, z = -160.990 }, rot = { x = 15.914, y = 197.108, z = 344.120 }, level = 36, isOneoff = true, persistent = true, area_id = 200 },
	{ config_id = 78004, gadget_id = 70220052, pos = { x = 432.075, y = 143.113, z = -163.164 }, rot = { x = 359.121, y = 0.521, z = 358.202 }, level = 36, isOneoff = true, persistent = true, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1078005, name = "ANY_GADGET_DIE_78005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_78005", action = "action_EVENT_ANY_GADGET_DIE_78005", trigger_count = 0 },
	{ config_id = 1078006, name = "ANY_MONSTER_DIE_78006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_78006", action = "", trigger_count = 0 }
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
		gadgets = { 78002, 78003, 78004 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_78005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 78001 },
		gadgets = { 78002, 78003, 78004 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_78006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_78005(context, evt)
	if 78002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_78005(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 155006078, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_78006(context, evt)
	--判断死亡怪物的configid是否为 78001
	if evt.param1 ~= 78001 then
	    return false
	 end
	  
	
	return true
end