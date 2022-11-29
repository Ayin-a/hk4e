-- 基础信息
local base_info = {
	group_id = 155004020
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 20007, monster_id = 20011001, pos = { x = 85.450, y = 199.420, z = 1328.827 }, rot = { x = 0.000, y = 275.008, z = 0.000 }, level = 36, drop_tag = "史莱姆", area_id = 200 },
	{ config_id = 20008, monster_id = 20011001, pos = { x = 83.246, y = 199.420, z = 1324.119 }, rot = { x = 0.000, y = 325.967, z = 0.000 }, level = 36, drop_tag = "史莱姆", area_id = 200 },
	{ config_id = 20009, monster_id = 20011101, pos = { x = 90.868, y = 199.420, z = 1330.522 }, rot = { x = 0.000, y = 280.283, z = 0.000 }, level = 36, drop_tag = "大史莱姆", area_id = 200 },
	{ config_id = 20010, monster_id = 20011101, pos = { x = 87.513, y = 199.438, z = 1321.410 }, rot = { x = 0.000, y = 296.494, z = 0.000 }, level = 36, drop_tag = "大史莱姆", area_id = 200 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 20006, gadget_id = 70211002, pos = { x = 87.815, y = 199.549, z = 1325.065 }, rot = { x = 6.101, y = 262.702, z = 5.486 }, level = 21, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1020005, name = "ANY_MONSTER_DIE_20005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_20005", action = "action_EVENT_ANY_MONSTER_DIE_20005" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 20001, monster_id = 24020201, pos = { x = 76.182, y = 202.895, z = 1322.858 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "拟生机关", pose_id = 101, area_id = 200 },
		{ config_id = 20002, monster_id = 24020201, pos = { x = 94.977, y = 199.420, z = 1327.311 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "拟生机关", pose_id = 101, area_id = 200 },
		{ config_id = 20003, monster_id = 24020201, pos = { x = 84.759, y = 199.556, z = 1320.361 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "拟生机关", pose_id = 101, area_id = 200 },
		{ config_id = 20004, monster_id = 24020201, pos = { x = 85.351, y = 199.420, z = 1330.766 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "拟生机关", pose_id = 101, area_id = 200 }
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
		monsters = { 20007, 20008, 20009, 20010 },
		gadgets = { 20006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_20005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_20005(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 155004020) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_20005(context, evt)
	-- 将configid为 20006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 20006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end