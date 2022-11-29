-- 基础信息
local base_info = {
	group_id = 155006081
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 81001, monster_id = 20010501, pos = { x = 411.607, y = 138.342, z = -228.907 }, rot = { x = 349.584, y = 286.027, z = 357.496 }, level = 36, drop_tag = "史莱姆", isOneoff = true, area_id = 200 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 81002, gadget_id = 70220050, pos = { x = 411.634, y = 138.322, z = -229.059 }, rot = { x = 353.105, y = 143.045, z = 0.877 }, level = 36, isOneoff = true, persistent = true, area_id = 200 },
	{ config_id = 81003, gadget_id = 70220051, pos = { x = 411.033, y = 138.633, z = -228.266 }, rot = { x = 10.026, y = 206.073, z = 13.461 }, level = 36, isOneoff = true, persistent = true, area_id = 200 },
	{ config_id = 81004, gadget_id = 70220052, pos = { x = 410.852, y = 138.476, z = -228.731 }, rot = { x = 345.879, y = 5.277, z = 350.938 }, level = 36, isOneoff = true, persistent = true, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1081005, name = "ANY_GADGET_DIE_81005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_81005", action = "action_EVENT_ANY_GADGET_DIE_81005", trigger_count = 0 },
	{ config_id = 1081006, name = "ANY_MONSTER_DIE_81006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_81006", action = "", trigger_count = 0 }
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
		gadgets = { 81002, 81003, 81004 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_81005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 81001 },
		gadgets = { 81002, 81003, 81004 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_81006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_81005(context, evt)
	if 81002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_81005(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 155006081, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_81006(context, evt)
	--判断死亡怪物的configid是否为 81001
	if evt.param1 ~= 81001 then
	    return false
	 end
	  
	
	return true
end