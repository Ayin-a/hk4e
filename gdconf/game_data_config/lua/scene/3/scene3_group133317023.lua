-- 基础信息
local base_info = {
	group_id = 133317023
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
}

-- 区域
regions = {
	{ config_id = 23001, shape = RegionShape.SPHERE, radius = 50, pos = { x = 602.935, y = 496.133, z = 5704.209 }, area_id = 30 }
}

-- 触发器
triggers = {
	{ config_id = 1023001, name = "ENTER_REGION_23001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_23001", trigger_count = 0 }
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
		regions = { 23001 },
		triggers = { "ENTER_REGION_23001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ENTER_REGION_23001(context, evt)
	ScriptLib.AddQuestProgress(context, "Q7323201")
	
	return 0
end