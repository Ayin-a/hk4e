-- 基础信息
local base_info = {
	group_id = 166001158
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 158001, monster_id = 25070101, pos = { x = 965.469, y = 859.789, z = 669.858 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "盗宝团", disableWander = true, area_id = 300 },
	{ config_id = 158004, monster_id = 25010201, pos = { x = 966.193, y = 862.377, z = 683.031 }, rot = { x = 0.000, y = 175.509, z = 0.000 }, level = 36, drop_tag = "盗宝团", pose_id = 9004, area_id = 300 },
	{ config_id = 158005, monster_id = 25010201, pos = { x = 961.718, y = 859.924, z = 676.174 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "盗宝团", area_id = 300 },
	{ config_id = 158006, monster_id = 25010501, pos = { x = 950.465, y = 866.000, z = 678.560 }, rot = { x = 0.000, y = 225.254, z = 0.000 }, level = 36, drop_tag = "盗宝团", disableWander = true, pose_id = 9002, area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 158002, gadget_id = 70211012, pos = { x = 967.785, y = 859.805, z = 668.450 }, rot = { x = 357.915, y = 334.634, z = 353.565 }, level = 26, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 }
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
		monsters = { 158001, 158004, 158005, 158006 },
		gadgets = { 158002 },
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