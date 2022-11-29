-- 基础信息
local base_info = {
	group_id = 133309287
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 287002, monster_id = 25020201, pos = { x = -2708.841, y = 191.533, z = 5541.695 }, rot = { x = 0.000, y = 325.707, z = 0.000 }, level = 32, drop_tag = "盗宝团", pose_id = 9002, area_id = 27 },
	{ config_id = 287003, monster_id = 25010501, pos = { x = -2716.975, y = 188.786, z = 5536.063 }, rot = { x = 0.000, y = 270.805, z = 0.000 }, level = 32, drop_tag = "盗宝团", pose_id = 9003, area_id = 27 },
	{ config_id = 287004, monster_id = 25030201, pos = { x = -2702.504, y = 191.911, z = 5532.627 }, rot = { x = 0.000, y = 160.552, z = 0.000 }, level = 32, drop_tag = "盗宝团", area_id = 27 },
	{ config_id = 287008, monster_id = 25010201, pos = { x = -2710.709, y = 190.197, z = 5539.536 }, rot = { x = 0.000, y = 221.839, z = 0.000 }, level = 32, drop_tag = "盗宝团", pose_id = 9004, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 287001, gadget_id = 70211002, pos = { x = -2705.399, y = 191.466, z = 5538.892 }, rot = { x = 13.189, y = 228.229, z = 2.402 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 },
	{ config_id = 287005, gadget_id = 70330429, pos = { x = -2707.470, y = 190.424, z = 5533.996 }, rot = { x = 3.378, y = 316.746, z = 93.584 }, level = 32, area_id = 27 },
	{ config_id = 287006, gadget_id = 70330429, pos = { x = -2712.269, y = 189.469, z = 5537.210 }, rot = { x = 322.051, y = 243.668, z = 85.490 }, level = 32, area_id = 27 },
	{ config_id = 287007, gadget_id = 70210101, pos = { x = -2718.288, y = 189.055, z = 5536.672 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", persistent = true, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1287009, name = "ANY_MONSTER_DIE_287009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_287009", action = "action_EVENT_ANY_MONSTER_DIE_287009" }
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
		monsters = { 287002, 287003, 287004, 287008 },
		gadgets = { 287001, 287005, 287006, 287007 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_287009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_287009(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_287009(context, evt)
	-- 将configid为 287001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 287001, GadgetState.Default) then
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