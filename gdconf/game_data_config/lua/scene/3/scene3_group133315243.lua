-- 基础信息
local base_info = {
	group_id = 133315243
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 243001, monster_id = 20010401, pos = { x = 278.664, y = 182.716, z = 2270.070 }, rot = { x = 0.000, y = 256.876, z = 0.000 }, level = 27, drop_tag = "大史莱姆", disableWander = true, area_id = 20 },
	{ config_id = 243004, monster_id = 20010301, pos = { x = 281.626, y = 182.500, z = 2267.982 }, rot = { x = 0.000, y = 165.519, z = 0.000 }, level = 27, drop_tag = "史莱姆", area_id = 20 },
	{ config_id = 243005, monster_id = 20010301, pos = { x = 275.917, y = 182.500, z = 2270.207 }, rot = { x = 0.000, y = 213.553, z = 0.000 }, level = 27, drop_tag = "史莱姆", area_id = 20 },
	{ config_id = 243006, monster_id = 20010301, pos = { x = 281.670, y = 182.500, z = 2271.361 }, rot = { x = 0.000, y = 194.126, z = 0.000 }, level = 27, drop_tag = "史莱姆", area_id = 20 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 243002, gadget_id = 70211002, pos = { x = 281.031, y = 182.472, z = 2269.659 }, rot = { x = 0.000, y = 92.905, z = 0.000 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1243003, name = "ANY_MONSTER_DIE_243003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_243003", action = "action_EVENT_ANY_MONSTER_DIE_243003" },
	{ config_id = 1243007, name = "MONSTER_BATTLE_243007", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_243007", action = "action_EVENT_MONSTER_BATTLE_243007" }
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
		monsters = { 243001 },
		gadgets = { 243002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_243003", "MONSTER_BATTLE_243007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 243004, 243005, 243006 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_243003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_243003(context, evt)
	-- 将configid为 243002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 243002, GadgetState.Default) then
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

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_243007(context, evt)
	if 243001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_243007(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133315243, 2)
	
	return 0
end