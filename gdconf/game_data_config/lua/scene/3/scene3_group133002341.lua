-- 基础信息
local base_info = {
	group_id = 133002341
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 341004, monster_id = 21010301, pos = { x = 1901.584, y = 241.407, z = -642.873 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_tag = "丘丘人", disableWander = true, area_id = 3 },
	{ config_id = 341005, monster_id = 21010501, pos = { x = 1899.299, y = 241.604, z = -636.425 }, rot = { x = 0.000, y = 155.313, z = 0.000 }, level = 10, drop_tag = "远程丘丘人", disableWander = true, area_id = 3 },
	{ config_id = 341006, monster_id = 21010501, pos = { x = 1905.188, y = 242.360, z = -638.405 }, rot = { x = 0.000, y = 187.582, z = 0.000 }, level = 10, drop_tag = "远程丘丘人", disableWander = true, area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 341002, gadget_id = 70211012, pos = { x = 1908.795, y = 242.614, z = -640.333 }, rot = { x = 0.770, y = 279.000, z = 9.000 }, level = 6, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 3 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1341003, name = "ANY_MONSTER_DIE_341003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_341003", action = "action_EVENT_ANY_MONSTER_DIE_341003" }
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
		monsters = { 341004, 341005, 341006 },
		gadgets = { 341002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_341003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_341003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_341003(context, evt)
	-- 将configid为 341002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 341002, GadgetState.Default) then
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