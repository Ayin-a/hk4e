-- 基础信息
local base_info = {
	group_id = 133316034
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 34001, monster_id = 21010201, pos = { x = 365.697, y = 277.543, z = 6269.704 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "丘丘人", disableWander = true, area_id = 30 },
	{ config_id = 34004, monster_id = 21020301, pos = { x = 368.231, y = 277.426, z = 6276.793 }, rot = { x = 0.000, y = 108.872, z = 0.000 }, level = 32, drop_tag = "丘丘暴徒", area_id = 30 },
	{ config_id = 34005, monster_id = 21010401, pos = { x = 379.050, y = 282.788, z = 6282.397 }, rot = { x = 0.000, y = 182.541, z = 0.000 }, level = 32, drop_tag = "远程丘丘人", area_id = 30 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 34002, gadget_id = 70211022, pos = { x = 353.780, y = 278.153, z = 6280.626 }, rot = { x = 358.640, y = 114.143, z = 359.375 }, level = 26, drop_tag = "战斗高级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 30 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1034003, name = "ANY_MONSTER_DIE_34003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_34003", action = "action_EVENT_ANY_MONSTER_DIE_34003" }
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
		monsters = { 34001, 34004, 34005 },
		gadgets = { 34002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_34003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_34003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_34003(context, evt)
	-- 将configid为 34002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 34002, GadgetState.Default) then
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