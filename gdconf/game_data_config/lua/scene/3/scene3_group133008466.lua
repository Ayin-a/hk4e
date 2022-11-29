-- 基础信息
local base_info = {
	group_id = 133008466
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 466001, monster_id = 23010401, pos = { x = 1331.314, y = 301.482, z = -908.530 }, rot = { x = 0.000, y = 316.429, z = 0.000 }, level = 30, drop_tag = "先遣队", disableWander = true, pose_id = 9001, climate_area_id = 1, area_id = 10 },
	{ config_id = 466004, monster_id = 23010101, pos = { x = 1336.737, y = 302.242, z = -906.583 }, rot = { x = 0.000, y = 48.322, z = 0.000 }, level = 30, drop_tag = "先遣队", disableWander = true, pose_id = 9001, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 466002, gadget_id = 70211012, pos = { x = 1329.198, y = 302.205, z = -908.194 }, rot = { x = 14.276, y = 102.574, z = 344.846 }, level = 26, drop_tag = "雪山战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1466003, name = "ANY_MONSTER_DIE_466003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_466003", action = "action_EVENT_ANY_MONSTER_DIE_466003" }
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
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 466001, 466004 },
		gadgets = { 466002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_466003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_466003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_466003(context, evt)
	-- 将configid为 466002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 466002, GadgetState.Default) then
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