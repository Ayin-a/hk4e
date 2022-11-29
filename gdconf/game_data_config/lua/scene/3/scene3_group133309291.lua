-- 基础信息
local base_info = {
	group_id = 133309291
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 291001, monster_id = 21020501, pos = { x = -2097.734, y = -35.829, z = 5433.245 }, rot = { x = 0.000, y = 98.912, z = 0.000 }, level = 32, drop_tag = "丘丘岩盔王", pose_id = 401, area_id = 27 },
	{ config_id = 291005, monster_id = 21010201, pos = { x = -2098.334, y = -35.032, z = 5425.315 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "丘丘人", area_id = 27 },
	{ config_id = 291006, monster_id = 21010101, pos = { x = -2093.563, y = -36.258, z = 5437.742 }, rot = { x = 0.000, y = 277.488, z = 0.000 }, level = 32, drop_tag = "丘丘人", pose_id = 9016, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 291002, gadget_id = 70211151, pos = { x = -2087.786, y = -36.878, z = 5438.206 }, rot = { x = 0.000, y = 46.040, z = 0.000 }, level = 26, chest_drop_id = 21910083, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1291003, name = "ANY_MONSTER_DIE_291003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_291003", action = "action_EVENT_ANY_MONSTER_DIE_291003" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 291004, gadget_id = 70210101, pos = { x = -2095.605, y = -35.277, z = 5437.664 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", persistent = true, area_id = 27 }
	}
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
		monsters = { 291001, 291005, 291006 },
		gadgets = { 291002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_291003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_291003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_291003(context, evt)
	-- 将configid为 291002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 291002, GadgetState.Default) then
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