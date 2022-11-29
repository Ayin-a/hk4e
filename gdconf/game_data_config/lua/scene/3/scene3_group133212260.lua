-- 基础信息
local base_info = {
	group_id = 133212260
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 260001, monster_id = 25080101, pos = { x = -3579.961, y = 200.000, z = -2885.922 }, rot = { x = 0.000, y = 286.947, z = 0.000 }, level = 27, drop_tag = "浪人武士", disableWander = true, affix = { 1101 }, pose_id = 1, area_id = 12 },
	{ config_id = 260002, monster_id = 25100101, pos = { x = -3581.780, y = 200.084, z = -2881.512 }, rot = { x = 0.000, y = 112.746, z = 0.000 }, level = 27, drop_tag = "高阶武士", affix = { 1101 }, pose_id = 1002, area_id = 12 },
	{ config_id = 260006, monster_id = 25080101, pos = { x = -3582.265, y = 200.000, z = -2875.039 }, rot = { x = 0.000, y = 201.350, z = 0.000 }, level = 27, drop_tag = "浪人武士", disableWander = true, affix = { 1101 }, pose_id = 1, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 260003, gadget_id = 70211012, pos = { x = -3578.878, y = 200.186, z = -2877.895 }, rot = { x = 0.799, y = 243.119, z = 359.595 }, level = 26, drop_tag = "战斗中级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 12 },
	{ config_id = 260005, gadget_id = 70310006, pos = { x = -3580.249, y = 200.111, z = -2882.344 }, rot = { x = 359.105, y = 0.000, z = 359.105 }, level = 27, state = GadgetState.GearStart, area_id = 12 },
	{ config_id = 260009, gadget_id = 70900393, pos = { x = -3583.317, y = 200.009, z = -2865.524 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 12 },
	{ config_id = 260010, gadget_id = 70900393, pos = { x = -3570.944, y = 199.813, z = -2880.534 }, rot = { x = 0.000, y = 250.358, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 12 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1260004, name = "ANY_MONSTER_DIE_260004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_260004", action = "action_EVENT_ANY_MONSTER_DIE_260004" },
	{ config_id = 1260008, name = "MONSTER_BATTLE_260008", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_260008", action = "action_EVENT_MONSTER_BATTLE_260008" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 260007, monster_id = 25080101, pos = { x = -3583.272, y = 200.000, z = -2888.020 }, rot = { x = 0.000, y = 359.967, z = 0.000 }, level = 27, drop_tag = "浪人武士", disableWander = true, affix = { 1101 }, pose_id = 1, area_id = 12 }
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
		monsters = { 260002 },
		gadgets = { 260003, 260005, 260009, 260010 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_260004", "MONSTER_BATTLE_260008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 260001, 260006 },
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
function condition_EVENT_ANY_MONSTER_DIE_260004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_260004(context, evt)
	-- 将configid为 260003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 260003, GadgetState.Default) then
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

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_260008(context, evt)
	if 260002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_260008(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212260, 2)
	
	return 0
end