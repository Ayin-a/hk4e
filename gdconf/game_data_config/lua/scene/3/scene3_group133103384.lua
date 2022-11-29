-- 基础信息
local base_info = {
	group_id = 133103384
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 384001, monster_id = 25030201, pos = { x = 194.020, y = 198.800, z = 1415.550 }, rot = { x = 0.000, y = 179.070, z = 0.000 }, level = 24, drop_tag = "盗宝团", disableWander = true, pose_id = 9003, area_id = 6 },
	{ config_id = 384004, monster_id = 25020201, pos = { x = 196.043, y = 198.972, z = 1419.686 }, rot = { x = 0.000, y = 249.600, z = 0.000 }, level = 24, drop_tag = "盗宝团", disableWander = true, pose_id = 2, area_id = 6 },
	{ config_id = 384005, monster_id = 25070101, pos = { x = 189.112, y = 199.167, z = 1415.837 }, rot = { x = 0.000, y = 223.500, z = 0.000 }, level = 24, drop_tag = "盗宝团", disableWander = true, pose_id = 4, area_id = 6 },
	{ config_id = 384006, monster_id = 25010301, pos = { x = 190.560, y = 200.001, z = 1420.097 }, rot = { x = 0.000, y = 192.200, z = 0.000 }, level = 24, drop_tag = "盗宝团", disableWander = true, pose_id = 9004, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 384002, gadget_id = 70211012, pos = { x = 191.953, y = 199.939, z = 1423.119 }, rot = { x = 3.892, y = 187.631, z = 11.191 }, level = 21, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 384007, gadget_id = 70310009, pos = { x = 192.862, y = 199.591, z = 1419.853 }, rot = { x = 12.015, y = 108.647, z = 354.797 }, level = 24, state = GadgetState.GearStart, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1384003, name = "ANY_MONSTER_DIE_384003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_384003", action = "action_EVENT_ANY_MONSTER_DIE_384003" }
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
		monsters = { 384001, 384004, 384005, 384006 },
		gadgets = { 384002, 384007 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_384003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_384003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_384003(context, evt)
	-- 将configid为 384002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 384002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4001, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end