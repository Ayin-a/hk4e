-- 基础信息
local base_info = {
	group_id = 199003049
}

-- DEFS_MISCS
local        defs = {

        --连线形态
        patterns = 
        {
                --形态1
                [1] = 
                {
                       	[49001] = 49002,
                        	[49002] = 49003,
		[49003] = 49004,
                                [49004] = 49001,
                                [49005] = 49002,
                                [49006] = 49005,
                [49010] = 49006,
                },
                --形态2
                [2] = 
                {
                       	[35001] = 35003,
                        	[35002] = 35004,
		[35003] = 35004,
                                [35004] = 35006,
                                [35005] = 35001,
                                [35006] = 35001,
                },
        }

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
	[49001] = { config_id = 49001, gadget_id = 70310179, pos = { x = -584.462, y = 242.184, z = 41.436 }, rot = { x = 356.414, y = 2.983, z = 25.475 }, level = 20, area_id = 403 },
	[49002] = { config_id = 49002, gadget_id = 70310179, pos = { x = -582.963, y = 238.311, z = 37.192 }, rot = { x = 356.414, y = 2.983, z = 25.475 }, level = 20, area_id = 403 },
	[49003] = { config_id = 49003, gadget_id = 70310179, pos = { x = -580.789, y = 234.496, z = 41.523 }, rot = { x = 356.414, y = 2.983, z = 25.475 }, level = 20, area_id = 403 },
	[49004] = { config_id = 49004, gadget_id = 70310179, pos = { x = -582.549, y = 238.998, z = 46.241 }, rot = { x = 356.414, y = 2.983, z = 25.475 }, level = 20, area_id = 403 },
	[49005] = { config_id = 49005, gadget_id = 70310179, pos = { x = -579.965, y = 231.154, z = 32.135 }, rot = { x = 356.414, y = 2.983, z = 25.475 }, level = 20, area_id = 403 },
	[49006] = { config_id = 49006, gadget_id = 70310179, pos = { x = -576.401, y = 224.392, z = 36.270 }, rot = { x = 356.414, y = 2.983, z = 25.475 }, level = 20, area_id = 403 },
	[49007] = { config_id = 49007, gadget_id = 70310389, pos = { x = -581.549, y = 232.448, z = 38.079 }, rot = { x = 0.068, y = 359.982, z = 119.252 }, level = 20, area_id = 403 },
	[49010] = { config_id = 49010, gadget_id = 70310179, pos = { x = -577.592, y = 228.301, z = 44.477 }, rot = { x = 356.414, y = 2.983, z = 25.475 }, level = 20, area_id = 403 }
}

-- 区域
regions = {
	[49008] = { config_id = 49008, shape = RegionShape.SPHERE, radius = 20, pos = { x = -636.917, y = 206.528, z = 31.152 }, area_id = 403 },
	[49009] = { config_id = 49009, shape = RegionShape.SPHERE, radius = 20, pos = { x = -636.917, y = 206.528, z = 31.152 }, area_id = 403 }
}

-- 触发器
triggers = {
	{ config_id = 1049008, name = "ENTER_REGION_49008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_49008", action = "action_EVENT_ENTER_REGION_49008", trigger_count = 0 },
	{ config_id = 1049009, name = "LEAVE_REGION_49009", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_49009", action = "action_EVENT_LEAVE_REGION_49009", trigger_count = 0 }
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
	end_suite = 1,
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
		gadgets = { 49001, 49002, 49003, 49004, 49005, 49006, 49007, 49010 },
		regions = { 49009 },
		triggers = { "LEAVE_REGION_49009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 49008 },
		triggers = { "ENTER_REGION_49008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_49008(context, evt)
	if evt.param1 ~= 49008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_49008(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 199003049, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_49009(context, evt)
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_49009(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 199003049, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

require "V2_8/ConstellationPattern"