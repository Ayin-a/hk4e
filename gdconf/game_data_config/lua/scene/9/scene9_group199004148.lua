-- 基础信息
local base_info = {
	group_id = 199004148
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
	{ config_id = 148001, monster_id = 21010401, pos = { x = -622.056, y = 123.855, z = -487.087 }, rot = { x = 0.000, y = 150.472, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", pose_id = 402, area_id = 400 },
	{ config_id = 148002, monster_id = 21010401, pos = { x = -604.617, y = 123.868, z = -467.676 }, rot = { x = 0.000, y = 111.008, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", pose_id = 402, area_id = 400 },
	{ config_id = 148003, monster_id = 21010401, pos = { x = -637.249, y = 123.876, z = -446.759 }, rot = { x = 0.000, y = 314.134, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", pose_id = 402, area_id = 400 },
	{ config_id = 148004, monster_id = 22010201, pos = { x = -625.171, y = 126.183, z = -473.151 }, rot = { x = 0.000, y = 112.114, z = 0.000 }, level = 20, drop_tag = "深渊法师", pose_id = 9013, area_id = 400 },
	{ config_id = 148005, monster_id = 21010501, pos = { x = -623.969, y = 126.002, z = -475.867 }, rot = { x = 0.000, y = 312.903, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", pose_id = 9003, area_id = 400 },
	{ config_id = 148006, monster_id = 21010501, pos = { x = -622.284, y = 126.019, z = -473.575 }, rot = { x = 0.000, y = 253.756, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", pose_id = 9003, area_id = 400 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 148007, gadget_id = 70950092, pos = { x = -637.427, y = 120.000, z = -446.678 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 148008, gadget_id = 70950092, pos = { x = -604.535, y = 120.000, z = -467.630 }, rot = { x = 0.000, y = 305.817, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 148009, gadget_id = 70950092, pos = { x = -622.313, y = 120.000, z = -487.339 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 148010, gadget_id = 70290059, pos = { x = -624.888, y = 120.000, z = -472.554 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 148011, gadget_id = 70290057, pos = { x = -629.101, y = 119.320, z = -495.774 }, rot = { x = 0.000, y = 30.792, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 148012, gadget_id = 70290057, pos = { x = -643.531, y = 119.232, z = -471.025 }, rot = { x = 0.000, y = 254.387, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 148013, gadget_id = 70290057, pos = { x = -635.274, y = 119.230, z = -431.335 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 148014, gadget_id = 70290057, pos = { x = -589.685, y = 119.358, z = -463.878 }, rot = { x = 0.000, y = 83.609, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 148015, gadget_id = 70290061, pos = { x = -613.533, y = 120.000, z = -444.780 }, rot = { x = 0.000, y = 49.361, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 148016, gadget_id = 70290056, pos = { x = -620.899, y = 120.000, z = -453.146 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 400 },
	{ config_id = 148017, gadget_id = 70950087, pos = { x = -620.599, y = 120.000, z = -488.767 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 148018, gadget_id = 70950087, pos = { x = -620.457, y = 120.000, z = -485.666 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 148019, gadget_id = 70950087, pos = { x = -624.083, y = 120.000, z = -489.410 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 148020, gadget_id = 70950087, pos = { x = -601.860, y = 120.000, z = -467.175 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 148021, gadget_id = 70950087, pos = { x = -602.460, y = 120.000, z = -465.094 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 148022, gadget_id = 70950087, pos = { x = -603.663, y = 120.000, z = -470.360 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 148023, gadget_id = 70950087, pos = { x = -639.544, y = 120.000, z = -444.542 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 148024, gadget_id = 70950087, pos = { x = -636.047, y = 120.000, z = -444.001 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 148025, gadget_id = 70950087, pos = { x = -638.984, y = 120.000, z = -449.603 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 148027, gadget_id = 70211002, pos = { x = -625.247, y = 126.051, z = -470.322 }, rot = { x = 0.000, y = 183.525, z = 0.000 }, level = 16, drop_tag = "战斗低级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 400 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 改变变量，解锁宝箱
	{ config_id = 1148026, name = "ANY_MONSTER_DIE_148026", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_148026", action = "action_EVENT_ANY_MONSTER_DIE_148026" }
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
		monsters = { 148001, 148002, 148003, 148004, 148005, 148006 },
		gadgets = { 148007, 148008, 148009, 148010, 148011, 148012, 148013, 148014, 148015, 148016, 148017, 148018, 148019, 148020, 148021, 148022, 148023, 148024, 148025, 148027 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_148026" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_148026(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_148026(context, evt)
	-- 将configid为 148027 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 148027, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "is_remindered" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "is_remindered", 1, 199004149) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end