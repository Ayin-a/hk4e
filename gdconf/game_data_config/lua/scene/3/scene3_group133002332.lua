-- 基础信息
local base_info = {
	group_id = 133002332
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 332001, monster_id = 21020101, pos = { x = 1702.366, y = 255.832, z = -745.031 }, rot = { x = 0.000, y = 26.440, z = 0.000 }, level = 10, drop_tag = "丘丘暴徒", disableWander = true, area_id = 3 },
	{ config_id = 332004, monster_id = 21020101, pos = { x = 1707.365, y = 256.103, z = -744.348 }, rot = { x = 0.000, y = 301.440, z = 0.000 }, level = 10, drop_tag = "丘丘暴徒", disableWander = true, area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 332002, gadget_id = 70211012, pos = { x = 1703.620, y = 255.997, z = -739.039 }, rot = { x = 1.055, y = 165.395, z = 356.953 }, level = 6, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 3 }
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
		monsters = { 332001 },
		gadgets = { 332002 },
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