-- 基础信息
local base_info = {
	group_id = 133106037
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 37001, monster_id = 21010501, pos = { x = -822.109, y = 178.614, z = 899.542 }, rot = { x = 0.000, y = 159.907, z = 0.000 }, level = 30, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32, area_id = 8 },
	{ config_id = 37004, monster_id = 21010701, pos = { x = -822.375, y = 182.288, z = 911.148 }, rot = { x = 0.000, y = 201.011, z = 0.000 }, level = 30, drop_tag = "丘丘人", disableWander = true, area_id = 8 },
	{ config_id = 37005, monster_id = 21010701, pos = { x = -820.220, y = 183.992, z = 921.617 }, rot = { x = 0.000, y = 43.100, z = 0.000 }, level = 30, drop_tag = "丘丘人", disableWander = true, area_id = 8 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 37002, gadget_id = 70211012, pos = { x = -819.449, y = 183.995, z = 922.893 }, rot = { x = 0.000, y = 228.940, z = 0.000 }, level = 26, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 8 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1037003, name = "ANY_MONSTER_DIE_37003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_37003", action = "action_EVENT_ANY_MONSTER_DIE_37003" }
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
		-- description = suite_1,
		monsters = { 37001, 37004, 37005 },
		gadgets = { 37002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_37003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_37003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_37003(context, evt)
	-- 将configid为 37002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 37002, GadgetState.Default) then
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