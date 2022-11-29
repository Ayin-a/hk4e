-- 基础信息
local base_info = {
	group_id = 133304422
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 422001, monster_id = 26090701, pos = { x = -1374.890, y = 329.746, z = 2088.710 }, rot = { x = 0.000, y = 47.868, z = 0.000 }, level = 30, drop_tag = "蕈兽", disableWander = true, pose_id = 104, area_id = 21 },
	{ config_id = 422004, monster_id = 26090701, pos = { x = -1404.042, y = 335.716, z = 2098.418 }, rot = { x = 0.000, y = 311.423, z = 0.000 }, level = 30, drop_tag = "蕈兽", disableWander = true, pose_id = 102, area_id = 21 },
	{ config_id = 422009, monster_id = 20011301, pos = { x = -1390.757, y = 331.373, z = 2098.827 }, rot = { x = 0.000, y = 173.581, z = 0.000 }, level = 30, drop_tag = "大史莱姆", area_id = 21 },
	{ config_id = 422012, monster_id = 26010201, pos = { x = -1390.632, y = 335.618, z = 2086.454 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "骗骗花", area_id = 21 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 422002, gadget_id = 70211022, pos = { x = -1389.934, y = 333.674, z = 2091.083 }, rot = { x = 17.281, y = 357.223, z = 341.066 }, level = 26, drop_tag = "战斗高级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1422011, name = "ANY_MONSTER_DIE_422011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_422011", action = "action_EVENT_ANY_MONSTER_DIE_422011", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 422005, monster_id = 26090701, pos = { x = -1390.723, y = 336.084, z = 2085.622 }, rot = { x = 0.000, y = 177.252, z = 0.000 }, level = 30, drop_tag = "蕈兽", disableWander = true, pose_id = 104, area_id = 21 },
		{ config_id = 422008, monster_id = 20011301, pos = { x = -1400.818, y = 335.490, z = 2096.101 }, rot = { x = 0.000, y = 116.808, z = 0.000 }, level = 30, drop_tag = "大史莱姆", area_id = 21 },
		{ config_id = 422010, monster_id = 20060601, pos = { x = -1389.734, y = 332.111, z = 2095.635 }, rot = { x = 0.000, y = 150.289, z = 0.000 }, level = 30, drop_tag = "飘浮灵", pose_id = 101, area_id = 21 }
	},
	triggers = {
		{ config_id = 1422003, name = "ANY_MONSTER_DIE_422003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_422003", action = "action_EVENT_ANY_MONSTER_DIE_422003", trigger_count = 0 },
		{ config_id = 1422006, name = "ANY_MONSTER_DIE_422006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_422006", action = "action_EVENT_ANY_MONSTER_DIE_422006", trigger_count = 0 },
		{ config_id = 1422007, name = "ANY_MONSTER_DIE_422007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_422007", action = "action_EVENT_ANY_MONSTER_DIE_422007", trigger_count = 0 },
		{ config_id = 1422013, name = "GROUP_LOAD_422013", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_422013", trigger_count = 0 }
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
		monsters = { 422001, 422004, 422009, 422012 },
		gadgets = { 422002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_422011" },
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
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
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
function condition_EVENT_ANY_MONSTER_DIE_422011(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_422011(context, evt)
	-- 将configid为 422002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 422002, GadgetState.Default) then
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