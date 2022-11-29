-- 基础信息
local base_info = {
	group_id = 133102670
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 670001, monster_id = 20011501, pos = { x = 1962.031, y = 237.628, z = 589.266 }, rot = { x = 0.000, y = 266.091, z = 0.000 }, level = 18, drop_tag = "大史莱姆", disableWander = true, area_id = 5 },
	{ config_id = 670004, monster_id = 20011501, pos = { x = 1963.671, y = 237.886, z = 586.235 }, rot = { x = 0.000, y = 217.105, z = 0.000 }, level = 18, drop_tag = "大史莱姆", disableWander = true, area_id = 5 },
	{ config_id = 670005, monster_id = 20011501, pos = { x = 1960.919, y = 237.493, z = 586.893 }, rot = { x = 0.000, y = 128.535, z = 0.000 }, level = 18, drop_tag = "大史莱姆", area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 670002, gadget_id = 70211012, pos = { x = 1964.208, y = 237.887, z = 588.519 }, rot = { x = 0.000, y = 238.520, z = 0.000 }, level = 16, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1670003, name = "ANY_MONSTER_DIE_670003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_670003", action = "action_EVENT_ANY_MONSTER_DIE_670003" }
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
		monsters = { 670001, 670004, 670005 },
		gadgets = { 670002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_670003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_670003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_670003(context, evt)
	-- 将configid为 670002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 670002, GadgetState.Default) then
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