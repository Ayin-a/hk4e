-- 基础信息
local base_info = {
	group_id = 199003050
}

-- DEFS_MISCS
local        defs = {

        --连线形态
        patterns = 
        {
                --形态1
                [1] = 
                {
                       	[50001] = 50002,
                        	[50002] = 50003,
		[50003] = 50004,
                                [50004] = 50005,
                                [50005] = 50004,
                        
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
	[50001] = { config_id = 50001, gadget_id = 70310179, pos = { x = -758.338, y = 234.805, z = 75.073 }, rot = { x = 4.758, y = 50.581, z = 331.989 }, level = 20, area_id = 403 },
	[50002] = { config_id = 50002, gadget_id = 70310179, pos = { x = -755.391, y = 231.657, z = 79.371 }, rot = { x = 4.758, y = 50.581, z = 331.989 }, level = 20, area_id = 403 },
	[50003] = { config_id = 50003, gadget_id = 70310179, pos = { x = -760.796, y = 228.981, z = 77.086 }, rot = { x = 4.758, y = 50.581, z = 331.989 }, level = 20, area_id = 403 },
	[50004] = { config_id = 50004, gadget_id = 70310179, pos = { x = -763.114, y = 223.233, z = 79.152 }, rot = { x = 4.758, y = 50.581, z = 331.989 }, level = 20, area_id = 403 },
	[50005] = { config_id = 50005, gadget_id = 70310179, pos = { x = -760.661, y = 219.429, z = 83.513 }, rot = { x = 4.758, y = 50.581, z = 331.989 }, level = 20, area_id = 403 },
	[50006] = { config_id = 50006, gadget_id = 70310389, pos = { x = -761.999, y = 227.954, z = 80.904 }, rot = { x = 0.000, y = 57.712, z = 242.208 }, level = 20, area_id = 403 }
}

-- 区域
regions = {
	[50007] = { config_id = 50007, shape = RegionShape.SPHERE, radius = 15, pos = { x = -729.465, y = 216.564, z = 35.446 }, area_id = 403 },
	[50008] = { config_id = 50008, shape = RegionShape.SPHERE, radius = 15, pos = { x = -729.465, y = 216.564, z = 36.216 }, area_id = 403 }
}

-- 触发器
triggers = {
	{ config_id = 1050007, name = "ENTER_REGION_50007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_50007", action = "action_EVENT_ENTER_REGION_50007", trigger_count = 0 },
	{ config_id = 1050008, name = "LEAVE_REGION_50008", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_50008", action = "action_EVENT_LEAVE_REGION_50008", trigger_count = 0 }
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
		gadgets = { 50001, 50002, 50003, 50004, 50005, 50006 },
		regions = { 50008 },
		triggers = { "LEAVE_REGION_50008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 50007 },
		triggers = { "ENTER_REGION_50007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_50007(context, evt)
	if evt.param1 ~= 50007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_50007(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 199003050, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_50008(context, evt)
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_50008(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 199003050, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

require "V2_8/ConstellationPattern"