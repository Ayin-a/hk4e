-- 基础信息
local base_info = {
	group_id = 155005167
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 167001, monster_id = 21010501, pos = { x = 148.025, y = 264.064, z = 360.203 }, rot = { x = 0.000, y = 271.486, z = 0.000 }, level = 36, drop_tag = "远程丘丘人", disableWander = true, area_id = 200 },
	{ config_id = 167006, monster_id = 21010901, pos = { x = 145.204, y = 261.258, z = 366.164 }, rot = { x = 0.000, y = 236.258, z = 0.000 }, level = 36, drop_tag = "远程丘丘人", disableWander = true, area_id = 200 },
	{ config_id = 167007, monster_id = 21010901, pos = { x = 138.472, y = 260.455, z = 376.878 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "远程丘丘人", area_id = 200 },
	{ config_id = 167008, monster_id = 21020701, pos = { x = 140.667, y = 259.693, z = 362.846 }, rot = { x = 0.000, y = 96.488, z = 0.000 }, level = 36, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 200 },
	{ config_id = 167013, monster_id = 21010101, pos = { x = 137.268, y = 260.569, z = 352.142 }, rot = { x = 0.000, y = 128.323, z = 0.000 }, level = 36, drop_tag = "丘丘人", disableWander = true, pose_id = 9016, area_id = 200 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 167002, gadget_id = 70211002, pos = { x = 140.737, y = 260.084, z = 367.661 }, rot = { x = 18.282, y = 208.663, z = 342.296 }, level = 16, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 },
	{ config_id = 167004, gadget_id = 70300086, pos = { x = 143.102, y = 261.353, z = 355.129 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 167005, gadget_id = 70300086, pos = { x = 146.280, y = 261.560, z = 367.383 }, rot = { x = 7.399, y = 358.643, z = 349.579 }, level = 36, area_id = 200 },
	{ config_id = 167009, gadget_id = 70310006, pos = { x = 161.564, y = 268.808, z = 364.700 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 200 },
	{ config_id = 167010, gadget_id = 70310001, pos = { x = 140.984, y = 261.062, z = 353.378 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 200 },
	{ config_id = 167011, gadget_id = 70310001, pos = { x = 135.607, y = 259.993, z = 349.725 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 200 },
	{ config_id = 167012, gadget_id = 70310001, pos = { x = 134.752, y = 258.101, z = 367.155 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1167003, name = "ANY_MONSTER_DIE_167003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_167003", action = "action_EVENT_ANY_MONSTER_DIE_167003" }
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
		monsters = { 167001, 167006, 167007, 167008, 167013 },
		gadgets = { 167002, 167004, 167005, 167009, 167010, 167011, 167012 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_167003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_167003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_167003(context, evt)
	-- 将configid为 167002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 167002, GadgetState.Default) then
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