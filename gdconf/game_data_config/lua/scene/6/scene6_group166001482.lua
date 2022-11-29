-- 基础信息
local base_info = {
	group_id = 166001482
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 482001, monster_id = 24010301, pos = { x = 89.932, y = 311.914, z = 391.377 }, rot = { x = 0.000, y = 81.390, z = 0.000 }, level = 36, drop_tag = "遗迹重机", disableWander = true, pose_id = 100, area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 482002, gadget_id = 70211011, pos = { x = 87.254, y = 311.967, z = 391.552 }, rot = { x = 0.000, y = 95.009, z = 0.000 }, level = 26, drop_tag = "战斗中级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1482003, name = "ANY_MONSTER_DIE_482003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_482003", action = "action_EVENT_ANY_MONSTER_DIE_482003" }
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
		monsters = { 482001 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_482003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_482003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_482003(context, evt)
	-- 创建id为482002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 482002 }) then
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