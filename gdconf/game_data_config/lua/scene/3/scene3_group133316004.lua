-- 基础信息
local base_info = {
	group_id = 133316004
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 4001, monster_id = 21010201, pos = { x = 675.760, y = 320.924, z = 6309.517 }, rot = { x = 0.000, y = 65.878, z = 0.000 }, level = 32, drop_tag = "丘丘人", disableWander = true, area_id = 30 },
	{ config_id = 4004, monster_id = 21010101, pos = { x = 676.702, y = 321.531, z = 6317.588 }, rot = { x = 0.000, y = 152.447, z = 0.000 }, level = 32, drop_tag = "丘丘人", area_id = 30 },
	{ config_id = 4005, monster_id = 21010101, pos = { x = 677.076, y = 321.254, z = 6313.016 }, rot = { x = 0.000, y = 128.626, z = 0.000 }, level = 32, drop_tag = "丘丘人", area_id = 30 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 4002, gadget_id = 70211012, pos = { x = 671.603, y = 322.631, z = 6315.229 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "战斗中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 30 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1004003, name = "ANY_MONSTER_DIE_4003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4003", action = "action_EVENT_ANY_MONSTER_DIE_4003" }
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
		monsters = { 4001, 4004, 4005 },
		gadgets = { 4002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_4003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_4003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_4003(context, evt)
	-- 将configid为 4002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4002, GadgetState.Default) then
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