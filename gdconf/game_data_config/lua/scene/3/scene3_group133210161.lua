-- 基础信息
local base_info = {
	group_id = 133210161
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 161001, monster_id = 25080201, pos = { x = -3997.406, y = 200.295, z = -631.544 }, rot = { x = 0.000, y = 116.767, z = 0.000 }, level = 30, drop_tag = "浪人武士", pose_id = 1003, area_id = 17 },
	{ config_id = 161003, monster_id = 25080201, pos = { x = -3998.051, y = 199.616, z = -627.153 }, rot = { x = 0.000, y = 133.527, z = 0.000 }, level = 30, drop_tag = "浪人武士", pose_id = 1, area_id = 17 },
	{ config_id = 161004, monster_id = 25080201, pos = { x = -3978.856, y = 201.173, z = -636.860 }, rot = { x = 0.000, y = 272.865, z = 0.000 }, level = 30, drop_tag = "浪人武士", pose_id = 1, area_id = 17 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1161002, name = "MONSTER_BATTLE_161002", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_161002", action = "action_EVENT_MONSTER_BATTLE_161002" }
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
		monsters = { 161001 },
		gadgets = { },
		regions = { },
		triggers = { "MONSTER_BATTLE_161002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 161003, 161004 },
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
function condition_EVENT_MONSTER_BATTLE_161002(context, evt)
	if 161001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_161002(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133210161, 2)
	
	return 0
end