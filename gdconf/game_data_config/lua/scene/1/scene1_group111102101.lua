-- 基础信息
local base_info = {
	group_id = 111102101
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
	{ config_id = 101001, gadget_id = 70950095, pos = { x = 1968.748, y = 207.216, z = -1409.907 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 101002, shape = RegionShape.SPHERE, radius = 2, pos = { x = 1970.471, y = 206.815, z = -1410.270 } }
}

-- 触发器
triggers = {
	{ config_id = 1101002, name = "ENTER_REGION_101002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_101002", trigger_count = 0 }
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
		gadgets = { 101001 },
		regions = { 101002 },
		triggers = { "ENTER_REGION_101002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ENTER_REGION_101002(context, evt)
	ScriptLib.MoveAvatarByPointArrayWithTemplate(context, context.uid, 110200029, {1,2,3,4},301,{4,60})
	return 0
end