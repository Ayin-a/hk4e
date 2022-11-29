-- 基础信息
local base_info = {
	group_id = 133222017
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 17004, monster_id = 25010301, pos = { x = -4405.941, y = 200.578, z = -4213.304 }, rot = { x = 0.000, y = 166.519, z = 0.000 }, level = 30, drop_tag = "盗宝团", climate_area_id = 10, area_id = 14 },
	{ config_id = 17005, monster_id = 25010301, pos = { x = -4411.052, y = 200.420, z = -4218.733 }, rot = { x = 0.000, y = 89.262, z = 0.000 }, level = 30, drop_tag = "盗宝团", climate_area_id = 10, area_id = 14 },
	{ config_id = 17006, monster_id = 25010301, pos = { x = -4398.793, y = 200.460, z = -4227.866 }, rot = { x = 0.000, y = 322.067, z = 0.000 }, level = 30, drop_tag = "盗宝团", climate_area_id = 10, area_id = 14 },
	{ config_id = 17007, monster_id = 25030201, pos = { x = -4403.229, y = 200.242, z = -4218.387 }, rot = { x = 0.000, y = 99.634, z = 0.000 }, level = 30, drop_tag = "盗宝团", disableWander = true, pose_id = 9003, climate_area_id = 10, area_id = 14 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 17002, gadget_id = 70211002, pos = { x = -4411.645, y = 201.947, z = -4222.270 }, rot = { x = 350.306, y = 50.031, z = 359.910 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1017003, name = "ANY_MONSTER_DIE_17003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_17003", action = "action_EVENT_ANY_MONSTER_DIE_17003" },
	{ config_id = 1017008, name = "MONSTER_BATTLE_17008", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_17008" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 17001, monster_id = 25100101, pos = { x = -4389.669, y = 201.425, z = -4228.224 }, rot = { x = 0.000, y = 279.625, z = 0.000 }, level = 30, drop_tag = "高阶武士", pose_id = 1001, climate_area_id = 10, area_id = 14 },
		{ config_id = 17009, monster_id = 25100201, pos = { x = -4400.893, y = 200.311, z = -4233.522 }, rot = { x = 0.000, y = 349.352, z = 0.000 }, level = 30, drop_tag = "高阶武士", pose_id = 1001, climate_area_id = 10, area_id = 14 }
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
		monsters = { 17007 },
		gadgets = { 17002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_17003", "MONSTER_BATTLE_17008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 17004, 17005, 17006 },
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
function condition_EVENT_ANY_MONSTER_DIE_17003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_17003(context, evt)
	-- 将configid为 17002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 17002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_17008(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133222017, 2)
	
	return 0
end