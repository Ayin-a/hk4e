-- 基础信息
local base_info = {
	group_id = 133213028
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 28001, monster_id = 25080101, pos = { x = -3555.702, y = 223.054, z = -3268.761 }, rot = { x = 0.000, y = 282.318, z = 0.000 }, level = 27, drop_tag = "浪人武士", disableWander = true, pose_id = 1006, area_id = 12 },
	{ config_id = 28004, monster_id = 25100201, pos = { x = -3557.045, y = 223.086, z = -3264.801 }, rot = { x = 0.000, y = 198.017, z = 0.000 }, level = 27, drop_tag = "高阶武士", disableWander = true, pose_id = 1001, area_id = 12 },
	{ config_id = 28005, monster_id = 25080101, pos = { x = -3559.701, y = 223.542, z = -3267.439 }, rot = { x = 0.000, y = 101.289, z = 0.000 }, level = 27, drop_tag = "浪人武士", disableWander = true, pose_id = 1, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 28002, gadget_id = 70211002, pos = { x = -3558.943, y = 223.467, z = -3270.642 }, rot = { x = 359.602, y = 21.267, z = 355.556 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 12 },
	{ config_id = 28006, gadget_id = 70220048, pos = { x = -3551.852, y = 222.051, z = -3263.447 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 28007, gadget_id = 70220051, pos = { x = -3551.705, y = 222.097, z = -3265.339 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 28008, gadget_id = 70220051, pos = { x = -3553.126, y = 222.274, z = -3262.295 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1028003, name = "ANY_MONSTER_DIE_28003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_28003", action = "action_EVENT_ANY_MONSTER_DIE_28003" },
	{ config_id = 1028009, name = "MONSTER_BATTLE_28009", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_28009" }
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
		monsters = { 28001, 28004 },
		gadgets = { 28002, 28006, 28007, 28008 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_28003", "MONSTER_BATTLE_28009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 28005 },
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
function condition_EVENT_ANY_MONSTER_DIE_28003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_28003(context, evt)
	-- 将configid为 28002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 28002, GadgetState.Default) then
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
function action_EVENT_MONSTER_BATTLE_28009(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213028, 2)
	
	return 0
end