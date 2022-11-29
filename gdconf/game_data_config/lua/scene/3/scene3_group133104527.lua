-- 基础信息
local base_info = {
	group_id = 133104527
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 527001, monster_id = 21010201, pos = { x = -175.363, y = 334.987, z = 627.068 }, rot = { x = 17.913, y = 1.358, z = 11.345 }, level = 24, drop_tag = "丘丘人", disableWander = true, area_id = 7 },
	{ config_id = 527004, monster_id = 21010201, pos = { x = -177.640, y = 333.907, z = 630.195 }, rot = { x = 353.953, y = 101.807, z = 11.322 }, level = 24, drop_tag = "丘丘人", disableWander = true, area_id = 7 },
	{ config_id = 527005, monster_id = 21010401, pos = { x = -178.760, y = 335.006, z = 625.144 }, rot = { x = 13.240, y = 31.370, z = 23.869 }, level = 24, drop_tag = "远程丘丘人", disableWander = true, area_id = 7 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 527002, gadget_id = 70211002, pos = { x = -180.127, y = 334.508, z = 626.649 }, rot = { x = 11.486, y = 359.932, z = 2.617 }, level = 21, drop_tag = "战斗低级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 7 },
	{ config_id = 527006, gadget_id = 70220013, pos = { x = -175.181, y = 336.457, z = 622.984 }, rot = { x = 19.628, y = 1.227, z = 7.123 }, level = 24, area_id = 7 },
	{ config_id = 527007, gadget_id = 70220013, pos = { x = -177.147, y = 336.749, z = 621.620 }, rot = { x = 23.511, y = 1.249, z = 6.222 }, level = 24, area_id = 7 },
	{ config_id = 527008, gadget_id = 70220014, pos = { x = -183.759, y = 334.310, z = 629.001 }, rot = { x = 5.333, y = 359.750, z = 354.644 }, level = 24, area_id = 7 },
	{ config_id = 527009, gadget_id = 70310004, pos = { x = -175.829, y = 334.284, z = 629.156 }, rot = { x = 13.973, y = 0.538, z = 7.045 }, level = 24, area_id = 7 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1527003, name = "ANY_MONSTER_DIE_527003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_527003", action = "action_EVENT_ANY_MONSTER_DIE_527003" }
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
		monsters = { 527001, 527004, 527005 },
		gadgets = { 527002, 527006, 527007, 527008, 527009 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_527003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_527003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_527003(context, evt)
	-- 将configid为 527002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 527002, GadgetState.Default) then
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