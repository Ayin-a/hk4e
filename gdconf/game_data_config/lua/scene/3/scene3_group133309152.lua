-- 基础信息
local base_info = {
	group_id = 133309152
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 152001, monster_id = 28010404, pos = { x = -2276.729, y = -100.280, z = 5955.848 }, rot = { x = 0.000, y = 0.738, z = 0.000 }, level = 32, drop_tag = "采集动物", pose_id = 1, area_id = 27 },
	{ config_id = 152003, monster_id = 28010404, pos = { x = -2273.690, y = -101.263, z = 5956.772 }, rot = { x = 0.000, y = 322.524, z = 0.000 }, level = 32, drop_tag = "采集动物", pose_id = 1, area_id = 27 },
	{ config_id = 152004, monster_id = 28010404, pos = { x = -2275.168, y = -100.892, z = 5955.595 }, rot = { x = 0.000, y = 325.169, z = 0.000 }, level = 32, drop_tag = "采集动物", pose_id = 1, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 152002, gadget_id = 70330342, pos = { x = -2276.686, y = -100.183, z = 5958.275 }, rot = { x = 3.017, y = 303.471, z = 352.795 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 27 },
	{ config_id = 152006, gadget_id = 70330342, pos = { x = -2296.547, y = -99.590, z = 5985.017 }, rot = { x = 351.337, y = 295.347, z = 359.731 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1152005, name = "GADGET_STATE_CHANGE_152005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_152005", action = "action_EVENT_GADGET_STATE_CHANGE_152005" }
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
		gadgets = { 152002, 152006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_152005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 152001, 152003, 152004 },
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
function condition_EVENT_GADGET_STATE_CHANGE_152005(context, evt)
	if 152002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_152005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133309152, 2)
	
	return 0
end