-- 基础信息
local base_info = {
	group_id = 199004213
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 213001, monster_id = 21020701, pos = { x = -444.333, y = 116.419, z = -685.665 }, rot = { x = 0.000, y = 137.384, z = 0.000 }, level = 20, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 400 },
	{ config_id = 213004, monster_id = 21020501, pos = { x = -429.211, y = 114.542, z = -695.957 }, rot = { x = 0.000, y = 99.212, z = 0.000 }, level = 20, drop_tag = "丘丘岩盔王", disableWander = true, pose_id = 401, area_id = 400 },
	{ config_id = 213005, monster_id = 21011001, pos = { x = -441.173, y = 123.684, z = -695.300 }, rot = { x = 0.000, y = 92.113, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, area_id = 400 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 213002, gadget_id = 70211012, pos = { x = -444.738, y = 115.842, z = -691.924 }, rot = { x = 3.493, y = 352.563, z = 351.980 }, level = 16, drop_tag = "战斗中级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 400 },
	{ config_id = 213006, gadget_id = 70300087, pos = { x = -442.808, y = 115.759, z = -687.632 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 213007, gadget_id = 70210101, pos = { x = -439.090, y = 118.722, z = -710.731 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "搜刮点解谜遗物群岛", persistent = true, area_id = 400 },
	{ config_id = 213008, gadget_id = 70210101, pos = { x = -438.028, y = 114.078, z = -695.941 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "搜刮点解谜武器群岛", persistent = true, area_id = 400 },
	{ config_id = 213009, gadget_id = 70210101, pos = { x = -436.831, y = 115.515, z = -685.349 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "搜刮点解谜遗物群岛", persistent = true, area_id = 400 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1213003, name = "ANY_MONSTER_DIE_213003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_213003", action = "action_EVENT_ANY_MONSTER_DIE_213003" }
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
		monsters = { 213001, 213004, 213005 },
		gadgets = { 213002, 213006, 213007, 213008, 213009 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_213003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_213003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_213003(context, evt)
	-- 将configid为 213002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 213002, GadgetState.Default) then
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