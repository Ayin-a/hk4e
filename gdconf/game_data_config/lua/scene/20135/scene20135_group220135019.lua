-- 基础信息
local base_info = {
	group_id = 220135019
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
	{ config_id = 19001, gadget_id = 70300057, pos = { x = 107.823, y = -216.030, z = 691.474 }, rot = { x = 0.000, y = 186.003, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 19002, shape = RegionShape.CUBIC, size = { x = 50.000, y = 50.000, z = 200.000 }, pos = { x = 110.221, y = -218.253, z = 608.393 } },
	{ config_id = 19003, shape = RegionShape.CUBIC, size = { x = 50.000, y = 50.000, z = 200.000 }, pos = { x = 112.367, y = -215.869, z = 608.393 } }
}

-- 触发器
triggers = {
	{ config_id = 1019002, name = "ENTER_REGION_19002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_19002", action = "action_EVENT_ENTER_REGION_19002", trigger_count = 0 },
	{ config_id = 1019003, name = "LEAVE_REGION_19003", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "", action = "action_EVENT_LEAVE_REGION_19003", trigger_count = 0 }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 19002 },
		triggers = { "ENTER_REGION_19002" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 19001 },
		regions = { 19003 },
		triggers = { "LEAVE_REGION_19003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_19002(context, evt)
	if evt.param1 ~= 19002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_19002(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220135019, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_LEAVE_REGION_19003(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220135019, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end