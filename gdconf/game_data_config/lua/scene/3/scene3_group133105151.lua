-- 基础信息
local base_info = {
	group_id = 133105151
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 253, monster_id = 21030201, pos = { x = 474.959, y = 200.719, z = -38.371 }, rot = { x = 0.000, y = 133.894, z = 0.000 }, level = 18, drop_tag = "丘丘萨满", pose_id = 9012, area_id = 9 },
	{ config_id = 254, monster_id = 21010701, pos = { x = 484.159, y = 200.639, z = -41.182 }, rot = { x = 0.000, y = 295.288, z = 0.000 }, level = 18, drop_tag = "丘丘人", disableWander = true, area_id = 9 },
	{ config_id = 255, monster_id = 21010301, pos = { x = 475.116, y = 200.700, z = -45.551 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, drop_tag = "丘丘人", area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 408, gadget_id = 70211012, pos = { x = 483.591, y = 200.399, z = -44.532 }, rot = { x = 0.000, y = 300.314, z = 0.000 }, level = 16, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 151001, gadget_id = 70300087, pos = { x = 478.299, y = 201.169, z = -40.396 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 9 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000193, name = "ANY_MONSTER_DIE_193", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_193", action = "action_EVENT_ANY_MONSTER_DIE_193" }
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
		monsters = { 253, 254, 255 },
		gadgets = { 408, 151001 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_193" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_193(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_193(context, evt)
	-- 将configid为 408 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 408, GadgetState.Default) then
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