-- 基础信息
local base_info = {
	group_id = 133104112
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 314, monster_id = 21010501, pos = { x = 566.320, y = 200.547, z = 69.428 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "远程丘丘人", disableWander = true, area_id = 9 },
	{ config_id = 315, monster_id = 21010401, pos = { x = 564.121, y = 200.831, z = 71.659 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "远程丘丘人", disableWander = true, area_id = 9 },
	{ config_id = 316, monster_id = 21010401, pos = { x = 559.533, y = 200.325, z = 63.149 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "远程丘丘人", disableWander = true, area_id = 9 },
	{ config_id = 317, monster_id = 21010401, pos = { x = 553.467, y = 200.225, z = 72.808 }, rot = { x = 4.606, y = 117.031, z = 355.294 }, level = 19, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 308, gadget_id = 70211012, pos = { x = 557.733, y = 200.325, z = 62.687 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000172, name = "ANY_MONSTER_DIE_172", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_172", action = "action_EVENT_ANY_MONSTER_DIE_172" }
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
		-- description = suite_1,
		monsters = { 314, 315, 316, 317 },
		gadgets = { 308 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_172" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_172(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_172(context, evt)
	-- 将configid为 308 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 308, GadgetState.Default) then
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