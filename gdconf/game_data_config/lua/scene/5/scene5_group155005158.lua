-- 基础信息
local base_info = {
	group_id = 155005158
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 158004, monster_id = 21010501, pos = { x = 274.632, y = 145.113, z = 921.820 }, rot = { x = 0.000, y = 95.719, z = 0.000 }, level = 36, drop_tag = "远程丘丘人", disableWander = true, area_id = 200 },
	{ config_id = 158005, monster_id = 21010501, pos = { x = 267.245, y = 145.136, z = 919.087 }, rot = { x = 0.000, y = 123.940, z = 0.000 }, level = 36, drop_tag = "远程丘丘人", area_id = 200 },
	{ config_id = 158007, monster_id = 21010401, pos = { x = 274.555, y = 145.158, z = 916.715 }, rot = { x = 0.000, y = 273.408, z = 0.000 }, level = 36, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9002, area_id = 200 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 158002, gadget_id = 70211002, pos = { x = 271.957, y = 145.051, z = 916.187 }, rot = { x = 0.000, y = 341.321, z = 0.000 }, level = 16, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 },
	{ config_id = 158008, gadget_id = 70220014, pos = { x = 274.327, y = 144.912, z = 914.862 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 158009, gadget_id = 70220014, pos = { x = 275.311, y = 144.904, z = 914.948 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 158010, gadget_id = 70310001, pos = { x = 272.216, y = 144.981, z = 923.928 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 200 },
	{ config_id = 158011, gadget_id = 70310001, pos = { x = 266.036, y = 144.987, z = 919.656 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 200 },
	{ config_id = 158012, gadget_id = 70310006, pos = { x = 269.960, y = 145.134, z = 916.547 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1158003, name = "ANY_MONSTER_DIE_158003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_158003", action = "action_EVENT_ANY_MONSTER_DIE_158003" }
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
		monsters = { 158004, 158005, 158007 },
		gadgets = { 158002, 158008, 158009, 158010, 158011, 158012 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_158003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_158003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_158003(context, evt)
	-- 将configid为 158002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 158002, GadgetState.Default) then
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