-- 基础信息
local base_info = {
	group_id = 133309340
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 340001, monster_id = 26090901, pos = { x = -2606.985, y = 11.158, z = 5921.348 }, rot = { x = 0.000, y = 121.136, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 27 },
	{ config_id = 340002, monster_id = 26090901, pos = { x = -2605.797, y = 11.315, z = 5921.250 }, rot = { x = 0.000, y = 169.526, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 340003, gadget_id = 70330266, pos = { x = -2606.070, y = 11.034, z = 5920.998 }, rot = { x = 327.483, y = 0.000, z = 6.560 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 340005, gadget_id = 70330342, pos = { x = -2606.453, y = 10.964, z = 5921.019 }, rot = { x = 327.094, y = 356.777, z = 6.067 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1340004, name = "ANY_GADGET_DIE_340004", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_340004", action = "action_EVENT_ANY_GADGET_DIE_340004" }
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
		gadgets = { 340003 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_340004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 340001, 340002 },
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
function condition_EVENT_ANY_GADGET_DIE_340004(context, evt)
	if 340003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_340004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133309340, 2)
	
	-- 创建id为340005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 340005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end