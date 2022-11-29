-- 基础信息
local base_info = {
	group_id = 133302343
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 343001, monster_id = 21010401, pos = { x = -900.422, y = 232.207, z = 2875.618 }, rot = { x = 0.000, y = 169.891, z = 0.000 }, level = 27, drop_tag = "远程丘丘人", disableWander = true, area_id = 24 },
	{ config_id = 343005, monster_id = 21020201, pos = { x = -883.161, y = 230.197, z = 2876.230 }, rot = { x = 0.000, y = 167.133, z = 0.000 }, level = 27, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 24 },
	{ config_id = 343006, monster_id = 21010101, pos = { x = -893.841, y = 227.515, z = 2886.881 }, rot = { x = 0.000, y = 173.462, z = 0.000 }, level = 27, drop_tag = "丘丘人", pose_id = 9012, area_id = 24 },
	{ config_id = 343008, monster_id = 26090101, pos = { x = -886.084, y = 229.444, z = 2883.109 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 101, area_id = 24 },
	{ config_id = 343011, monster_id = 21010101, pos = { x = -891.786, y = 227.947, z = 2886.908 }, rot = { x = 0.000, y = 181.864, z = 0.000 }, level = 27, drop_tag = "丘丘人", pose_id = 9012, area_id = 24 },
	{ config_id = 343016, monster_id = 28061402, pos = { x = -881.542, y = 230.929, z = 2872.512 }, rot = { x = 0.000, y = 340.240, z = 0.000 }, level = 27, drop_tag = "驮兽丘丘人", pose_id = 2, area_id = 24 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 343002, gadget_id = 70211002, pos = { x = -892.194, y = 228.295, z = 2883.199 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 24 },
	{ config_id = 343004, gadget_id = 70220013, pos = { x = -899.197, y = 228.811, z = 2884.000 }, rot = { x = 11.149, y = 358.623, z = 345.963 }, level = 27, area_id = 24 },
	{ config_id = 343007, gadget_id = 70300087, pos = { x = -886.202, y = 228.982, z = 2883.052 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 343012, gadget_id = 70220107, pos = { x = -894.465, y = 227.955, z = 2883.899 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 343013, gadget_id = 70220107, pos = { x = -890.140, y = 228.440, z = 2884.225 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 343014, gadget_id = 70300086, pos = { x = -892.594, y = 227.228, z = 2877.271 }, rot = { x = 358.494, y = 333.078, z = 355.202 }, level = 27, area_id = 24 },
	{ config_id = 343015, gadget_id = 70300086, pos = { x = -881.269, y = 227.402, z = 2881.731 }, rot = { x = 0.000, y = 0.000, z = 20.154 }, level = 27, area_id = 24 },
	{ config_id = 343017, gadget_id = 70300086, pos = { x = -896.997, y = 226.310, z = 2891.250 }, rot = { x = 343.217, y = 334.401, z = 354.990 }, level = 27, area_id = 24 },
	{ config_id = 343018, gadget_id = 70330216, pos = { x = -892.558, y = 228.107, z = 2884.768 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1343003, name = "ANY_MONSTER_DIE_343003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_343003", action = "action_EVENT_ANY_MONSTER_DIE_343003" }
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
		monsters = { 343001, 343005, 343006, 343008, 343011, 343016 },
		gadgets = { 343002, 343004, 343007, 343012, 343013, 343014, 343015, 343017, 343018 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_343003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_343003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_343003(context, evt)
	-- 将configid为 343002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 343002, GadgetState.Default) then
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