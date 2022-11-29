-- 基础信息
local base_info = {
	group_id = 133213070
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 70001, monster_id = 25100201, pos = { x = -3830.060, y = 200.150, z = -3278.014 }, rot = { x = 355.293, y = 79.117, z = 0.000 }, level = 25, drop_tag = "高阶武士", disableWander = true, pose_id = 1002, area_id = 12 },
	{ config_id = 70006, monster_id = 25010601, pos = { x = -3837.494, y = 201.127, z = -3290.155 }, rot = { x = 4.515, y = 122.815, z = 0.000 }, level = 27, drop_tag = "盗宝团", pose_id = 9005, area_id = 12 },
	{ config_id = 70007, monster_id = 25010401, pos = { x = -3837.377, y = 200.283, z = -3286.091 }, rot = { x = 350.007, y = 141.325, z = 0.000 }, level = 27, drop_tag = "盗宝团", pose_id = 9005, area_id = 12 },
	{ config_id = 70008, monster_id = 25080301, pos = { x = -3834.527, y = 200.373, z = -3281.055 }, rot = { x = 357.016, y = 132.601, z = 0.000 }, level = 27, drop_tag = "浪人武士", pose_id = 1005, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 70002, gadget_id = 70211002, pos = { x = -3835.315, y = 200.509, z = -3273.801 }, rot = { x = 13.556, y = 171.442, z = 1.364 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 12 },
	{ config_id = 70004, gadget_id = 70310001, pos = { x = -3835.680, y = 200.330, z = -3277.079 }, rot = { x = 350.350, y = 0.009, z = 2.885 }, level = 27, state = GadgetState.GearStart, area_id = 12 },
	{ config_id = 70005, gadget_id = 70310001, pos = { x = -3835.849, y = 200.370, z = -3284.537 }, rot = { x = 350.350, y = 0.009, z = 2.885 }, level = 27, state = GadgetState.GearStart, area_id = 12 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1070003, name = "ANY_MONSTER_DIE_70003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_70003", action = "action_EVENT_ANY_MONSTER_DIE_70003" }
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
		monsters = { 70001, 70006, 70007, 70008 },
		gadgets = { 70002, 70004, 70005 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_70003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_70003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_70003(context, evt)
	-- 将configid为 70002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 70002, GadgetState.Default) then
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