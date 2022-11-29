-- 基础信息
local base_info = {
	group_id = 133210425
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 425001, monster_id = 25080201, pos = { x = -3593.148, y = 219.343, z = -629.164 }, rot = { x = 0.000, y = 42.228, z = 0.000 }, level = 30, drop_tag = "浪人武士", disableWander = true, pose_id = 1004, area_id = 17 },
	{ config_id = 425004, monster_id = 25080201, pos = { x = -3591.683, y = 219.191, z = -631.306 }, rot = { x = 349.672, y = 24.020, z = 4.056 }, level = 30, drop_tag = "浪人武士", disableWander = true, pose_id = 1001, area_id = 17 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 425002, gadget_id = 70211002, pos = { x = -3597.561, y = 217.612, z = -635.272 }, rot = { x = 347.013, y = 53.784, z = 355.816 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 17 },
	{ config_id = 425005, gadget_id = 70310006, pos = { x = -3591.059, y = 219.508, z = -629.420 }, rot = { x = 2.546, y = 1.127, z = 0.262 }, level = 30, area_id = 17 },
	{ config_id = 425006, gadget_id = 70300104, pos = { x = -3594.460, y = 219.345, z = -628.481 }, rot = { x = 3.830, y = 291.963, z = 12.937 }, level = 30, area_id = 17 },
	{ config_id = 425007, gadget_id = 70220048, pos = { x = -3600.897, y = 217.991, z = -630.772 }, rot = { x = 345.672, y = 41.398, z = 357.108 }, level = 30, area_id = 17 },
	{ config_id = 425008, gadget_id = 70220048, pos = { x = -3603.125, y = 217.617, z = -630.748 }, rot = { x = 347.093, y = 358.619, z = 10.638 }, level = 30, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1425003, name = "ANY_MONSTER_DIE_425003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_425003", action = "action_EVENT_ANY_MONSTER_DIE_425003" }
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
		monsters = { 425001, 425004 },
		gadgets = { 425002, 425005, 425006, 425007, 425008 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_425003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_425003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_425003(context, evt)
	-- 将configid为 425002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 425002, GadgetState.Default) then
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