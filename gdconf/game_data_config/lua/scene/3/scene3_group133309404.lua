-- 基础信息
local base_info = {
	group_id = 133309404
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
	{ config_id = 404001, gadget_id = 70330342, pos = { x = -2399.406, y = -42.126, z = 5867.340 }, rot = { x = 36.415, y = 359.323, z = 12.371 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 27 },
	{ config_id = 404004, gadget_id = 70330337, pos = { x = -2401.509, y = -44.389, z = 5864.796 }, rot = { x = 0.000, y = 154.368, z = 0.000 }, level = 32, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1404005, name = "ANY_GADGET_DIE_404005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_404005", action = "action_EVENT_ANY_GADGET_DIE_404005", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 404002, monster_id = 26090901, pos = { x = -2400.545, y = -40.572, z = 5865.450 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 27 },
		{ config_id = 404003, monster_id = 26090901, pos = { x = -2397.717, y = -41.893, z = 5867.632 }, rot = { x = 0.000, y = 316.910, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 27 }
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
		gadgets = { 404004 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_404005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
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
function condition_EVENT_ANY_GADGET_DIE_404005(context, evt)
	if 404004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_404005(context, evt)
	-- 创建id为404001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 404001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end