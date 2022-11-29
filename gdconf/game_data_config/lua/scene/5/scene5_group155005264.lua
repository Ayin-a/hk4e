-- 基础信息
local base_info = {
	group_id = 155005264
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 264001, monster_id = 21010101, pos = { x = 506.438, y = 207.296, z = 589.198 }, rot = { x = 0.000, y = 134.321, z = 0.000 }, level = 36, drop_tag = "丘丘人", disableWander = true, pose_id = 9016, area_id = 200 },
	{ config_id = 264004, monster_id = 21010201, pos = { x = 499.546, y = 206.214, z = 581.983 }, rot = { x = 0.000, y = 314.920, z = 0.000 }, level = 36, drop_tag = "丘丘人", disableWander = true, pose_id = 9002, area_id = 200 },
	{ config_id = 264005, monster_id = 21010101, pos = { x = 503.910, y = 206.935, z = 586.226 }, rot = { x = 0.000, y = 92.996, z = 0.000 }, level = 36, drop_tag = "丘丘人", disableWander = true, pose_id = 9016, area_id = 200 },
	{ config_id = 264006, monster_id = 22010101, pos = { x = 503.378, y = 207.020, z = 589.306 }, rot = { x = 0.000, y = 126.261, z = 0.000 }, level = 36, drop_tag = "深渊法师", area_id = 200 },
	{ config_id = 264008, monster_id = 21010201, pos = { x = 496.108, y = 206.168, z = 582.544 }, rot = { x = 0.000, y = 42.502, z = 0.000 }, level = 36, drop_tag = "丘丘人", disableWander = true, pose_id = 9002, area_id = 200 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 264002, gadget_id = 70211002, pos = { x = 494.035, y = 205.989, z = 581.390 }, rot = { x = 0.182, y = 27.492, z = 0.649 }, level = 16, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 },
	{ config_id = 264007, gadget_id = 70300086, pos = { x = 491.850, y = 205.196, z = 578.225 }, rot = { x = 7.922, y = 335.187, z = 8.036 }, level = 36, area_id = 200 },
	{ config_id = 264009, gadget_id = 70310001, pos = { x = 497.818, y = 206.277, z = 583.953 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 200 },
	{ config_id = 264010, gadget_id = 70220013, pos = { x = 499.102, y = 205.915, z = 578.781 }, rot = { x = 0.000, y = 72.663, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 264011, gadget_id = 70220026, pos = { x = 501.173, y = 206.212, z = 580.787 }, rot = { x = 0.387, y = 14.720, z = 0.071 }, level = 36, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1264003, name = "ANY_MONSTER_DIE_264003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_264003", action = "action_EVENT_ANY_MONSTER_DIE_264003" }
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
		monsters = { 264001, 264004, 264005, 264006, 264008 },
		gadgets = { 264002, 264007, 264009, 264010, 264011 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_264003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_264003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_264003(context, evt)
	-- 将configid为 264002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 264002, GadgetState.Default) then
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