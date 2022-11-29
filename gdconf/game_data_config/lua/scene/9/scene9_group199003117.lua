-- 基础信息
local base_info = {
	group_id = 199003117
}

-- DEFS_MISCS
local defs = 
{
        rmd_list = {1111157,1111158,1111159},
}
--从table中取得随机value
function LF_GetRandomResult(context, source_table)

        math.randomseed(ScriptLib.GetServerTime(context))
        rand_index = math.random(#source_table)
        
        if nil ~= source_table[rand_index] then
                ScriptLib.PrintContextLog(context, "## [GetRandom] Get Random Result: value@"..source_table[rand_index])
                return source_table[rand_index]
        end
        ScriptLib.PrintContextLog(context, "## [GetRandom] Get Random Result failed! rand_index@"..rand_index)
        return -1
end

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 117005, monster_id = 21010401, pos = { x = -513.509, y = 123.778, z = 388.214 }, rot = { x = 0.000, y = 179.848, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", pose_id = 402, area_id = 403 },
	{ config_id = 117006, monster_id = 21010401, pos = { x = -511.865, y = 123.693, z = 389.981 }, rot = { x = 0.000, y = 65.255, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", pose_id = 402, area_id = 403 },
	{ config_id = 117007, monster_id = 21010401, pos = { x = -512.826, y = 123.767, z = 419.772 }, rot = { x = 0.000, y = 189.156, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", pose_id = 402, area_id = 403 },
	{ config_id = 117008, monster_id = 21010401, pos = { x = -511.701, y = 123.702, z = 422.854 }, rot = { x = 0.000, y = 57.328, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", pose_id = 402, area_id = 403 },
	{ config_id = 117009, monster_id = 21010401, pos = { x = -538.052, y = 123.740, z = 405.569 }, rot = { x = 0.000, y = 218.438, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", pose_id = 402, area_id = 403 },
	{ config_id = 117010, monster_id = 21010401, pos = { x = -537.065, y = 123.711, z = 407.833 }, rot = { x = 0.000, y = 12.874, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", pose_id = 402, area_id = 403 },
	{ config_id = 117011, monster_id = 21030301, pos = { x = -518.215, y = 126.080, z = 404.681 }, rot = { x = 0.000, y = 65.255, z = 0.000 }, level = 20, drop_tag = "丘丘萨满", disableWander = true, area_id = 403 },
	{ config_id = 117012, monster_id = 21010601, pos = { x = -523.053, y = 126.008, z = 403.387 }, rot = { x = 0.000, y = 119.466, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, area_id = 403 },
	{ config_id = 117013, monster_id = 21010601, pos = { x = -521.750, y = 126.003, z = 408.519 }, rot = { x = 0.000, y = 65.255, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, area_id = 403 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 117001, gadget_id = 70950092, pos = { x = -537.631, y = 120.000, z = 406.545 }, rot = { x = 0.000, y = 65.255, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 117002, gadget_id = 70950092, pos = { x = -513.404, y = 120.000, z = 388.953 }, rot = { x = 0.000, y = 65.255, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 117003, gadget_id = 70950092, pos = { x = -512.972, y = 120.000, z = 421.286 }, rot = { x = 0.000, y = 65.255, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 117004, gadget_id = 70290059, pos = { x = -519.890, y = 120.000, z = 404.859 }, rot = { x = 0.000, y = 65.255, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 117014, gadget_id = 70290057, pos = { x = -529.087, y = 119.352, z = 384.583 }, rot = { x = 0.000, y = 24.072, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 117015, gadget_id = 70290057, pos = { x = -528.479, y = 119.320, z = 426.931 }, rot = { x = 0.000, y = 166.683, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 117016, gadget_id = 70950087, pos = { x = -510.513, y = 120.000, z = 420.276 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 117017, gadget_id = 70950087, pos = { x = -509.724, y = 120.000, z = 421.993 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 117018, gadget_id = 70950087, pos = { x = -513.354, y = 120.000, z = 424.537 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 117019, gadget_id = 70950087, pos = { x = -515.102, y = 120.000, z = 423.118 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 117020, gadget_id = 70950087, pos = { x = -510.919, y = 120.000, z = 388.523 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 117021, gadget_id = 70950087, pos = { x = -510.089, y = 120.000, z = 390.250 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 117022, gadget_id = 70950087, pos = { x = -515.737, y = 120.000, z = 389.705 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 117023, gadget_id = 70950087, pos = { x = -540.909, y = 120.000, z = 406.319 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 117024, gadget_id = 70950087, pos = { x = -539.588, y = 120.000, z = 408.597 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 117025, gadget_id = 70950087, pos = { x = -535.054, y = 120.000, z = 405.582 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 117027, gadget_id = 70211002, pos = { x = -520.462, y = 126.181, z = 404.897 }, rot = { x = 0.000, y = 101.396, z = 0.000 }, level = 16, drop_tag = "战斗低级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 403 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 改变变量，解锁宝箱
	{ config_id = 1117026, name = "ANY_MONSTER_DIE_117026", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_117026", action = "action_EVENT_ANY_MONSTER_DIE_117026" }
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
		monsters = { 117005, 117006, 117007, 117008, 117009, 117010, 117011, 117012, 117013 },
		gadgets = { 117001, 117002, 117003, 117004, 117014, 117015, 117016, 117017, 117018, 117019, 117020, 117021, 117022, 117023, 117024, 117025, 117027 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_117026" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_117026(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_117026(context, evt)
	-- 将configid为 117027 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 117027, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "is_remindered" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "is_remindered", 1, 199003120) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end