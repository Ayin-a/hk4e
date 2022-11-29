-- 基础信息
local base_info = {
	group_id = 133007197
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 197001, monster_id = 21010201, pos = { x = 2497.733, y = 210.125, z = 362.520 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 23, drop_tag = "丘丘人", disableWander = true, area_id = 4 },
	{ config_id = 197004, monster_id = 21030101, pos = { x = 2496.629, y = 210.007, z = 369.345 }, rot = { x = 0.000, y = 216.371, z = 0.000 }, level = 30, drop_tag = "丘丘萨满", disableWander = true, area_id = 4 },
	{ config_id = 197005, monster_id = 21010901, pos = { x = 2495.565, y = 209.984, z = 365.345 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, area_id = 4 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 197002, gadget_id = 70211012, pos = { x = 2498.000, y = 210.154, z = 366.001 }, rot = { x = 0.000, y = 274.162, z = 0.000 }, level = 21, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 4 },
	{ config_id = 197006, gadget_id = 70220014, pos = { x = 2494.501, y = 210.115, z = 370.964 }, rot = { x = 0.000, y = 155.386, z = 0.000 }, level = 23, area_id = 4 },
	{ config_id = 197007, gadget_id = 70220014, pos = { x = 2494.079, y = 209.930, z = 369.927 }, rot = { x = 0.000, y = 128.149, z = 0.000 }, level = 23, area_id = 4 },
	{ config_id = 197008, gadget_id = 70310006, pos = { x = 2495.128, y = 209.938, z = 367.395 }, rot = { x = 0.000, y = 223.464, z = 0.000 }, level = 23, state = GadgetState.GearStart, area_id = 4 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1197003, name = "ANY_MONSTER_DIE_197003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_197003", action = "action_EVENT_ANY_MONSTER_DIE_197003" }
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
		monsters = { 197001, 197004, 197005 },
		gadgets = { 197002, 197006, 197007, 197008 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_197003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_197003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_197003(context, evt)
	-- 将configid为 197002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 197002, GadgetState.Default) then
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