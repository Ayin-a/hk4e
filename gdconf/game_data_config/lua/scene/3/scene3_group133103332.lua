-- 基础信息
local base_info = {
	group_id = 133103332
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 332001, monster_id = 21011001, pos = { x = 381.500, y = 292.764, z = 1535.198 }, rot = { x = 0.000, y = 80.898, z = 0.000 }, level = 24, drop_tag = "远程丘丘人", disableWander = true, area_id = 6 },
	{ config_id = 332004, monster_id = 21030401, pos = { x = 381.156, y = 292.557, z = 1532.132 }, rot = { x = 0.000, y = 80.898, z = 0.000 }, level = 24, drop_tag = "丘丘萨满", disableWander = true, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 332002, gadget_id = 70211012, pos = { x = 385.917, y = 292.499, z = 1533.565 }, rot = { x = 357.418, y = 278.260, z = 3.609 }, level = 21, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 332005, gadget_id = 70220014, pos = { x = 383.793, y = 292.718, z = 1535.667 }, rot = { x = 2.842, y = 203.986, z = 3.391 }, level = 24, area_id = 6 },
	{ config_id = 332006, gadget_id = 70310006, pos = { x = 383.398, y = 292.510, z = 1532.495 }, rot = { x = 357.262, y = 27.694, z = 356.469 }, level = 24, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1332003, name = "ANY_MONSTER_DIE_332003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_332003", action = "action_EVENT_ANY_MONSTER_DIE_332003" }
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
		monsters = { 332001, 332004 },
		gadgets = { 332002, 332005, 332006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_332003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_332003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_332003(context, evt)
	-- 将configid为 332002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 332002, GadgetState.Default) then
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