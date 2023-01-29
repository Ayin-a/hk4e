-- 基础信息
local base_info = {
	group_id = 133314283
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 283001, monster_id = 22010101, pos = { x = -786.388, y = -24.757, z = 4432.431 }, rot = { x = 0.000, y = 336.091, z = 0.000 }, level = 32, drop_tag = "深渊法师", disableWander = true, pose_id = 9013, area_id = 32 },
	{ config_id = 283004, monster_id = 21010201, pos = { x = -786.675, y = -28.443, z = 4436.733 }, rot = { x = 0.000, y = 182.721, z = 0.000 }, level = 32, drop_tag = "丘丘人", pose_id = 9012, area_id = 32 },
	{ config_id = 283005, monster_id = 21010201, pos = { x = -788.244, y = -28.381, z = 4436.611 }, rot = { x = 0.000, y = 164.446, z = 0.000 }, level = 32, drop_tag = "丘丘人", pose_id = 9012, area_id = 32 },
	{ config_id = 283006, monster_id = 21010201, pos = { x = -789.900, y = -28.153, z = 4436.122 }, rot = { x = 0.000, y = 148.017, z = 0.000 }, level = 32, drop_tag = "丘丘人", pose_id = 9012, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 283002, gadget_id = 70211002, pos = { x = -779.176, y = -26.487, z = 4431.661 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	{ config_id = 283008, gadget_id = 70300099, pos = { x = -781.971, y = -24.294, z = 4430.178 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1283003, name = "ANY_MONSTER_DIE_283003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_283003", action = "action_EVENT_ANY_MONSTER_DIE_283003" }
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
		monsters = { 283001, 283004, 283005, 283006 },
		gadgets = { 283002, 283008 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_283003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_283003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_283003(context, evt)
	-- 将configid为 283002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 283002, GadgetState.Default) then
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