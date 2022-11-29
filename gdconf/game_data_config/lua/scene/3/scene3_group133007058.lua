-- 基础信息
local base_info = {
	group_id = 133007058
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 58001, monster_id = 21011001, pos = { x = 2599.550, y = 229.497, z = 149.793 }, rot = { x = 0.000, y = 81.571, z = 0.000 }, level = 30, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, area_id = 4 },
	{ config_id = 58004, monster_id = 21011001, pos = { x = 2602.866, y = 229.509, z = 148.832 }, rot = { x = 0.000, y = 308.194, z = 0.000 }, level = 30, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, area_id = 4 },
	{ config_id = 58005, monster_id = 21010501, pos = { x = 2602.142, y = 229.566, z = 151.741 }, rot = { x = 0.000, y = 194.671, z = 0.000 }, level = 30, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, area_id = 4 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 58002, gadget_id = 70211012, pos = { x = 2603.100, y = 229.600, z = 153.500 }, rot = { x = 0.000, y = 203.943, z = 0.000 }, level = 21, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 4 },
	{ config_id = 58006, gadget_id = 70310004, pos = { x = 2601.510, y = 229.507, z = 149.905 }, rot = { x = 0.000, y = 340.595, z = 0.000 }, level = 23, state = GadgetState.GearStart, area_id = 4 },
	{ config_id = 58007, gadget_id = 70220013, pos = { x = 2600.550, y = 229.615, z = 154.540 }, rot = { x = 0.000, y = 184.913, z = 0.000 }, level = 23, area_id = 4 },
	{ config_id = 58008, gadget_id = 70220013, pos = { x = 2598.296, y = 229.598, z = 155.120 }, rot = { x = 0.000, y = 19.796, z = 0.000 }, level = 23, area_id = 4 },
	{ config_id = 58009, gadget_id = 70220014, pos = { x = 2604.341, y = 229.543, z = 145.891 }, rot = { x = 0.000, y = 52.432, z = 0.000 }, level = 23, area_id = 4 },
	{ config_id = 58010, gadget_id = 70220014, pos = { x = 2596.155, y = 229.517, z = 149.328 }, rot = { x = 0.000, y = 65.016, z = 0.000 }, level = 23, area_id = 4 },
	{ config_id = 58011, gadget_id = 70220005, pos = { x = 2597.411, y = 229.631, z = 152.806 }, rot = { x = 0.000, y = 296.896, z = 0.000 }, level = 23, area_id = 4 },
	{ config_id = 58012, gadget_id = 70220005, pos = { x = 2604.938, y = 229.571, z = 150.279 }, rot = { x = 0.000, y = 60.842, z = 0.000 }, level = 23, area_id = 4 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1058003, name = "ANY_MONSTER_DIE_58003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_58003", action = "action_EVENT_ANY_MONSTER_DIE_58003" }
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
		monsters = { 58001, 58004, 58005 },
		gadgets = { 58002, 58006, 58007, 58008, 58009, 58010, 58011, 58012 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_58003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_58003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_58003(context, evt)
	-- 将configid为 58002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 58002, GadgetState.Default) then
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