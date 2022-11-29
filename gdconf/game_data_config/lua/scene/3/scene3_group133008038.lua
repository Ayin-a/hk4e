-- 基础信息
local base_info = {
	group_id = 133008038
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 38005, monster_id = 23010501, pos = { x = 774.395, y = 326.646, z = -536.251 }, rot = { x = 0.000, y = 324.567, z = 0.000 }, level = 30, drop_tag = "先遣队", pose_id = 9014, climate_area_id = 1, area_id = 10 },
	{ config_id = 38006, monster_id = 23010301, pos = { x = 775.623, y = 326.320, z = -533.741 }, rot = { x = 0.000, y = 221.097, z = 0.000 }, level = 30, drop_tag = "先遣队", pose_id = 9014, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 38002, gadget_id = 70211012, pos = { x = 769.074, y = 325.939, z = -534.294 }, rot = { x = 4.285, y = 110.425, z = 358.737 }, level = 26, drop_tag = "雪山战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1038003, name = "ANY_MONSTER_DIE_38003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_38003", action = "action_EVENT_ANY_MONSTER_DIE_38003" }
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
		monsters = { 38005, 38006 },
		gadgets = { 38002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_38003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_38003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_38003(context, evt)
	-- 将configid为 38002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 38002, GadgetState.Default) then
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