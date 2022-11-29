-- 基础信息
local base_info = {
	group_id = 133007150
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 150001, monster_id = 21010501, pos = { x = 2622.917, y = 206.825, z = 356.350 }, rot = { x = 0.000, y = 296.575, z = 0.000 }, level = 22, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, area_id = 4 },
	{ config_id = 150004, monster_id = 21010501, pos = { x = 2622.255, y = 206.731, z = 359.362 }, rot = { x = 0.000, y = 211.898, z = 0.000 }, level = 22, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, area_id = 4 },
	{ config_id = 150005, monster_id = 21010501, pos = { x = 2618.773, y = 206.825, z = 355.366 }, rot = { x = 0.000, y = 20.900, z = 0.000 }, level = 22, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9002, area_id = 4 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 150002, gadget_id = 70211012, pos = { x = 2624.500, y = 206.825, z = 357.501 }, rot = { x = 0.000, y = 262.130, z = 0.000 }, level = 21, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 4 },
	{ config_id = 150006, gadget_id = 70310001, pos = { x = 2620.891, y = 206.812, z = 357.714 }, rot = { x = 0.000, y = 340.102, z = 0.000 }, level = 23, state = GadgetState.GearStart, area_id = 4 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1150003, name = "ANY_MONSTER_DIE_150003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_150003", action = "action_EVENT_ANY_MONSTER_DIE_150003" }
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
		monsters = { 150001, 150004, 150005 },
		gadgets = { 150002, 150006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_150003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_150003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_150003(context, evt)
	-- 将configid为 150002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 150002, GadgetState.Default) then
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