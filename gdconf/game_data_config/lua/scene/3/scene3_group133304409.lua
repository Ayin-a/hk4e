-- 基础信息
local base_info = {
	group_id = 133304409
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 409001, monster_id = 26090201, pos = { x = -1617.614, y = 217.195, z = 2473.884 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "蕈兽", disableWander = true, pose_id = 103, area_id = 21 },
	{ config_id = 409004, monster_id = 26090201, pos = { x = -1624.551, y = 217.205, z = 2478.193 }, rot = { x = 0.000, y = 153.912, z = 0.000 }, level = 30, drop_tag = "蕈兽", disableWander = true, pose_id = 103, area_id = 21 },
	{ config_id = 409005, monster_id = 20010101, pos = { x = -1620.583, y = 216.965, z = 2476.240 }, rot = { x = 0.000, y = 50.439, z = 0.000 }, level = 30, drop_tag = "史莱姆", pose_id = 101, area_id = 21 },
	{ config_id = 409007, monster_id = 20010201, pos = { x = -1623.190, y = 217.620, z = 2473.165 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "大史莱姆", pose_id = 101, area_id = 21 },
	{ config_id = 409008, monster_id = 21030201, pos = { x = -1617.034, y = 217.156, z = 2480.243 }, rot = { x = 0.000, y = 221.611, z = 0.000 }, level = 30, drop_tag = "丘丘萨满", pose_id = 9012, area_id = 21 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 409002, gadget_id = 70211002, pos = { x = -1603.452, y = 218.119, z = 2480.800 }, rot = { x = 0.000, y = 77.228, z = 0.000 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 21 },
	{ config_id = 409009, gadget_id = 70300100, pos = { x = -1618.116, y = 217.017, z = 2478.874 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 409010, gadget_id = 70300086, pos = { x = -1614.504, y = 215.485, z = 2479.161 }, rot = { x = 0.000, y = 0.000, z = 342.889 }, level = 30, area_id = 21 },
	{ config_id = 409011, gadget_id = 70300086, pos = { x = -1627.960, y = 216.637, z = 2475.417 }, rot = { x = 0.000, y = 0.000, z = 22.929 }, level = 30, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1409003, name = "ANY_MONSTER_DIE_409003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_409003", action = "action_EVENT_ANY_MONSTER_DIE_409003", trigger_count = 0 },
	{ config_id = 1409006, name = "MONSTER_BATTLE_409006", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_409006" }
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
		monsters = { 409001, 409004, 409005, 409008 },
		gadgets = { 409002, 409009, 409010, 409011 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_409003", "MONSTER_BATTLE_409006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 409007 },
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
function condition_EVENT_ANY_MONSTER_DIE_409003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_409003(context, evt)
	-- 将configid为 409002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 409002, GadgetState.Default) then
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
function action_EVENT_MONSTER_BATTLE_409006(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304409, 2)
	
	return 0
end