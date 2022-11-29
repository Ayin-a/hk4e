-- 基础信息
local base_info = {
	group_id = 166001555
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 555001, monster_id = 21010201, pos = { x = 386.539, y = 389.096, z = 657.117 }, rot = { x = 0.000, y = 120.575, z = 0.000 }, level = 36, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 300 },
	{ config_id = 555004, monster_id = 21011201, pos = { x = 414.579, y = 383.255, z = 652.650 }, rot = { x = 0.000, y = 258.483, z = 0.000 }, level = 36, drop_tag = "丘丘人", disableWander = true, area_id = 300 },
	{ config_id = 555005, monster_id = 21010201, pos = { x = 389.517, y = 390.393, z = 649.314 }, rot = { x = 0.000, y = 155.398, z = 0.000 }, level = 36, drop_tag = "丘丘人", pose_id = 9010, area_id = 300 },
	{ config_id = 555006, monster_id = 21011201, pos = { x = 390.943, y = 390.452, z = 647.602 }, rot = { x = 0.000, y = 316.076, z = 0.000 }, level = 36, drop_tag = "丘丘人", disableWander = true, area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 555002, gadget_id = 70211002, pos = { x = 387.948, y = 388.656, z = 659.886 }, rot = { x = 356.488, y = 171.074, z = 9.239 }, level = 26, drop_tag = "战斗低级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1555003, name = "ANY_MONSTER_DIE_555003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_555003", action = "action_EVENT_ANY_MONSTER_DIE_555003" }
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
		monsters = { 555001, 555004, 555005, 555006 },
		gadgets = { 555002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_555003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_555003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_555003(context, evt)
	-- 将configid为 555002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 555002, GadgetState.Default) then
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