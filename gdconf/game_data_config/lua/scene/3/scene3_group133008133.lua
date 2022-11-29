-- 基础信息
local base_info = {
	group_id = 133008133
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 133001, monster_id = 21010901, pos = { x = 991.197, y = 274.579, z = -396.386 }, rot = { x = 0.000, y = 347.991, z = 0.000 }, level = 30, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32, climate_area_id = 1, area_id = 10 },
	{ config_id = 133004, monster_id = 21020401, pos = { x = 986.461, y = 271.198, z = -389.198 }, rot = { x = 0.000, y = 83.956, z = 0.000 }, level = 30, drop_tag = "丘丘岩盔王", disableWander = true, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 133002, gadget_id = 70211145, pos = { x = 981.362, y = 270.357, z = -400.244 }, rot = { x = 0.000, y = 27.934, z = 0.000 }, level = 26, drop_tag = "雪山玉髓高级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1133003, name = "ANY_MONSTER_DIE_133003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_133003", action = "action_EVENT_ANY_MONSTER_DIE_133003" }
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
		monsters = { 133001, 133004 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_133003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_133003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_133003(context, evt)
	-- 创建id为133002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 133002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4001, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end