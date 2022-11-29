-- 基础信息
local base_info = {
	group_id = 155006030
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 30005, monster_id = 20011201, pos = { x = 431.977, y = 143.103, z = -160.620 }, rot = { x = 349.929, y = 43.096, z = 347.256 }, level = 36, drop_tag = "史莱姆", isOneoff = true, area_id = 200 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 30001, gadget_id = 70220050, pos = { x = 431.920, y = 143.103, z = -160.413 }, rot = { x = 0.000, y = 0.211, z = 19.569 }, level = 36, isOneoff = true, persistent = true, area_id = 200 },
	{ config_id = 30002, gadget_id = 70220051, pos = { x = 432.596, y = 143.035, z = -160.895 }, rot = { x = 347.368, y = 17.342, z = 18.154 }, level = 36, isOneoff = true, persistent = true, area_id = 200 },
	{ config_id = 30003, gadget_id = 70220052, pos = { x = 431.315, y = 143.103, z = -159.848 }, rot = { x = 0.000, y = 12.310, z = 0.000 }, level = 36, isOneoff = true, persistent = true, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1030004, name = "ANY_GADGET_DIE_30004", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_30004", action = "action_EVENT_ANY_GADGET_DIE_30004", trigger_count = 0 },
	{ config_id = 1030006, name = "ANY_MONSTER_DIE_30006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_30006", action = "", trigger_count = 0 }
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
		gadgets = { 30001, 30002, 30003 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_30004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 30005 },
		gadgets = { 30001, 30002, 30003 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_30006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_30004(context, evt)
	if 30001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_30004(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 155006030, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_30006(context, evt)
	--判断死亡怪物的configid是否为 30005
	if evt.param1 ~= 30005 then
	    return false
	 end
	  
	
	return true
end