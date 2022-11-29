-- 基础信息
local base_info = {
	group_id = 220159005
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 5001, monster_id = 26090201, pos = { x = 488.203, y = 144.959, z = 422.567 }, rot = { x = 0.000, y = 324.741, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	{ config_id = 5002, monster_id = 26090201, pos = { x = 481.261, y = 144.861, z = 420.799 }, rot = { x = 0.000, y = 7.168, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	{ config_id = 5003, monster_id = 26120301, pos = { x = 485.365, y = 145.181, z = 419.172 }, rot = { x = 0.000, y = 343.486, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	{ config_id = 5004, monster_id = 26090501, pos = { x = 484.563, y = 145.091, z = 423.444 }, rot = { x = 0.000, y = 353.598, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	{ config_id = 5008, monster_id = 26120201, pos = { x = 485.883, y = 146.581, z = 417.750 }, rot = { x = 0.000, y = 329.959, z = 0.000 }, level = 1, disableWander = true, pose_id = 201 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 5005, gadget_id = 70211021, pos = { x = 484.711, y = 145.170, z = 420.774 }, rot = { x = 0.644, y = 350.694, z = 357.735 }, level = 1, drop_tag = "战斗高级须弥", isOneoff = true, persistent = true },
	{ config_id = 5006, gadget_id = 70900205, pos = { x = 480.846, y = 142.615, z = 417.910 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1005007, name = "ANY_MONSTER_DIE_5007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_5007", action = "action_EVENT_ANY_MONSTER_DIE_5007" }
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
		gadgets = { 5006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 5001, 5002, 5003, 5004, 5008 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_5007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_5007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_5007(context, evt)
	-- 创建id为5005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 5005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end