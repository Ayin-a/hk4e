-- 基础信息
local base_info = {
	group_id = 166001470
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 470001, monster_id = 22010101, pos = { x = 460.556, y = 406.466, z = 425.110 }, rot = { x = 0.000, y = 57.346, z = 0.000 }, level = 36, drop_tag = "深渊法师", disableWander = true, pose_id = 9013, area_id = 300 },
	{ config_id = 470004, monster_id = 22010401, pos = { x = 460.579, y = 406.404, z = 427.315 }, rot = { x = 0.000, y = 121.715, z = 0.000 }, level = 36, drop_tag = "深渊法师", disableWander = true, pose_id = 9013, area_id = 300 },
	{ config_id = 470005, monster_id = 22010301, pos = { x = 456.512, y = 405.648, z = 425.910 }, rot = { x = 0.000, y = 92.195, z = 0.000 }, level = 36, drop_tag = "深渊法师", area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 470002, gadget_id = 70211012, pos = { x = 465.078, y = 407.593, z = 423.289 }, rot = { x = 15.860, y = 317.505, z = 4.334 }, level = 26, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1470003, name = "ANY_MONSTER_DIE_470003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_470003", action = "action_EVENT_ANY_MONSTER_DIE_470003" },
	{ config_id = 1470006, name = "ANY_MONSTER_DIE_470006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_470006" }
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
		monsters = { 470001, 470004 },
		gadgets = { 470002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_470003", "ANY_MONSTER_DIE_470006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 470005 },
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
function condition_EVENT_ANY_MONSTER_DIE_470003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_470003(context, evt)
	-- 将configid为 470002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 470002, GadgetState.Default) then
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

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_470006(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001470, 2)
	
	return 0
end