-- 基础信息
local base_info = {
	group_id = 199003094
}

-- DEFS_MISCS
local        defs = {

        --连线形态
        patterns = 
        {
                --形态1
                [1] = 
                {
                       	[94001] = 94002,
                        	[94002] = 94003,
		[94003] = 94001,
                                [94004] = 94001,
                                [94005] = 94004,
                                
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
	[94001] = { config_id = 94001, gadget_id = 70310454, pos = { x = -641.295, y = 209.583, z = 29.251 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, vision_level = VisionLevelType.VISION_LEVEL_SUPER, area_id = 403 },
	[94002] = { config_id = 94002, gadget_id = 70310454, pos = { x = -736.434, y = 210.631, z = 38.346 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, vision_level = VisionLevelType.VISION_LEVEL_SUPER, area_id = 403 },
	[94003] = { config_id = 94003, gadget_id = 70310454, pos = { x = -734.131, y = 209.583, z = -50.436 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, vision_level = VisionLevelType.VISION_LEVEL_SUPER, area_id = 403 },
	[94004] = { config_id = 94004, gadget_id = 70310454, pos = { x = -635.171, y = 209.583, z = -109.177 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, vision_level = VisionLevelType.VISION_LEVEL_SUPER, area_id = 403 },
	[94005] = { config_id = 94005, gadget_id = 70310454, pos = { x = -559.751, y = 209.583, z = -160.284 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, vision_level = VisionLevelType.VISION_LEVEL_SUPER, area_id = 403 }
}

-- 区域
regions = {
	[94006] = { config_id = 94006, shape = RegionShape.CUBIC, size = { x = 100.000, y = 50.000, z = 100.000 }, pos = { x = -725.703, y = 256.207, z = -0.360 }, area_id = 403 }
}

-- 触发器
triggers = {
	{ config_id = 1094006, name = "ENTER_REGION_94006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_94006", action = "action_EVENT_ENTER_REGION_94006", trigger_count = 0 }
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
		gadgets = { 94001, 94002, 94003, 94004, 94005 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 94006 },
		triggers = { "ENTER_REGION_94006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_94006(context, evt)
	if evt.param1 ~= 94006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_94006(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 199003094, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

require "V2_8/ConstellationPattern"