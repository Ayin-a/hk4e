-- 基础信息
local base_info = {
	group_id = 133222348
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 348001, monster_id = 21010501, pos = { x = -4882.324, y = 201.116, z = -4313.008 }, rot = { x = 0.000, y = 306.555, z = 0.000 }, level = 32, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, climate_area_id = 10, area_id = 14 },
	{ config_id = 348010, monster_id = 21010701, pos = { x = -4888.014, y = 200.523, z = -4308.177 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "丘丘人", climate_area_id = 10, area_id = 14 },
	{ config_id = 348011, monster_id = 21030601, pos = { x = -4886.728, y = 201.128, z = -4313.530 }, rot = { x = 0.000, y = 20.920, z = 0.000 }, level = 30, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, climate_area_id = 10, area_id = 14 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 348002, gadget_id = 70211002, pos = { x = -4890.845, y = 200.180, z = -4313.473 }, rot = { x = 345.575, y = 59.873, z = 354.457 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 },
	{ config_id = 348004, gadget_id = 70300086, pos = { x = -4891.456, y = 199.146, z = -4310.684 }, rot = { x = 5.382, y = 11.530, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 348005, gadget_id = 70300086, pos = { x = -4887.737, y = 198.099, z = -4317.541 }, rot = { x = 345.360, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 348006, gadget_id = 70220014, pos = { x = -4886.223, y = 200.036, z = -4317.042 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 348007, gadget_id = 70220014, pos = { x = -4884.748, y = 200.327, z = -4317.226 }, rot = { x = 0.000, y = 0.000, z = 347.302 }, level = 30, area_id = 14 },
	{ config_id = 348008, gadget_id = 70220014, pos = { x = -4891.157, y = 199.610, z = -4307.081 }, rot = { x = 32.546, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 348009, gadget_id = 70310006, pos = { x = -4885.279, y = 200.885, z = -4311.338 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1348003, name = "ANY_MONSTER_DIE_348003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_348003", action = "action_EVENT_ANY_MONSTER_DIE_348003" }
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
		monsters = { 348001, 348010, 348011 },
		gadgets = { 348002, 348004, 348005, 348006, 348007, 348008, 348009 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_348003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_348003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_348003(context, evt)
	-- 将configid为 348002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 348002, GadgetState.Default) then
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