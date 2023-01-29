-- 基础信息
local base_info = {
	group_id = 133314849
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 849001, monster_id = 23010201, pos = { x = -211.371, y = -33.539, z = 4768.297 }, rot = { x = 0.000, y = 119.329, z = 0.000 }, level = 32, drop_tag = "先遣队", disableWander = true, pose_id = 9011, area_id = 32 },
	{ config_id = 849005, monster_id = 23020101, pos = { x = -212.456, y = -33.455, z = 4762.883 }, rot = { x = 0.000, y = 24.927, z = 0.000 }, level = 32, drop_tag = "债务处理人", disableWander = true, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 849002, gadget_id = 70210101, pos = { x = -214.792, y = -32.731, z = 4764.318 }, rot = { x = 0.000, y = 289.160, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜武器须弥", isOneoff = true, persistent = true, area_id = 32 },
	{ config_id = 849003, gadget_id = 70211002, pos = { x = -215.191, y = -33.455, z = 4760.132 }, rot = { x = 0.000, y = 128.007, z = 0.000 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	{ config_id = 849006, gadget_id = 70210101, pos = { x = -215.338, y = -32.310, z = 4763.276 }, rot = { x = 0.000, y = 4.489, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜人文须弥", isOneoff = true, persistent = true, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1849004, name = "ANY_MONSTER_DIE_849004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_849004", action = "action_EVENT_ANY_MONSTER_DIE_849004" }
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
		monsters = { 849001, 849005 },
		gadgets = { 849002, 849003, 849006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_849004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_849004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_849004(context, evt)
	-- 将configid为 849003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 849003, GadgetState.Default) then
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