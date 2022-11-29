-- 基础信息
local base_info = {
	group_id = 133217349
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 349001, monster_id = 21010701, pos = { x = -4900.595, y = 200.488, z = -4242.014 }, rot = { x = 0.000, y = 28.736, z = 0.000 }, level = 30, drop_tag = "丘丘人", climate_area_id = 10, area_id = 14 },
	{ config_id = 349004, monster_id = 21020701, pos = { x = -4897.069, y = 201.969, z = -4235.900 }, rot = { x = 0.000, y = 131.843, z = 0.000 }, level = 30, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, climate_area_id = 10, area_id = 14 },
	{ config_id = 349005, monster_id = 21011001, pos = { x = -4918.237, y = 200.043, z = -4219.540 }, rot = { x = 0.000, y = 268.542, z = 0.000 }, level = 30, drop_tag = "远程丘丘人", climate_area_id = 10, area_id = 14 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 349002, gadget_id = 70211002, pos = { x = -4893.731, y = 201.145, z = -4239.108 }, rot = { x = 12.300, y = 271.242, z = 349.688 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1349003, name = "ANY_MONSTER_DIE_349003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_349003", action = "action_EVENT_ANY_MONSTER_DIE_349003" }
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
		monsters = { 349001, 349004, 349005 },
		gadgets = { 349002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_349003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_349003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_349003(context, evt)
	-- 将configid为 349002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 349002, GadgetState.Default) then
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