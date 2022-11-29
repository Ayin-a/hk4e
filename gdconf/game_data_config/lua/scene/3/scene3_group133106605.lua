-- 基础信息
local base_info = {
	group_id = 133106605
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 605001, monster_id = 21020501, pos = { x = -1006.206, y = 297.478, z = 1633.278 }, rot = { x = 0.000, y = 189.526, z = 0.000 }, level = 36, drop_tag = "丘丘岩盔王", disableWander = true, pose_id = 401, area_id = 19 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 605002, gadget_id = 70211022, pos = { x = -1008.113, y = 300.579, z = 1625.973 }, rot = { x = 21.753, y = 16.653, z = 5.034 }, level = 26, drop_tag = "战斗高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 19 },
	{ config_id = 605004, gadget_id = 70290324, pos = { x = -1012.765, y = 297.111, z = 1634.666 }, rot = { x = 20.720, y = 24.656, z = 6.623 }, level = 36, area_id = 19 },
	{ config_id = 605005, gadget_id = 70290324, pos = { x = -1013.904, y = 299.045, z = 1629.990 }, rot = { x = 20.938, y = 24.938, z = 7.624 }, level = 36, area_id = 19 },
	{ config_id = 605006, gadget_id = 70290324, pos = { x = -1002.199, y = 299.078, z = 1628.789 }, rot = { x = 22.303, y = 24.814, z = 5.065 }, level = 36, area_id = 19 },
	{ config_id = 605007, gadget_id = 70290323, pos = { x = -989.890, y = 309.811, z = 1597.287 }, rot = { x = 336.704, y = 168.199, z = 8.145 }, level = 36, area_id = 19 },
	{ config_id = 605008, gadget_id = 70290323, pos = { x = -987.403, y = 308.724, z = 1600.338 }, rot = { x = 359.939, y = 166.352, z = 352.267 }, level = 36, area_id = 19 },
	{ config_id = 605009, gadget_id = 70290323, pos = { x = -988.659, y = 309.776, z = 1597.344 }, rot = { x = 329.877, y = 166.954, z = 8.135 }, level = 36, area_id = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1605003, name = "ANY_MONSTER_DIE_605003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_605003", action = "action_EVENT_ANY_MONSTER_DIE_605003" }
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
		monsters = { 605001 },
		gadgets = { 605002, 605004, 605005, 605006, 605007, 605008, 605009 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_605003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_605003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_605003(context, evt)
	-- 将configid为 605002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 605002, GadgetState.Default) then
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