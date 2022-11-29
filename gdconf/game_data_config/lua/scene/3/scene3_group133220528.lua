-- 基础信息
local base_info = {
	group_id = 133220528
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 528001, monster_id = 25080101, pos = { x = -2831.082, y = 204.331, z = -4122.041 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "浪人武士", disableWander = true, pose_id = 1004, area_id = 11 },
	{ config_id = 528006, monster_id = 25080201, pos = { x = -2828.145, y = 203.618, z = -4117.784 }, rot = { x = 0.000, y = 282.610, z = 0.000 }, level = 27, drop_tag = "浪人武士", disableWander = true, pose_id = 1003, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 528002, gadget_id = 70211002, pos = { x = -2832.362, y = 205.289, z = -4117.273 }, rot = { x = 0.000, y = 133.260, z = 0.000 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
	{ config_id = 528004, gadget_id = 70310006, pos = { x = -2834.304, y = 204.283, z = -4119.566 }, rot = { x = 0.000, y = 40.192, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 11 },
	{ config_id = 528005, gadget_id = 70310001, pos = { x = -2828.942, y = 203.739, z = -4115.689 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1528003, name = "ANY_MONSTER_DIE_528003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_528003", action = "action_EVENT_ANY_MONSTER_DIE_528003" }
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
		monsters = { 528001, 528006 },
		gadgets = { 528002, 528004, 528005 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_528003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_528003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_528003(context, evt)
	-- 将configid为 528002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 528002, GadgetState.Default) then
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