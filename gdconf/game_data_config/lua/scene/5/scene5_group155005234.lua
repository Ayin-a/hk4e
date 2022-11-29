-- 基础信息
local base_info = {
	group_id = 155005234
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 234001, monster_id = 21010501, pos = { x = 124.062, y = 259.167, z = 228.960 }, rot = { x = 354.191, y = 338.901, z = 5.618 }, level = 36, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9016, area_id = 200 },
	{ config_id = 234008, monster_id = 21010701, pos = { x = 127.147, y = 259.927, z = 229.737 }, rot = { x = 0.000, y = 359.554, z = 0.000 }, level = 36, drop_tag = "丘丘人", area_id = 200 },
	{ config_id = 234009, monster_id = 21010101, pos = { x = 122.810, y = 259.000, z = 234.126 }, rot = { x = 0.000, y = 336.815, z = 0.000 }, level = 36, drop_tag = "丘丘人", disableWander = true, pose_id = 9002, area_id = 200 },
	{ config_id = 234010, monster_id = 21010101, pos = { x = 126.139, y = 259.740, z = 234.984 }, rot = { x = 0.000, y = 325.681, z = 0.000 }, level = 36, drop_tag = "丘丘人", disableWander = true, pose_id = 9002, area_id = 200 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 234002, gadget_id = 70211002, pos = { x = 125.761, y = 259.553, z = 229.590 }, rot = { x = 359.690, y = 326.512, z = 16.875 }, level = 16, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 },
	{ config_id = 234006, gadget_id = 70310001, pos = { x = 122.239, y = 258.895, z = 231.209 }, rot = { x = 2.193, y = 0.348, z = 9.056 }, level = 36, state = GadgetState.GearStart, area_id = 200 },
	{ config_id = 234007, gadget_id = 70310001, pos = { x = 127.325, y = 259.793, z = 232.096 }, rot = { x = 350.276, y = 359.620, z = 4.467 }, level = 36, state = GadgetState.GearStart, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1234003, name = "ANY_MONSTER_DIE_234003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_234003", action = "action_EVENT_ANY_MONSTER_DIE_234003" }
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
		monsters = { 234001, 234008, 234009, 234010 },
		gadgets = { 234002, 234006, 234007 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_234003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_234003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_234003(context, evt)
	-- 将configid为 234002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 234002, GadgetState.Default) then
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