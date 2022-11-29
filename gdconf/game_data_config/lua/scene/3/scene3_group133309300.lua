-- 基础信息
local base_info = {
	group_id = 133309300
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
	{ config_id = 300001, gadget_id = 70330407, pos = { x = -2289.302, y = 189.612, z = 5553.558 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, state = GadgetState.GearStart, server_global_value_config = {SGV_BulletType = 2}, area_id = 27 },
	{ config_id = 300005, gadget_id = 70330407, pos = { x = -2289.302, y = 189.612, z = 5553.558 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1300004, name = "QUEST_START_300004", event = EventType.EVENT_QUEST_START, source = "7308310", condition = "", action = "action_EVENT_QUEST_START_300004", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	regions = {
		{ config_id = 300002, shape = RegionShape.CUBIC, size = { x = 54.000, y = 30.000, z = 33.000 }, pos = { x = -2286.800, y = 198.430, z = 5551.890 }, area_id = 27 },
		{ config_id = 300003, shape = RegionShape.CUBIC, size = { x = 54.000, y = 30.000, z = 33.000 }, pos = { x = -2286.800, y = 198.430, z = 5551.890 }, area_id = 27 }
	},
	triggers = {
		{ config_id = 1300002, name = "ENTER_REGION_300002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_300002", action = "action_EVENT_ENTER_REGION_300002", trigger_count = 0 },
		{ config_id = 1300003, name = "LEAVE_REGION_300003", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "", action = "action_EVENT_LEAVE_REGION_300003", trigger_count = 0 }
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
		gadgets = { 300001 },
		regions = { },
		triggers = { "QUEST_START_300004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 300005 },
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
function action_EVENT_QUEST_START_300004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133309300, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end