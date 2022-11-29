-- 基础信息
local base_info = {
	group_id = 155005122
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 122001, monster_id = 21010201, pos = { x = 512.084, y = 189.290, z = 784.992 }, rot = { x = 0.000, y = 56.778, z = 0.000 }, level = 36, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 200 },
	{ config_id = 122004, monster_id = 21010101, pos = { x = 515.200, y = 189.294, z = 784.392 }, rot = { x = 352.199, y = 148.624, z = 357.472 }, level = 36, drop_tag = "丘丘人", disableWander = true, pose_id = 9016, area_id = 200 },
	{ config_id = 122005, monster_id = 21010501, pos = { x = 514.951, y = 189.439, z = 787.311 }, rot = { x = 358.890, y = 204.084, z = 0.205 }, level = 36, drop_tag = "远程丘丘人", pose_id = 9012, area_id = 200 },
	{ config_id = 122006, monster_id = 21010501, pos = { x = 513.871, y = 192.505, z = 778.437 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "远程丘丘人", pose_id = 32, area_id = 200 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 122002, gadget_id = 70211002, pos = { x = 514.119, y = 189.443, z = 785.447 }, rot = { x = 358.381, y = 7.063, z = 359.203 }, level = 16, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 },
	{ config_id = 122007, gadget_id = 70310001, pos = { x = 512.254, y = 192.465, z = 778.125 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1122003, name = "ANY_MONSTER_DIE_122003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_122003", action = "action_EVENT_ANY_MONSTER_DIE_122003" }
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
		monsters = { 122001, 122004, 122005, 122006 },
		gadgets = { 122002, 122007 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_122003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_122003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_122003(context, evt)
	-- 将configid为 122002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 122002, GadgetState.Default) then
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