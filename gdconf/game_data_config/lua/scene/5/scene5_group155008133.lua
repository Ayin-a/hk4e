-- 基础信息
local base_info = {
	group_id = 155008133
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 133001, monster_id = 21010101, pos = { x = -485.084, y = 223.213, z = 536.071 }, rot = { x = 359.421, y = 87.832, z = 1.868 }, level = 36, drop_tag = "丘丘人", disableWander = true, pose_id = 9016, area_id = 200 },
	{ config_id = 133004, monster_id = 22010101, pos = { x = -483.859, y = 223.573, z = 529.468 }, rot = { x = 0.000, y = 98.993, z = 0.000 }, level = 36, drop_tag = "深渊法师", disableWander = true, area_id = 200 },
	{ config_id = 133006, monster_id = 21030401, pos = { x = -482.052, y = 223.316, z = 529.272 }, rot = { x = 0.000, y = 275.325, z = 0.000 }, level = 36, drop_tag = "丘丘萨满", disableWander = true, area_id = 200 },
	{ config_id = 133009, monster_id = 21010101, pos = { x = -478.616, y = 223.419, z = 523.339 }, rot = { x = 0.000, y = 142.292, z = 0.000 }, level = 36, drop_tag = "丘丘人", disableWander = true, pose_id = 9016, area_id = 200 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 133002, gadget_id = 70211012, pos = { x = -478.767, y = 222.787, z = 530.632 }, rot = { x = 0.000, y = 74.084, z = 0.000 }, level = 21, drop_tag = "战斗中级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 },
	{ config_id = 133005, gadget_id = 70220013, pos = { x = -477.018, y = 222.451, z = 531.786 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 133007, gadget_id = 70220026, pos = { x = -476.934, y = 222.594, z = 529.035 }, rot = { x = 0.000, y = 25.023, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 133008, gadget_id = 70310001, pos = { x = -482.430, y = 223.284, z = 531.230 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 200 }
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
		monsters = { 133001, 133004, 133006, 133009 },
		gadgets = { 133002, 133005, 133007, 133008 },
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
	-- 将configid为 133002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 133002, GadgetState.Default) then
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