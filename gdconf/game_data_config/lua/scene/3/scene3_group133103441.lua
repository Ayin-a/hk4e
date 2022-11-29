-- 基础信息
local base_info = {
	group_id = 133103441
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 441001, monster_id = 21010201, pos = { x = 309.126, y = 224.672, z = 1051.867 }, rot = { x = 356.611, y = 0.492, z = 10.392 }, level = 19, drop_tag = "丘丘人", disableWander = true, pose_id = 9002, area_id = 6 },
	{ config_id = 441005, monster_id = 21010701, pos = { x = 311.242, y = 224.939, z = 1052.258 }, rot = { x = 356.444, y = 342.272, z = 7.099 }, level = 19, drop_tag = "丘丘人", disableWander = true, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 441002, gadget_id = 70211012, pos = { x = 309.238, y = 224.771, z = 1054.801 }, rot = { x = 359.575, y = 358.981, z = 10.302 }, level = 16, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 441006, gadget_id = 70220013, pos = { x = 310.938, y = 225.183, z = 1058.094 }, rot = { x = 353.814, y = 20.958, z = 5.488 }, level = 19, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1441003, name = "ANY_MONSTER_DIE_441003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_441003", action = "action_EVENT_ANY_MONSTER_DIE_441003" }
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
		monsters = { 441001, 441005 },
		gadgets = { 441002, 441006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_441003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_441003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_441003(context, evt)
	-- 将configid为 441002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 441002, GadgetState.Default) then
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