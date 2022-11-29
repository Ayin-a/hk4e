-- 基础信息
local base_info = {
	group_id = 133105154
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 265, monster_id = 22010101, pos = { x = 389.209, y = 208.102, z = -106.669 }, rot = { x = 0.000, y = 55.695, z = 0.000 }, level = 21, drop_tag = "深渊法师", isElite = true, area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 411, gadget_id = 70211011, pos = { x = 389.316, y = 207.577, z = -106.429 }, rot = { x = 0.000, y = 55.341, z = 0.000 }, level = 16, drop_tag = "战斗中级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 412, gadget_id = 70300107, pos = { x = 388.015, y = 207.617, z = -107.201 }, rot = { x = 0.463, y = 331.935, z = 358.512 }, level = 19, area_id = 9 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000196, name = "ANY_MONSTER_DIE_196", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_196", action = "action_EVENT_ANY_MONSTER_DIE_196" },
	{ config_id = 1154001, name = "GADGET_STATE_CHANGE_154001", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_154001", action = "action_EVENT_GADGET_STATE_CHANGE_154001" }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 412 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_154001" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 265 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_196" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_196(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_196(context, evt)
	-- 创建id为411的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 411 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_154001(context, evt)
	if 412 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_154001(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133105154, 2)
	
	return 0
end