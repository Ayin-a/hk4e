-- 基础信息
local base_info = {
	group_id = 133002346
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 346004, monster_id = 21010201, pos = { x = 1785.706, y = 260.624, z = -1027.533 }, rot = { x = 0.000, y = 176.375, z = 0.000 }, level = 4, drop_tag = "丘丘人", pose_id = 9003, area_id = 3 },
	{ config_id = 346005, monster_id = 21010201, pos = { x = 1782.734, y = 260.625, z = -1029.799 }, rot = { x = 0.000, y = 87.488, z = 0.000 }, level = 4, drop_tag = "丘丘人", pose_id = 9002, area_id = 3 },
	{ config_id = 346006, monster_id = 21010201, pos = { x = 1785.315, y = 259.552, z = -1032.778 }, rot = { x = 0.000, y = 2.009, z = 0.000 }, level = 4, drop_tag = "丘丘人", pose_id = 9003, area_id = 3 },
	{ config_id = 346007, monster_id = 21030101, pos = { x = 1788.767, y = 258.579, z = -1034.550 }, rot = { x = 0.000, y = 2.009, z = 0.000 }, level = 4, drop_tag = "丘丘萨满", area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 346002, gadget_id = 70211012, pos = { x = 1787.139, y = 260.521, z = -1024.971 }, rot = { x = 3.660, y = 206.418, z = 16.700 }, level = 1, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 3 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1346003, name = "ANY_MONSTER_DIE_346003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_346003", action = "action_EVENT_ANY_MONSTER_DIE_346003" }
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
		monsters = { 346004, 346005, 346006, 346007 },
		gadgets = { 346002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_346003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_346003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_346003(context, evt)
	-- 将configid为 346002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 346002, GadgetState.Default) then
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