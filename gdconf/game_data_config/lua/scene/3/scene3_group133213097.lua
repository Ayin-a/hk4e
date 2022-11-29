-- 基础信息
local base_info = {
	group_id = 133213097
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 97001, monster_id = 23010501, pos = { x = -3719.013, y = 261.296, z = -2971.365 }, rot = { x = 0.000, y = 61.367, z = 0.000 }, level = 27, drop_tag = "先遣队", area_id = 12 },
	{ config_id = 97004, monster_id = 23010601, pos = { x = -3712.789, y = 260.973, z = -2976.091 }, rot = { x = 0.000, y = 136.641, z = 0.000 }, level = 29, drop_tag = "先遣队", pose_id = 9001, area_id = 12 },
	{ config_id = 97005, monster_id = 23010101, pos = { x = -3718.945, y = 260.162, z = -2965.724 }, rot = { x = 13.005, y = 8.773, z = 350.117 }, level = 29, drop_tag = "先遣队", pose_id = 9001, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 97002, gadget_id = 70211002, pos = { x = -3714.858, y = 260.408, z = -2969.822 }, rot = { x = 0.000, y = 252.769, z = 0.000 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 12 },
	{ config_id = 97006, gadget_id = 70310009, pos = { x = -3717.408, y = 260.993, z = -2970.887 }, rot = { x = 0.000, y = 79.372, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 97007, gadget_id = 70220048, pos = { x = -3716.987, y = 259.545, z = -2964.681 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 97008, gadget_id = 70220048, pos = { x = -3713.266, y = 261.505, z = -2978.696 }, rot = { x = 0.000, y = 69.633, z = 0.000 }, level = 27, area_id = 12 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1097003, name = "ANY_MONSTER_DIE_97003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_97003", action = "action_EVENT_ANY_MONSTER_DIE_97003" },
	{ config_id = 1097017, name = "MONSTER_BATTLE_97017", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_97017" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 97009, gadget_id = 70220048, pos = { x = -3711.103, y = 261.028, z = -2977.408 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
		{ config_id = 97010, gadget_id = 70220048, pos = { x = -3734.049, y = 265.696, z = -2975.519 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
		{ config_id = 97011, gadget_id = 70220052, pos = { x = -3713.007, y = 261.248, z = -2977.113 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
		{ config_id = 97012, gadget_id = 70220052, pos = { x = -3734.100, y = 265.480, z = -2974.367 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
		{ config_id = 97013, gadget_id = 70220052, pos = { x = -3715.611, y = 259.260, z = -2964.301 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
		{ config_id = 97014, gadget_id = 70220050, pos = { x = -3718.856, y = 259.841, z = -2964.219 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
		{ config_id = 97015, gadget_id = 70220050, pos = { x = -3732.250, y = 265.473, z = -2976.467 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
		{ config_id = 97016, gadget_id = 70220051, pos = { x = -3709.604, y = 260.724, z = -2977.433 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 }
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
		monsters = { 97001 },
		gadgets = { 97002, 97006, 97007, 97008 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_97003", "MONSTER_BATTLE_97017" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 97004, 97005 },
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
function condition_EVENT_ANY_MONSTER_DIE_97003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_97003(context, evt)
	-- 将configid为 97002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 97002, GadgetState.Default) then
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
function action_EVENT_MONSTER_BATTLE_97017(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213097, 2)
	
	return 0
end