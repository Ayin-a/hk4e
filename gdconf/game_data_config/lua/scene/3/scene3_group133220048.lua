-- 基础信息
local base_info = {
	group_id = 133220048
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 48001, monster_id = 21010501, pos = { x = -2811.351, y = 222.751, z = -4391.986 }, rot = { x = 0.000, y = 239.215, z = 0.000 }, level = 27, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9002, area_id = 11 },
	{ config_id = 48004, monster_id = 21030601, pos = { x = -2822.827, y = 223.669, z = -4398.579 }, rot = { x = 0.000, y = 152.623, z = 0.000 }, level = 27, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, area_id = 11 },
	{ config_id = 48005, monster_id = 21030601, pos = { x = -2821.482, y = 223.737, z = -4401.046 }, rot = { x = 0.000, y = 293.424, z = 0.000 }, level = 27, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, area_id = 11 },
	{ config_id = 48009, monster_id = 21010501, pos = { x = -2819.466, y = 222.932, z = -4400.482 }, rot = { x = 0.000, y = 354.818, z = 0.000 }, level = 27, drop_tag = "远程丘丘人", area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 48002, gadget_id = 70211002, pos = { x = -2823.126, y = 224.753, z = -4409.364 }, rot = { x = 0.000, y = 20.556, z = 0.000 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
	{ config_id = 48007, gadget_id = 70310006, pos = { x = -2822.984, y = 223.780, z = -4400.477 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1048003, name = "ANY_MONSTER_DIE_48003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_48003", action = "action_EVENT_ANY_MONSTER_DIE_48003" }
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
		monsters = { 48001, 48004, 48005, 48009 },
		gadgets = { 48002, 48007 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_48003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_48003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_48003(context, evt)
	-- 将configid为 48002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 48002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4001, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end