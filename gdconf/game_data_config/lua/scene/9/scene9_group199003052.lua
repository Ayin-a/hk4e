-- 基础信息
local base_info = {
	group_id = 199003052
}

-- DEFS_MISCS
local        defs = {

        --连线形态
        patterns = 
        {
                --形态1
                [1] = 
                {
                       	[52001] = 52002,
                        	[52002] = 52003,
		[52003] = 52004,
                                [52004] = 52003,
                        
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
	[52001] = { config_id = 52001, gadget_id = 70310179, pos = { x = -736.531, y = 225.091, z = -111.171 }, rot = { x = 355.400, y = 93.849, z = 50.552 }, level = 20, area_id = 403 },
	[52002] = { config_id = 52002, gadget_id = 70310179, pos = { x = -741.952, y = 237.531, z = -101.406 }, rot = { x = 355.400, y = 93.849, z = 50.552 }, level = 20, area_id = 403 },
	[52003] = { config_id = 52003, gadget_id = 70310179, pos = { x = -747.887, y = 228.107, z = -106.746 }, rot = { x = 355.400, y = 93.849, z = 50.552 }, level = 20, area_id = 403 },
	[52004] = { config_id = 52004, gadget_id = 70310179, pos = { x = -753.456, y = 233.770, z = -103.579 }, rot = { x = 355.400, y = 93.849, z = 50.552 }, level = 20, area_id = 403 },
	[52007] = { config_id = 52007, gadget_id = 70310389, pos = { x = -744.942, y = 229.846, z = -106.208 }, rot = { x = 355.400, y = 93.849, z = 138.879 }, level = 20, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 403 }
}

-- 区域
regions = {
	[52005] = { config_id = 52005, shape = RegionShape.SPHERE, radius = 20, pos = { x = -735.050, y = 196.695, z = -44.052 }, area_id = 403 },
	[52006] = { config_id = 52006, shape = RegionShape.SPHERE, radius = 20, pos = { x = -735.050, y = 196.695, z = -44.052 }, area_id = 403 }
}

-- 触发器
triggers = {
	{ config_id = 1052005, name = "ENTER_REGION_52005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_52005", action = "action_EVENT_ENTER_REGION_52005", trigger_count = 0 },
	{ config_id = 1052006, name = "LEAVE_REGION_52006", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_52006", action = "action_EVENT_LEAVE_REGION_52006", trigger_count = 0 }
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
		gadgets = { 52001, 52002, 52003, 52004, 52007 },
		regions = { 52006 },
		triggers = { "LEAVE_REGION_52006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 52005 },
		triggers = { "ENTER_REGION_52005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_52005(context, evt)
	if evt.param1 ~= 52005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_52005(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 199003052, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_52006(context, evt)
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_52006(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 199003052, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

require "V2_8/ConstellationPattern"