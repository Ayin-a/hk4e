-- 基础信息
local base_info = {
	group_id = 133315165
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 165001, monster_id = 26090201, pos = { x = 34.470, y = 245.450, z = 2486.243 }, rot = { x = 0.000, y = 204.561, z = 0.000 }, level = 27, drop_tag = "蕈兽", disableWander = true, pose_id = 102, area_id = 20 },
	{ config_id = 165004, monster_id = 26090201, pos = { x = 33.395, y = 245.450, z = 2482.097 }, rot = { x = 0.000, y = 204.561, z = 0.000 }, level = 27, drop_tag = "蕈兽", disableWander = true, pose_id = 102, area_id = 20 },
	{ config_id = 165005, monster_id = 26090201, pos = { x = 30.115, y = 245.450, z = 2485.874 }, rot = { x = 0.000, y = 204.561, z = 0.000 }, level = 27, drop_tag = "蕈兽", disableWander = true, pose_id = 102, area_id = 20 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 165002, gadget_id = 70217020, pos = { x = 32.749, y = 245.344, z = 2485.953 }, rot = { x = 0.534, y = 359.776, z = 3.584 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 20 }
}

-- 区域
regions = {
	{ config_id = 165003, shape = RegionShape.SPHERE, radius = 7, pos = { x = 35.172, y = 242.996, z = 2485.671 }, area_id = 20 }
}

-- 触发器
triggers = {
	{ config_id = 1165003, name = "ENTER_REGION_165003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_165003" }
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
		gadgets = { 165002 },
		regions = { 165003 },
		triggers = { "ENTER_REGION_165003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 165001, 165004, 165005 },
		gadgets = { },
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
function action_EVENT_ENTER_REGION_165003(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133315165, 2)
	
	return 0
end