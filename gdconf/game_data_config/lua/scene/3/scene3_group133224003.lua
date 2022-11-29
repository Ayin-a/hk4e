-- 基础信息
local base_info = {
	group_id = 133224003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 3001, monster_id = 21010301, pos = { x = -6030.087, y = 200.286, z = -3209.497 }, rot = { x = 3.523, y = 185.933, z = 9.268 }, level = 33, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 18 },
	{ config_id = 3003, monster_id = 21010201, pos = { x = -6032.240, y = 200.288, z = -3209.932 }, rot = { x = 0.000, y = 136.111, z = 0.000 }, level = 33, drop_tag = "丘丘人", pose_id = 9003, area_id = 18 },
	{ config_id = 3004, monster_id = 21010701, pos = { x = -6042.056, y = 200.054, z = -3204.784 }, rot = { x = 0.000, y = 99.734, z = 0.000 }, level = 33, drop_tag = "丘丘人", area_id = 18 },
	{ config_id = 3005, monster_id = 21020201, pos = { x = -6030.595, y = 200.291, z = -3197.806 }, rot = { x = 0.000, y = 4.016, z = 0.000 }, level = 33, drop_tag = "丘丘暴徒", pose_id = 401, area_id = 18 },
	{ config_id = 3006, monster_id = 22010401, pos = { x = -6026.330, y = 200.997, z = -3204.016 }, rot = { x = 0.000, y = 222.074, z = 0.000 }, level = 33, drop_tag = "深渊法师", area_id = 18 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3002, gadget_id = 70220013, pos = { x = -6027.411, y = 200.102, z = -3209.248 }, rot = { x = 0.000, y = 11.696, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 3007, gadget_id = 70211002, pos = { x = -6031.876, y = 200.214, z = -3202.448 }, rot = { x = 0.000, y = 10.936, z = 0.000 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
	{ config_id = 3008, gadget_id = 70310006, pos = { x = -6030.640, y = 200.324, z = -3211.924 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 18 },
	{ config_id = 3009, gadget_id = 70220014, pos = { x = -6026.074, y = 200.111, z = -3210.713 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 3010, gadget_id = 70220014, pos = { x = -6026.925, y = 200.164, z = -3211.199 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1003011, name = "ANY_MONSTER_DIE_3011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3011", action = "action_EVENT_ANY_MONSTER_DIE_3011" },
	{ config_id = 1003012, name = "MONSTER_BATTLE_3012", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_3012", action = "action_EVENT_MONSTER_BATTLE_3012" }
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
		monsters = { 3001, 3003, 3004, 3005 },
		gadgets = { 3002, 3007, 3008, 3009, 3010 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_3011", "MONSTER_BATTLE_3012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 3006 },
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
function condition_EVENT_ANY_MONSTER_DIE_3011(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3011(context, evt)
	-- 将configid为 3007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3007, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4001, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_3012(context, evt)
	if 3004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_3012(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133224003, 2)
	
	return 0
end