-- 基础信息
local base_info = {
	group_id = 133102729
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 729001, monster_id = 21020301, pos = { x = 1683.275, y = 300.793, z = 427.521 }, rot = { x = 0.000, y = 216.907, z = 0.000 }, level = 18, drop_tag = "丘丘暴徒", disableWander = true, area_id = 5 },
	{ config_id = 729005, monster_id = 21011201, pos = { x = 1681.823, y = 300.000, z = 425.233 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, drop_tag = "丘丘人", area_id = 5 },
	{ config_id = 729006, monster_id = 21011201, pos = { x = 1676.884, y = 299.538, z = 425.736 }, rot = { x = 0.000, y = 67.838, z = 0.000 }, level = 18, drop_tag = "丘丘人", disableWander = true, pose_id = 9013, area_id = 5 },
	{ config_id = 729009, monster_id = 21030201, pos = { x = 1680.520, y = 300.204, z = 422.445 }, rot = { x = 0.000, y = 16.910, z = 0.000 }, level = 18, drop_tag = "丘丘萨满", disableWander = true, area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 729002, gadget_id = 70211012, pos = { x = 1685.278, y = 301.322, z = 431.507 }, rot = { x = 18.112, y = 221.599, z = 5.554 }, level = 16, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 729007, gadget_id = 70310001, pos = { x = 1677.962, y = 300.236, z = 427.593 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 5 },
	{ config_id = 729008, gadget_id = 70310001, pos = { x = 1684.977, y = 299.567, z = 422.246 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1729003, name = "ANY_MONSTER_DIE_729003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_729003", action = "action_EVENT_ANY_MONSTER_DIE_729003" }
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
		monsters = { 729001, 729005, 729006, 729009 },
		gadgets = { 729002, 729007, 729008 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_729003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_729003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_729003(context, evt)
	-- 将configid为 729002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 729002, GadgetState.Default) then
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