-- 基础信息
local base_info = {
	group_id = 144001031
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 31001, monster_id = 20011101, pos = { x = 231.113, y = 126.571, z = 362.284 }, rot = { x = 0.000, y = 104.896, z = 0.000 }, level = 20, drop_tag = "大史莱姆", disableWander = true, area_id = 102 },
	{ config_id = 31004, monster_id = 22010301, pos = { x = 232.565, y = 126.821, z = 359.094 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "深渊法师", disableWander = true, area_id = 102 },
	{ config_id = 31006, monster_id = 20011001, pos = { x = 233.878, y = 126.389, z = 364.824 }, rot = { x = 0.000, y = 116.229, z = 0.000 }, level = 20, drop_tag = "史莱姆", disableWander = true, area_id = 102 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 31002, gadget_id = 70211012, pos = { x = 233.204, y = 126.486, z = 362.922 }, rot = { x = 0.000, y = 104.896, z = 0.000 }, level = 16, drop_tag = "战斗中级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 102 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1031003, name = "ANY_MONSTER_DIE_31003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_31003", action = "action_EVENT_ANY_MONSTER_DIE_31003" }
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
		monsters = { 31001, 31004, 31006 },
		gadgets = { 31002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_31003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_31003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_31003(context, evt)
	-- 将configid为 31002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 31002, GadgetState.Default) then
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