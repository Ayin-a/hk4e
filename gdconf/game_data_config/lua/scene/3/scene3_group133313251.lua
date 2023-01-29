-- 基础信息
local base_info = {
	group_id = 133313251
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 251001, monster_id = 25310101, pos = { x = -587.338, y = 39.394, z = 5730.295 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "中级镀金旅团", disableWander = true, pose_id = 9001, area_id = 32 },
	{ config_id = 251004, monster_id = 25310201, pos = { x = -589.236, y = 39.173, z = 5735.758 }, rot = { x = 0.000, y = 120.131, z = 0.000 }, level = 32, drop_tag = "中级镀金旅团", pose_id = 9003, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 251002, gadget_id = 70211002, pos = { x = -599.156, y = 35.632, z = 5742.796 }, rot = { x = 0.000, y = 119.599, z = 0.000 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	{ config_id = 251005, gadget_id = 70210101, pos = { x = -585.377, y = 40.884, z = 5725.972 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜武器须弥", persistent = true, area_id = 32 },
	{ config_id = 251006, gadget_id = 70210101, pos = { x = -597.385, y = 39.302, z = 5731.828 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬须弥", persistent = true, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1251003, name = "ANY_MONSTER_DIE_251003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_251003", action = "action_EVENT_ANY_MONSTER_DIE_251003" }
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
		monsters = { 251001, 251004 },
		gadgets = { 251002, 251005, 251006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_251003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_251003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_251003(context, evt)
	-- 将configid为 251002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 251002, GadgetState.Default) then
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