-- 基础信息
local base_info = {
	group_id = 155005179
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 179004, monster_id = 21010701, pos = { x = 345.136, y = 288.699, z = 359.677 }, rot = { x = 0.000, y = 229.203, z = 0.000 }, level = 36, drop_tag = "丘丘人", disableWander = true, area_id = 200 },
	{ config_id = 179005, monster_id = 21010701, pos = { x = 346.040, y = 289.128, z = 369.771 }, rot = { x = 0.000, y = 343.654, z = 0.000 }, level = 36, drop_tag = "丘丘人", disableWander = true, area_id = 200 },
	{ config_id = 179006, monster_id = 21010701, pos = { x = 352.865, y = 289.099, z = 362.651 }, rot = { x = 0.000, y = 31.870, z = 0.000 }, level = 36, drop_tag = "丘丘人", disableWander = true, area_id = 200 },
	{ config_id = 179007, monster_id = 21010101, pos = { x = 348.336, y = 289.935, z = 354.388 }, rot = { x = 0.000, y = 151.753, z = 0.000 }, level = 36, drop_tag = "丘丘人", disableWander = true, pose_id = 9016, area_id = 200 },
	{ config_id = 179008, monster_id = 21020201, pos = { x = 349.372, y = 289.208, z = 366.282 }, rot = { x = 0.000, y = 232.753, z = 0.000 }, level = 36, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 200 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 179002, gadget_id = 70211002, pos = { x = 345.436, y = 289.292, z = 363.685 }, rot = { x = 4.467, y = 0.450, z = 0.035 }, level = 16, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 },
	{ config_id = 179009, gadget_id = 70310006, pos = { x = 347.282, y = 289.150, z = 365.362 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 200 },
	{ config_id = 179010, gadget_id = 70310001, pos = { x = 342.485, y = 289.005, z = 367.889 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 200 },
	{ config_id = 179011, gadget_id = 70310001, pos = { x = 356.352, y = 289.060, z = 363.988 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1179003, name = "ANY_MONSTER_DIE_179003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_179003", action = "action_EVENT_ANY_MONSTER_DIE_179003" }
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
		monsters = { 179004, 179005, 179006, 179007, 179008 },
		gadgets = { 179002, 179009, 179010, 179011 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_179003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_179003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_179003(context, evt)
	-- 将configid为 179002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 179002, GadgetState.Default) then
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