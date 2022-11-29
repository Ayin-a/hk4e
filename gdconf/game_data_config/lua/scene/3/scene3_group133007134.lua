-- 基础信息
local base_info = {
	group_id = 133007134
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 134001, monster_id = 21030101, pos = { x = 2991.575, y = 211.172, z = 61.814 }, rot = { x = 4.447, y = 195.535, z = 4.008 }, level = 30, drop_tag = "丘丘萨满", disableWander = true, area_id = 4 },
	{ config_id = 134004, monster_id = 21010901, pos = { x = 2992.146, y = 211.109, z = 58.105 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, area_id = 4 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 134002, gadget_id = 70211012, pos = { x = 2994.027, y = 211.075, z = 59.270 }, rot = { x = 0.000, y = 299.250, z = 0.000 }, level = 21, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 4 },
	{ config_id = 134005, gadget_id = 70220014, pos = { x = 2990.473, y = 211.289, z = 57.644 }, rot = { x = 0.000, y = 155.386, z = 0.000 }, level = 23, area_id = 4 },
	{ config_id = 134006, gadget_id = 70220014, pos = { x = 2989.509, y = 211.260, z = 58.456 }, rot = { x = 0.000, y = 128.149, z = 0.000 }, level = 23, area_id = 4 },
	{ config_id = 134007, gadget_id = 70310006, pos = { x = 2990.927, y = 211.087, z = 60.254 }, rot = { x = 0.000, y = 223.464, z = 0.000 }, level = 23, state = GadgetState.GearStart, area_id = 4 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1134003, name = "ANY_MONSTER_DIE_134003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_134003", action = "action_EVENT_ANY_MONSTER_DIE_134003" }
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
		monsters = { 134001, 134004 },
		gadgets = { 134002, 134005, 134006, 134007 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_134003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_134003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_134003(context, evt)
	-- 将configid为 134002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 134002, GadgetState.Default) then
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