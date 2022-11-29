-- 基础信息
local base_info = {
	group_id = 133007198
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 198001, monster_id = 21010201, pos = { x = 2384.210, y = 222.545, z = 380.097 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 23, drop_tag = "丘丘人", disableWander = true, area_id = 4 },
	{ config_id = 198004, monster_id = 21010501, pos = { x = 2386.386, y = 222.545, z = 386.707 }, rot = { x = 0.000, y = 229.312, z = 0.000 }, level = 30, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, area_id = 4 },
	{ config_id = 198005, monster_id = 21030301, pos = { x = 2386.411, y = 222.545, z = 383.423 }, rot = { x = 0.000, y = 327.872, z = 0.000 }, level = 27, drop_tag = "丘丘萨满", disableWander = true, area_id = 4 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 198002, gadget_id = 70211012, pos = { x = 2383.700, y = 222.500, z = 383.200 }, rot = { x = 0.000, y = 42.462, z = 0.000 }, level = 21, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 4 },
	{ config_id = 198006, gadget_id = 70220014, pos = { x = 2382.488, y = 222.545, z = 385.083 }, rot = { x = 0.000, y = 155.386, z = 0.000 }, level = 23, area_id = 4 },
	{ config_id = 198007, gadget_id = 70220014, pos = { x = 2382.518, y = 222.545, z = 386.506 }, rot = { x = 0.000, y = 128.149, z = 0.000 }, level = 23, area_id = 4 },
	{ config_id = 198008, gadget_id = 70310001, pos = { x = 2385.100, y = 222.545, z = 385.079 }, rot = { x = 0.000, y = 223.464, z = 0.000 }, level = 23, state = GadgetState.GearStart, area_id = 4 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1198003, name = "ANY_MONSTER_DIE_198003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_198003", action = "action_EVENT_ANY_MONSTER_DIE_198003" }
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
		monsters = { 198001, 198004, 198005 },
		gadgets = { 198002, 198006, 198007, 198008 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_198003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_198003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_198003(context, evt)
	-- 将configid为 198002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 198002, GadgetState.Default) then
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