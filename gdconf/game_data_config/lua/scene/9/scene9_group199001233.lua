-- 基础信息
local base_info = {
	group_id = 199001233
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
	{ config_id = 233010, npc_id = 12716, pos = { x = 122.878, y = 120.830, z = -181.355 }, rot = { x = 0.000, y = 30.897, z = 0.000 }, area_id = 401 }
}

-- 装置
gadgets = {
	{ config_id = 233001, gadget_id = 70310018, pos = { x = 144.190, y = 120.029, z = -164.072 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 233003, gadget_id = 70500000, pos = { x = 122.501, y = 120.784, z = -180.871 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 2006, isOneoff = true, persistent = true, area_id = 401 },
	{ config_id = 233004, gadget_id = 70500000, pos = { x = 122.185, y = 120.784, z = -181.165 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 2006, isOneoff = true, persistent = true, area_id = 401 },
	{ config_id = 233005, gadget_id = 70500000, pos = { x = 122.530, y = 120.833, z = -181.193 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 2006, isOneoff = true, persistent = true, area_id = 401 },
	{ config_id = 233006, gadget_id = 70500000, pos = { x = 122.267, y = 120.822, z = -181.545 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 2006, isOneoff = true, persistent = true, area_id = 401 },
	{ config_id = 233008, gadget_id = 71700454, pos = { x = 122.854, y = 120.832, z = -181.394 }, rot = { x = 7.681, y = 30.491, z = 0.000 }, level = 20, isOneoff = true, persistent = true, area_id = 401 }
}

-- 区域
regions = {
	{ config_id = 233007, shape = RegionShape.SPHERE, radius = 81, pos = { x = 140.698, y = 120.251, z = -151.707 }, area_id = 401 }
}

-- 触发器
triggers = {
	{ config_id = 1233007, name = "LEAVE_REGION_233007", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_233007", action = "action_EVENT_LEAVE_REGION_233007" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	npcs = {
		{ config_id = 233009, npc_id = 10213, pos = { x = 122.916, y = 120.816, z = -181.322 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 401 }
	},
	triggers = {
		{ config_id = 1233002, name = "QUEST_FINISH_233002", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "", action = "" }
	}
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
		gadgets = { 233001 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 233001 },
		regions = { 233007 },
		triggers = { "LEAVE_REGION_233007" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 233001, 233003, 233004, 233005, 233006, 233008 },
		regions = { },
		triggers = { },
		npcs = { 233010 },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_LEAVE_REGION_233007(context, evt)
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_233007(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 199001233, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end