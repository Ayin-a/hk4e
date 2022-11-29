-- 基础信息
local base_info = {
	group_id = 199003096
}

-- DEFS_MISCS
local        defs = {

        --连线形态
        patterns = 
        {
                --形态1
                [1] = 
                {
                       	[96001] = 96002,
                        	[96002] = 96003,
		[96003] = 96004,
                                [96004] = 96005,
                                [96005] = 96004,
                        
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
	[96001] = { config_id = 96001, gadget_id = 70310179, pos = { x = -637.201, y = 199.936, z = -173.981 }, rot = { x = 354.268, y = 191.631, z = 329.933 }, level = 20, area_id = 403 },
	[96002] = { config_id = 96002, gadget_id = 70310179, pos = { x = -638.243, y = 198.127, z = -184.188 }, rot = { x = 354.422, y = 193.232, z = 343.629 }, level = 20, area_id = 403 },
	[96003] = { config_id = 96003, gadget_id = 70310179, pos = { x = -635.054, y = 194.200, z = -179.843 }, rot = { x = 357.085, y = 190.969, z = 354.289 }, level = 20, area_id = 403 },
	[96004] = { config_id = 96004, gadget_id = 70310179, pos = { x = -632.155, y = 190.163, z = -175.152 }, rot = { x = 4.758, y = 190.202, z = 331.989 }, level = 20, area_id = 403 },
	[96005] = { config_id = 96005, gadget_id = 70310179, pos = { x = -632.747, y = 186.189, z = -187.325 }, rot = { x = 4.758, y = 190.202, z = 331.989 }, level = 20, area_id = 403 },
	[96006] = { config_id = 96006, gadget_id = 70310389, pos = { x = -631.946, y = 193.261, z = -181.450 }, rot = { x = 0.000, y = 197.333, z = 242.208 }, level = 20, area_id = 403 }
}

-- 区域
regions = {
	[96007] = { config_id = 96007, shape = RegionShape.SPHERE, radius = 15, pos = { x = -687.585, y = 167.614, z = -171.395 }, area_id = 403 },
	[96008] = { config_id = 96008, shape = RegionShape.SPHERE, radius = 15, pos = { x = -687.585, y = 167.614, z = -171.395 }, area_id = 403 }
}

-- 触发器
triggers = {
	{ config_id = 1096007, name = "ENTER_REGION_96007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_96007", action = "action_EVENT_ENTER_REGION_96007", trigger_count = 0 },
	{ config_id = 1096008, name = "LEAVE_REGION_96008", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_96008", action = "action_EVENT_LEAVE_REGION_96008", trigger_count = 0 }
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
		gadgets = { 96001, 96002, 96003, 96004, 96005, 96006 },
		regions = { 96008 },
		triggers = { "LEAVE_REGION_96008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 96007 },
		triggers = { "ENTER_REGION_96007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_96007(context, evt)
	if evt.param1 ~= 96007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_96007(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 199003096, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_96008(context, evt)
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_96008(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 199003096, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

require "V2_8/ConstellationPattern"