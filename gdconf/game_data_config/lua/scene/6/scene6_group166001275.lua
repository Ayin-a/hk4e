-- 基础信息
local base_info = {
	group_id = 166001275
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 275004, monster_id = 25010201, pos = { x = 1062.676, y = 846.385, z = 562.111 }, rot = { x = 0.000, y = 13.598, z = 0.000 }, level = 36, drop_tag = "盗宝团", disableWander = true, pose_id = 9102, area_id = 300 },
	{ config_id = 275005, monster_id = 25010201, pos = { x = 1047.021, y = 843.807, z = 555.744 }, rot = { x = 0.000, y = 68.352, z = 0.000 }, level = 36, drop_tag = "盗宝团", disableWander = true, pose_id = 9101, area_id = 300 },
	{ config_id = 275006, monster_id = 25010201, pos = { x = 1053.584, y = 843.919, z = 548.282 }, rot = { x = 0.000, y = 112.295, z = 0.000 }, level = 36, drop_tag = "盗宝团", disableWander = true, pose_id = 9102, area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 275002, gadget_id = 70211002, pos = { x = 1059.693, y = 845.483, z = 552.317 }, rot = { x = 359.206, y = 249.808, z = 357.486 }, level = 26, drop_tag = "战斗低级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1275003, name = "ANY_MONSTER_DIE_275003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_275003", action = "action_EVENT_ANY_MONSTER_DIE_275003" }
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
		monsters = { 275004, 275005, 275006 },
		gadgets = { 275002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_275003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_275003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_275003(context, evt)
	-- 将configid为 275002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 275002, GadgetState.Default) then
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