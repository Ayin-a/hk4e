-- 基础信息
local base_info = {
	group_id = 133213014
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 14001, monster_id = 25010301, pos = { x = -3572.087, y = 200.262, z = -3446.829 }, rot = { x = 0.000, y = 359.864, z = 0.000 }, level = 27, drop_tag = "盗宝团", disableWander = true, pose_id = 9006, area_id = 12 },
	{ config_id = 14004, monster_id = 25010501, pos = { x = -3572.044, y = 200.262, z = -3445.091 }, rot = { x = 0.000, y = 169.691, z = 0.000 }, level = 27, drop_tag = "盗宝团", pose_id = 9002, area_id = 12 },
	{ config_id = 14005, monster_id = 25010701, pos = { x = -3576.695, y = 200.262, z = -3419.658 }, rot = { x = 0.000, y = 104.406, z = 0.000 }, level = 27, drop_tag = "盗宝团", disableWander = true, pose_id = 9003, area_id = 12 },
	{ config_id = 14006, monster_id = 25030201, pos = { x = -3565.706, y = 200.320, z = -3436.947 }, rot = { x = 0.000, y = 337.873, z = 0.000 }, level = 27, drop_tag = "盗宝团", disableWander = true, pose_id = 9003, area_id = 12 },
	{ config_id = 14007, monster_id = 25030301, pos = { x = -3566.177, y = 200.346, z = -3430.333 }, rot = { x = 0.000, y = 292.836, z = 0.000 }, level = 27, drop_tag = "盗宝团", pose_id = 9005, area_id = 12 },
	{ config_id = 14008, monster_id = 25010201, pos = { x = -3576.009, y = 200.346, z = -3434.496 }, rot = { x = 0.000, y = 315.677, z = 0.000 }, level = 27, drop_tag = "盗宝团", pose_id = 9004, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 14002, gadget_id = 70211002, pos = { x = -3563.957, y = 200.418, z = -3427.974 }, rot = { x = 359.926, y = 226.673, z = 2.530 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 12 },
	{ config_id = 14009, gadget_id = 71700105, pos = { x = -3577.217, y = 200.205, z = -3434.979 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1014003, name = "ANY_MONSTER_DIE_14003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_14003", action = "action_EVENT_ANY_MONSTER_DIE_14003" }
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
		monsters = { 14001, 14004, 14005, 14006, 14007, 14008 },
		gadgets = { 14002, 14009 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_14003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_14003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_14003(context, evt)
	-- 将configid为 14002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 14002, GadgetState.Default) then
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