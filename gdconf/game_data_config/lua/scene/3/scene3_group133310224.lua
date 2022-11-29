-- 基础信息
local base_info = {
	group_id = 133310224
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 224001, monster_id = 25010201, pos = { x = -2809.737, y = 162.945, z = 4410.217 }, rot = { x = 0.000, y = 184.473, z = 0.000 }, level = 32, drop_tag = "盗宝团", disableWander = true, pose_id = 9003, area_id = 28 },
	{ config_id = 224004, monster_id = 24030101, pos = { x = -2810.042, y = 162.717, z = 4407.859 }, rot = { x = 0.000, y = 99.158, z = 0.000 }, level = 32, drop_tag = "遗迹龙兽", disableWander = true, pose_id = 102, area_id = 28 },
	{ config_id = 224006, monster_id = 25020201, pos = { x = -2802.770, y = 163.097, z = 4409.700 }, rot = { x = 0.000, y = 253.176, z = 0.000 }, level = 32, drop_tag = "盗宝团", disableWander = true, pose_id = 9002, area_id = 28 },
	{ config_id = 224007, monster_id = 25060101, pos = { x = -2837.384, y = 162.051, z = 4396.056 }, rot = { x = 0.000, y = 184.479, z = 0.000 }, level = 32, drop_tag = "盗宝团", disableWander = true, area_id = 28 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 224002, gadget_id = 70211012, pos = { x = -2811.212, y = 164.070, z = 4422.963 }, rot = { x = 2.052, y = 180.555, z = 352.837 }, level = 26, drop_tag = "战斗中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 28 },
	{ config_id = 224005, gadget_id = 70330397, pos = { x = -2812.672, y = 162.837, z = 4420.927 }, rot = { x = 339.618, y = 357.897, z = 358.698 }, level = 32, state = GadgetState.GearStart, area_id = 28 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1224003, name = "ANY_MONSTER_DIE_224003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_224003", action = "action_EVENT_ANY_MONSTER_DIE_224003" }
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
		monsters = { 224001, 224004, 224006, 224007 },
		gadgets = { 224002, 224005 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_224003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_224003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_224003(context, evt)
	-- 将configid为 224002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 224002, GadgetState.Default) then
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