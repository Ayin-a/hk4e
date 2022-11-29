-- 基础信息
local base_info = {
	group_id = 133309655
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 655004, monster_id = 28050401, pos = { x = -2366.562, y = 3.180, z = 5724.316 }, rot = { x = 0.000, y = 103.351, z = 0.000 }, level = 32, drop_tag = "采集动物", isOneoff = true, pose_id = 102, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 655001, gadget_id = 70330266, pos = { x = -2366.964, y = 2.429, z = 5724.799 }, rot = { x = 346.231, y = 86.182, z = 11.629 }, level = 32, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1655002, name = "ANY_GADGET_DIE_655002", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_655002", action = "action_EVENT_ANY_GADGET_DIE_655002" }
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
		gadgets = { 655001 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_655002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 655004 },
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

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_655002(context, evt)
	if 655001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_655002(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133309655, 2)
	
	return 0
end