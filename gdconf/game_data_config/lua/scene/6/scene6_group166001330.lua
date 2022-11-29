-- 基础信息
local base_info = {
	group_id = 166001330
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 330001, monster_id = 25010701, pos = { x = 1018.536, y = 909.899, z = 649.021 }, rot = { x = 0.000, y = 205.051, z = 0.000 }, level = 36, drop_tag = "盗宝团", disableWander = true, pose_id = 9003, area_id = 300 },
	{ config_id = 330004, monster_id = 25010201, pos = { x = 1001.648, y = 909.875, z = 659.856 }, rot = { x = 0.000, y = 93.991, z = 0.000 }, level = 36, drop_tag = "盗宝团", disableWander = true, area_id = 300 },
	{ config_id = 330005, monster_id = 25060101, pos = { x = 1020.072, y = 910.857, z = 661.853 }, rot = { x = 0.000, y = 254.619, z = 0.000 }, level = 36, drop_tag = "盗宝团", disableWander = true, pose_id = 9101, area_id = 300 },
	{ config_id = 330006, monster_id = 25010201, pos = { x = 1004.245, y = 909.887, z = 643.648 }, rot = { x = 0.000, y = 212.242, z = 0.000 }, level = 36, drop_tag = "盗宝团", disableWander = true, pose_id = 9002, area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 330002, gadget_id = 70211002, pos = { x = 1004.448, y = 909.876, z = 641.267 }, rot = { x = 0.184, y = 0.438, z = 357.968 }, level = 26, drop_tag = "战斗低级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1330003, name = "ANY_MONSTER_DIE_330003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_330003", action = "action_EVENT_ANY_MONSTER_DIE_330003" }
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
		monsters = { 330001, 330004, 330005, 330006 },
		gadgets = { 330002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_330003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_330003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_330003(context, evt)
	-- 将configid为 330002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 330002, GadgetState.Default) then
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