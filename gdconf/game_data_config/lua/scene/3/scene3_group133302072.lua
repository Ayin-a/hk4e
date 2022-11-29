-- 基础信息
local base_info = {
	group_id = 133302072
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 72003, monster_id = 28030313, pos = { x = -356.815, y = 450.169, z = 2952.007 }, rot = { x = 0.000, y = 188.204, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 3, area_id = 24 },
	{ config_id = 72005, monster_id = 28030313, pos = { x = -367.272, y = 367.656, z = 2940.828 }, rot = { x = 0.000, y = 240.840, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 3, area_id = 24 },
	{ config_id = 72006, monster_id = 28030313, pos = { x = -367.591, y = 367.810, z = 2942.563 }, rot = { x = 0.000, y = 275.222, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 3, area_id = 24 },
	{ config_id = 72007, monster_id = 28030201, pos = { x = -356.532, y = 462.476, z = 2913.590 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "鸟类", area_id = 24 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 72001, gadget_id = 70500000, pos = { x = -411.187, y = 256.803, z = 2958.231 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 4014, isOneoff = true, persistent = true, explore = { name = "gather", exp = 30 }, area_id = 24 },
	{ config_id = 72004, gadget_id = 70500000, pos = { x = -369.853, y = 448.748, z = 2942.536 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 4014, isOneoff = true, persistent = true, explore = { name = "gather", exp = 30 }, area_id = 24 }
}

-- 区域
regions = {
	{ config_id = 72002, shape = RegionShape.SPHERE, radius = 2, pos = { x = -357.003, y = 451.675, z = 2952.238 }, area_id = 24 }
}

-- 触发器
triggers = {
	{ config_id = 1072002, name = "ENTER_REGION_72002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_72002", trigger_count = 0 }
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
		monsters = { 72003, 72005, 72006, 72007 },
		gadgets = { 72001, 72004 },
		regions = { 72002 },
		triggers = { "ENTER_REGION_72002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ENTER_REGION_72002(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 6083, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end