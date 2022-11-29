-- 基础信息
local base_info = {
	group_id = 133309481
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
	{ config_id = 481001, gadget_id = 70330407, pos = { x = -2289.311, y = 190.957, z = 5489.456 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStart, server_global_value_config = {SGV_BulletType = 1}, area_id = 27 },
	{ config_id = 481005, gadget_id = 70330407, pos = { x = -2289.311, y = 190.957, z = 5489.456 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1481004, name = "QUEST_START_481004", event = EventType.EVENT_QUEST_START, source = "7308310", condition = "", action = "action_EVENT_QUEST_START_481004", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	regions = {
		{ config_id = 481002, shape = RegionShape.CUBIC, size = { x = 12.000, y = 30.000, z = 50.000 }, pos = { x = -2288.713, y = 200.981, z = 5501.322 }, area_id = 27 },
		{ config_id = 481003, shape = RegionShape.CUBIC, size = { x = 12.000, y = 30.000, z = 50.000 }, pos = { x = -2288.713, y = 200.981, z = 5501.322 }, area_id = 27 }
	},
	triggers = {
		{ config_id = 1481002, name = "ENTER_REGION_481002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_481002", action = "action_EVENT_ENTER_REGION_481002", trigger_count = 0 },
		{ config_id = 1481003, name = "LEAVE_REGION_481003", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "", action = "action_EVENT_LEAVE_REGION_481003", trigger_count = 0 }
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
		gadgets = { 481001 },
		regions = { },
		triggers = { "QUEST_START_481004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 481005 },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_START_481004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133309481, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end