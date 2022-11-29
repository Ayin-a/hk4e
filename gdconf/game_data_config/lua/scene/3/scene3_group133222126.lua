-- 基础信息
local base_info = {
	group_id = 133222126
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 126001, monster_id = 21020201, pos = { x = -4817.798, y = 219.090, z = -4726.121 }, rot = { x = 0.000, y = 161.202, z = 0.000 }, level = 32, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 14 },
	{ config_id = 126005, monster_id = 21010101, pos = { x = -4821.699, y = 219.095, z = -4723.597 }, rot = { x = 0.000, y = 100.210, z = 0.000 }, level = 30, drop_tag = "丘丘人", area_id = 14 },
	{ config_id = 126006, monster_id = 21010101, pos = { x = -4820.708, y = 219.099, z = -4727.382 }, rot = { x = 0.000, y = 34.196, z = 0.000 }, level = 30, drop_tag = "丘丘人", area_id = 14 },
	{ config_id = 126007, monster_id = 21010101, pos = { x = -4816.236, y = 219.096, z = -4721.663 }, rot = { x = 0.000, y = 191.878, z = 0.000 }, level = 30, drop_tag = "丘丘人", area_id = 14 },
	{ config_id = 126008, monster_id = 21010101, pos = { x = -4814.794, y = 219.099, z = -4725.409 }, rot = { x = 0.000, y = 288.028, z = 0.000 }, level = 30, drop_tag = "丘丘人", area_id = 14 },
	{ config_id = 126009, monster_id = 21010101, pos = { x = -4817.065, y = 219.100, z = -4728.161 }, rot = { x = 0.000, y = 342.038, z = 0.000 }, level = 30, drop_tag = "丘丘人", area_id = 14 },
	{ config_id = 126011, monster_id = 21010701, pos = { x = -4821.699, y = 219.095, z = -4723.597 }, rot = { x = 0.000, y = 100.210, z = 0.000 }, level = 30, drop_tag = "丘丘人", area_id = 14 },
	{ config_id = 126012, monster_id = 21010701, pos = { x = -4820.708, y = 219.099, z = -4727.382 }, rot = { x = 0.000, y = 34.196, z = 0.000 }, level = 30, drop_tag = "丘丘人", area_id = 14 },
	{ config_id = 126013, monster_id = 21010701, pos = { x = -4816.236, y = 219.096, z = -4721.663 }, rot = { x = 0.000, y = 191.878, z = 0.000 }, level = 30, drop_tag = "丘丘人", area_id = 14 },
	{ config_id = 126014, monster_id = 21010701, pos = { x = -4814.794, y = 219.099, z = -4725.409 }, rot = { x = 0.000, y = 288.028, z = 0.000 }, level = 30, drop_tag = "丘丘人", area_id = 14 },
	{ config_id = 126015, monster_id = 21010701, pos = { x = -4817.065, y = 219.100, z = -4728.161 }, rot = { x = 0.000, y = 342.038, z = 0.000 }, level = 30, drop_tag = "丘丘人", area_id = 14 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 126002, gadget_id = 70211002, pos = { x = -4819.948, y = 219.097, z = -4720.151 }, rot = { x = 0.000, y = 159.729, z = 0.000 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1126003, name = "ANY_MONSTER_DIE_126003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_126003", action = "action_EVENT_ANY_MONSTER_DIE_126003" },
	{ config_id = 1126004, name = "SPECIFIC_MONSTER_HP_CHANGE_126004", event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = "126001", condition = "condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_126004", action = "action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_126004" },
	{ config_id = 1126010, name = "ANY_MONSTER_DIE_126010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_126010", action = "action_EVENT_ANY_MONSTER_DIE_126010" }
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
		monsters = { 126001 },
		gadgets = { 126002 },
		regions = { },
		triggers = { "SPECIFIC_MONSTER_HP_CHANGE_126004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 126005, 126006, 126007, 126008, 126009 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_126010" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 126011, 126012, 126013, 126014, 126015 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_126003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_126003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_126003(context, evt)
	-- 将configid为 126002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 126002, GadgetState.Default) then
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
function condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_126004(context, evt)
	--[[判断指定configid的怪物的血量小于%30时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE or evt.param3 > 30 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_126004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133222126, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_126010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_126010(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133222126, 3)
	
	return 0
end