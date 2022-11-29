-- 基础信息
local base_info = {
	group_id = 220127002
}

-- DEFS_MISCS
--key填regionid
--value为pointid
    local Check_Point_List = {
        [2059] = 10,
        [2061] = 4,
        [2059] = 11,
        [2061] = 12
    }

--定制切换轴物件函数
function LF_Rotate(context,config_id,rotate_mode)
        ScriptLib.PrintContextLog(context, "【LF_Rotate】config_id="..config_id.."|rotate_mode="..rotate_mode)
        local _v = ScriptLib.GetGroupTempValue(context,"SGV_"..config_id,{})
        if rotate_mode == 201 then
                if _v <5 then
                        _v2 = _v + 1 
                        if _v2 == 4 then _v2 = 0 end
                else
                        _v2 = _v - 1 
                        if _v2 == 9 then _v2 = 13 end
                end
        elseif rotate_mode == 203 then
                if _v <5 then
                        _v2 = _v - 1 
                        if _v2 == -1 then _v2 = 3 end
                else
                        _v2 = _v + 1 
                        if _v2 == 14 then _v2 = 10 end
                end
        elseif rotate_mode == 202 then
                if _v <5 then
                        _v2 = _v + 10
                else
                        _v2 = _v - 10
                end
        end
        ScriptLib.SetGadgetStateByConfigId(context,config_id,201)
        ScriptLib.SetEntityServerGlobalValueByConfigId(context, config_id, "SGV_Turn", _v2)
        ScriptLib.SetGroupTempValue(context,"SGV_"..config_id,_v2,{})
        local _v2String = string.format("%02d",_v2)
        ScriptLib.ChangeToTargetLevelTag(context, tonumber(config_id .. _v2String))
        ScriptLib.PrintContextLog(context, "【LF_Rotate】|tag="..config_id .. _v2String)
        return 0
end

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 平台1--旋转平台2
	{ config_id = 2001, gadget_id = 70800167, pos = { x = 11.819, y = 49.246, z = 117.634 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, persistent = true },
	-- 平台2--翻转平台3
	{ config_id = 2002, gadget_id = 70800167, pos = { x = 12.044, y = 41.621, z = 68.517 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStop, persistent = true },
	-- 平台4--旋转平台3
	{ config_id = 2010, gadget_id = 70800167, pos = { x = 60.432, y = 41.780, z = 42.884 }, rot = { x = 354.917, y = 172.479, z = 0.000 }, level = 1, state = GadgetState.GearStop, persistent = true },
	-- 平台3（反）--旋转平台5
	{ config_id = 2014, gadget_id = 70800167, pos = { x = 71.352, y = 48.574, z = 79.670 }, rot = { x = 0.000, y = 270.745, z = 0.000 }, level = 1, state = GadgetState.GearStop, persistent = true },
	{ config_id = 2016, gadget_id = 70900201, pos = { x = 11.892, y = 50.688, z = 117.664 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2017, gadget_id = 70900201, pos = { x = 22.882, y = 42.830, z = 79.644 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- A房间轴物件
	{ config_id = 2039, gadget_id = 70800162, pos = { x = 11.900, y = 49.200, z = 127.400 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	-- B房间轴物件
	{ config_id = 2040, gadget_id = 70800162, pos = { x = 11.900, y = 41.700, z = 79.500 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	-- C房间轴物件
	{ config_id = 2041, gadget_id = 70800162, pos = { x = 60.500, y = 47.000, z = 79.500 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	-- D房间轴物件
	{ config_id = 2042, gadget_id = 70800162, pos = { x = 60.500, y = 42.000, z = 31.600 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	-- E房间轴物件
	{ config_id = 2043, gadget_id = 70800162, pos = { x = 60.500, y = 56.700, z = 127.400 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	-- 房间A空气墙
	{ config_id = 2066, gadget_id = 70800170, pos = { x = 11.623, y = 49.153, z = 127.400 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.ChestLocked, persistent = true },
	-- 房间B空气墙
	{ config_id = 2067, gadget_id = 70800170, pos = { x = 11.900, y = 41.613, z = 79.500 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.ChestOpened, persistent = true },
	-- 房间C空气墙
	{ config_id = 2068, gadget_id = 70800170, pos = { x = 60.499, y = 48.524, z = 79.500 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, state = GadgetState.ChestOpened, persistent = true },
	-- 房间D空气墙
	{ config_id = 2069, gadget_id = 70800170, pos = { x = 60.500, y = 41.656, z = 31.600 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, state = GadgetState.ChestLocked, persistent = true },
	-- 房间C空气墙（倒立）
	{ config_id = 2070, gadget_id = 70800170, pos = { x = 60.500, y = 45.805, z = 79.500 }, rot = { x = 0.000, y = 180.000, z = 180.000 }, level = 1, state = GadgetState.ChestTrap, persistent = true },
	-- 房间E空气墙
	{ config_id = 2071, gadget_id = 70800170, pos = { x = 60.500, y = 56.548, z = 127.400 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, state = GadgetState.ChestOpened, persistent = true },
	{ config_id = 2091, gadget_id = 70800215, pos = { x = 12.044, y = 41.621, z = 68.517 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 2092, gadget_id = 70800215, pos = { x = 60.428, y = 42.110, z = 42.913 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 2093, gadget_id = 70800215, pos = { x = 71.352, y = 48.917, z = 79.670 }, rot = { x = 0.000, y = 270.745, z = 0.000 }, level = 1, persistent = true }
}

-- 区域
regions = {
	-- 房间B复活点
	{ config_id = 2059, shape = RegionShape.SPHERE, radius = 10, pos = { x = 20.345, y = 41.676, z = 80.438 } },
	-- 房间C复活点
	{ config_id = 2061, shape = RegionShape.SPHERE, radius = 10, pos = { x = 60.071, y = 41.900, z = 36.338 } }
}

-- 触发器
triggers = {
	-- 房间A -- 激活元素方碑解锁操作台
	{ config_id = 1002003, name = "GADGET_CREATE_2003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_2003", action = "action_EVENT_GADGET_CREATE_2003", trigger_count = 0 },
	-- 房间A -- 交互后reminder 移除指引目标
	{ config_id = 1002004, name = "SELECT_OPTION_2004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_2004", action = "action_EVENT_SELECT_OPTION_2004" },
	-- 房间A -- 操作房间B旋转完成切state
	{ config_id = 1002005, name = "GADGET_STATE_CHANGE_2005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2005", action = "action_EVENT_GADGET_STATE_CHANGE_2005", trigger_count = 0 },
	-- 房间B操作台切状态后解锁
	{ config_id = 1002006, name = "GADGET_STATE_CHANGE_2006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2006", action = "action_EVENT_GADGET_STATE_CHANGE_2006", trigger_count = 0 },
	-- 房间B -- 交互不关闭墙
	{ config_id = 1002007, name = "SELECT_OPTION_2007", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_2007", action = "action_EVENT_SELECT_OPTION_2007", trigger_count = 0 },
	-- 旋转完成切换状态
	{ config_id = 1002008, name = "GADGET_STATE_CHANGE_2008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2008", action = "action_EVENT_GADGET_STATE_CHANGE_2008", trigger_count = 0 },
	-- 延迟1秒打开操作台
	{ config_id = 1002009, name = "TIMER_EVENT_2009", event = EventType.EVENT_TIMER_EVENT, source = "time4", condition = "", action = "action_EVENT_TIMER_EVENT_2009", trigger_count = 0 },
	-- 房间D--清完小怪切操作台state后打开操作台Option
	{ config_id = 1002011, name = "GADGET_STATE_CHANGE_2011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2011", action = "action_EVENT_GADGET_STATE_CHANGE_2011" },
	-- 房间D -- 交互不关闭墙
	{ config_id = 1002012, name = "SELECT_OPTION_2012", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_2012", action = "action_EVENT_SELECT_OPTION_2012", trigger_count = 0 },
	-- 房间D -- 操作台option开启
	{ config_id = 1002013, name = "GADGET_STATE_CHANGE_2013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2013", action = "action_EVENT_GADGET_STATE_CHANGE_2013", trigger_count = 0 },
	-- platform6变量清零
	{ config_id = 1002015, name = "VARIABLE_CHANGE_2015", event = EventType.EVENT_VARIABLE_CHANGE, source = "platform6", condition = "condition_EVENT_VARIABLE_CHANGE_2015", action = "action_EVENT_VARIABLE_CHANGE_2015", trigger_count = 0 },
	-- 房间C -- 正立--倒立（3004没开）
	{ config_id = 1002018, name = "SELECT_OPTION_2018", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_2018", action = "action_EVENT_SELECT_OPTION_2018", trigger_count = 0 },
	-- 房间C -- 交互关闭墙
	{ config_id = 1002019, name = "SELECT_OPTION_2019", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_2019", action = "action_EVENT_SELECT_OPTION_2019", trigger_count = 0 },
	-- 房间C -- 操作房间E旋转完成切state
	{ config_id = 1002020, name = "GADGET_STATE_CHANGE_2020", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2020", action = "action_EVENT_GADGET_STATE_CHANGE_2020", trigger_count = 0 },
	-- 房间A -- 变量清零（platform1）
	{ config_id = 1002021, name = "VARIABLE_CHANGE_2021", event = EventType.EVENT_VARIABLE_CHANGE, source = "platform1", condition = "condition_EVENT_VARIABLE_CHANGE_2021", action = "action_EVENT_VARIABLE_CHANGE_2021", trigger_count = 0 },
	-- 房间A-B楼梯1开启1（platform1=1)
	{ config_id = 1002022, name = "VARIABLE_CHANGE_2022", event = EventType.EVENT_VARIABLE_CHANGE, source = "platform1", condition = "condition_EVENT_VARIABLE_CHANGE_2022", action = "action_EVENT_VARIABLE_CHANGE_2022", trigger_count = 0 },
	-- 房间A-B楼梯1开启2（platform1=2)
	{ config_id = 1002023, name = "VARIABLE_CHANGE_2023", event = EventType.EVENT_VARIABLE_CHANGE, source = "platform1", condition = "condition_EVENT_VARIABLE_CHANGE_2023", action = "action_EVENT_VARIABLE_CHANGE_2023", trigger_count = 0 },
	-- 房间A-B楼梯1关闭（platform1=0)
	{ config_id = 1002025, name = "VARIABLE_CHANGE_2025", event = EventType.EVENT_VARIABLE_CHANGE, source = "platform1", condition = "condition_EVENT_VARIABLE_CHANGE_2025", action = "action_EVENT_VARIABLE_CHANGE_2025", trigger_count = 0 },
	-- 房间B -- 变量清零（platform2）
	{ config_id = 1002026, name = "VARIABLE_CHANGE_2026", event = EventType.EVENT_VARIABLE_CHANGE, source = "platform2", condition = "condition_EVENT_VARIABLE_CHANGE_2026", action = "action_EVENT_VARIABLE_CHANGE_2026", trigger_count = 0 },
	-- 房间B-C翻转--楼梯2开启（platform2=1）
	{ config_id = 1002027, name = "VARIABLE_CHANGE_2027", event = EventType.EVENT_VARIABLE_CHANGE, source = "platform2", condition = "condition_EVENT_VARIABLE_CHANGE_2027", action = "action_EVENT_VARIABLE_CHANGE_2027", trigger_count = 0 },
	-- 房间B-C翻转--楼梯2关闭（platform2=0）
	{ config_id = 1002028, name = "VARIABLE_CHANGE_2028", event = EventType.EVENT_VARIABLE_CHANGE, source = "platform2", condition = "condition_EVENT_VARIABLE_CHANGE_2028", action = "action_EVENT_VARIABLE_CHANGE_2028", trigger_count = 0 },
	-- 房间D -- 变量清零（platform3）
	{ config_id = 1002029, name = "VARIABLE_CHANGE_2029", event = EventType.EVENT_VARIABLE_CHANGE, source = "platform3", condition = "condition_EVENT_VARIABLE_CHANGE_2029", action = "action_EVENT_VARIABLE_CHANGE_2029", trigger_count = 0 },
	-- 房间D-C旋转--楼梯3关闭（platform3=2）开1号门
	{ config_id = 1002030, name = "VARIABLE_CHANGE_2030", event = EventType.EVENT_VARIABLE_CHANGE, source = "platform3", condition = "condition_EVENT_VARIABLE_CHANGE_2030", action = "action_EVENT_VARIABLE_CHANGE_2030", trigger_count = 0 },
	-- 房间D-C旋转--楼梯3开启（platform3=0）开2、3号门
	{ config_id = 1002031, name = "VARIABLE_CHANGE_2031", event = EventType.EVENT_VARIABLE_CHANGE, source = "platform3", condition = "condition_EVENT_VARIABLE_CHANGE_2031", action = "action_EVENT_VARIABLE_CHANGE_2031", trigger_count = 0 },
	-- 房间E变量清零--platform5
	{ config_id = 1002032, name = "VARIABLE_CHANGE_2032", event = EventType.EVENT_VARIABLE_CHANGE, source = "platform5", condition = "condition_EVENT_VARIABLE_CHANGE_2032", action = "action_EVENT_VARIABLE_CHANGE_2032", trigger_count = 0 },
	-- 房间C-E楼梯4开启（platform5=1）开2号门
	{ config_id = 1002033, name = "VARIABLE_CHANGE_2033", event = EventType.EVENT_VARIABLE_CHANGE, source = "platform5", condition = "condition_EVENT_VARIABLE_CHANGE_2033", action = "action_EVENT_VARIABLE_CHANGE_2033", trigger_count = 0 },
	-- 房间C-E楼梯4开启（platform5=2）关门
	{ config_id = 1002034, name = "VARIABLE_CHANGE_2034", event = EventType.EVENT_VARIABLE_CHANGE, source = "platform5", condition = "condition_EVENT_VARIABLE_CHANGE_2034", action = "action_EVENT_VARIABLE_CHANGE_2034", trigger_count = 0 },
	{ config_id = 1002035, name = "VARIABLE_CHANGE_2035", event = EventType.EVENT_VARIABLE_CHANGE, source = "platform3", condition = "condition_EVENT_VARIABLE_CHANGE_2035", action = "action_EVENT_VARIABLE_CHANGE_2035", trigger_count = 0 },
	{ config_id = 1002036, name = "VARIABLE_CHANGE_2036", event = EventType.EVENT_VARIABLE_CHANGE, source = "platform3", condition = "condition_EVENT_VARIABLE_CHANGE_2036", action = "action_EVENT_VARIABLE_CHANGE_2036", trigger_count = 0 },
	-- 房间A -- 交互后不关闭墙
	{ config_id = 1002038, name = "SELECT_OPTION_2038", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_2038", action = "action_EVENT_SELECT_OPTION_2038", trigger_count = 0 },
	-- 房间B -- 去掉指引
	{ config_id = 1002044, name = "SELECT_OPTION_2044", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_2044", action = "action_EVENT_SELECT_OPTION_2044" },
	-- 房间C -- 首次交互
	{ config_id = 1002046, name = "SELECT_OPTION_2046", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_2046", action = "action_EVENT_SELECT_OPTION_2046" },
	-- 关门-清完怪
	{ config_id = 1002047, name = "VARIABLE_CHANGE_2047", event = EventType.EVENT_VARIABLE_CHANGE, source = "platform6", condition = "condition_EVENT_VARIABLE_CHANGE_2047", action = "action_EVENT_VARIABLE_CHANGE_2047", trigger_count = 0 },
	-- 开门-清完怪
	{ config_id = 1002048, name = "VARIABLE_CHANGE_2048", event = EventType.EVENT_VARIABLE_CHANGE, source = "platform6", condition = "condition_EVENT_VARIABLE_CHANGE_2048", action = "action_EVENT_VARIABLE_CHANGE_2048", trigger_count = 0 },
	-- 房间D-C旋转--楼梯3开启（platform3=3）开3号门
	{ config_id = 1002049, name = "VARIABLE_CHANGE_2049", event = EventType.EVENT_VARIABLE_CHANGE, source = "platform3", condition = "condition_EVENT_VARIABLE_CHANGE_2049", action = "action_EVENT_VARIABLE_CHANGE_2049", trigger_count = 0 },
	-- 房间D-C旋转--楼梯3开启正确（platform3=1）开1、2号门
	{ config_id = 1002050, name = "VARIABLE_CHANGE_2050", event = EventType.EVENT_VARIABLE_CHANGE, source = "platform3", condition = "condition_EVENT_VARIABLE_CHANGE_2050", action = "action_EVENT_VARIABLE_CHANGE_2050", trigger_count = 0 },
	-- 房间B操作台切状态后解锁-交互去掉后
	{ config_id = 1002051, name = "GADGET_STATE_CHANGE_2051", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2051", action = "action_EVENT_GADGET_STATE_CHANGE_2051", trigger_count = 0 },
	-- 交互选项 - 反（3004开）
	{ config_id = 1002053, name = "GADGET_STATE_CHANGE_2053", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2053", action = "action_EVENT_GADGET_STATE_CHANGE_2053", trigger_count = 0 },
	-- 房间C -- 倒立——正立（3004光桥已开）
	{ config_id = 1002054, name = "SELECT_OPTION_2054", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_2054", action = "action_EVENT_SELECT_OPTION_2054", trigger_count = 0 },
	-- 房间B复活点
	{ config_id = 1002059, name = "ENTER_REGION_2059", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2059", action = "", trigger_count = 0 },
	-- 房间C复活点
	{ config_id = 1002061, name = "ENTER_REGION_2061", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2061", action = "", trigger_count = 0 },
	-- 房间A -- 交互关闭墙（光桥2打开）
	{ config_id = 1002062, name = "SELECT_OPTION_2062", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_2062", action = "action_EVENT_SELECT_OPTION_2062", trigger_count = 0 },
	-- 房间A-B楼梯1开启2（platform1=2)光桥2开
	{ config_id = 1002063, name = "VARIABLE_CHANGE_2063", event = EventType.EVENT_VARIABLE_CHANGE, source = "platform1", condition = "condition_EVENT_VARIABLE_CHANGE_2063", action = "action_EVENT_VARIABLE_CHANGE_2063", trigger_count = 0 },
	-- 房间A-B楼梯1开启1打开光桥2（platform1=1)
	{ config_id = 1002064, name = "VARIABLE_CHANGE_2064", event = EventType.EVENT_VARIABLE_CHANGE, source = "platform1", condition = "condition_EVENT_VARIABLE_CHANGE_2064", action = "action_EVENT_VARIABLE_CHANGE_2064", trigger_count = 0 },
	-- 房间B -- 小怪清完且房间朝向正确
	{ config_id = 1002065, name = "VARIABLE_CHANGE_2065", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_2065", action = "action_EVENT_VARIABLE_CHANGE_2065", trigger_count = 0 },
	-- 房间A -- 交互关闭墙（光桥2没开）
	{ config_id = 1002072, name = "SELECT_OPTION_2072", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_2072", action = "action_EVENT_SELECT_OPTION_2072", trigger_count = 0 },
	-- 开正面门-清完怪-3004
	{ config_id = 1002073, name = "VARIABLE_CHANGE_2073", event = EventType.EVENT_VARIABLE_CHANGE, source = "platform6", condition = "condition_EVENT_VARIABLE_CHANGE_2073", action = "action_EVENT_VARIABLE_CHANGE_2073", trigger_count = 0 },
	-- 开反面门-清完怪-3004
	{ config_id = 1002074, name = "VARIABLE_CHANGE_2074", event = EventType.EVENT_VARIABLE_CHANGE, source = "platform6", condition = "condition_EVENT_VARIABLE_CHANGE_2074", action = "action_EVENT_VARIABLE_CHANGE_2074", trigger_count = 0 },
	-- 房间A -- 旋转切state后延迟1秒打开操作台1
	{ config_id = 1002075, name = "TIMER_EVENT_2075", event = EventType.EVENT_TIMER_EVENT, source = "time1", condition = "", action = "action_EVENT_TIMER_EVENT_2075", trigger_count = 0 },
	-- 房间B -- 操作房间C翻转完成切state
	{ config_id = 1002076, name = "GADGET_STATE_CHANGE_2076", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2076", action = "action_EVENT_GADGET_STATE_CHANGE_2076", trigger_count = 0 },
	-- 房间B -- 延迟1秒打开操作台2
	{ config_id = 1002077, name = "TIMER_EVENT_2077", event = EventType.EVENT_TIMER_EVENT, source = "time2", condition = "", action = "action_EVENT_TIMER_EVENT_2077", trigger_count = 0 },
	-- 房间B -- 交互关闭墙
	{ config_id = 1002078, name = "SELECT_OPTION_2078", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_2078", action = "action_EVENT_SELECT_OPTION_2078", trigger_count = 0 },
	-- 房间D -- 交互关闭墙
	{ config_id = 1002079, name = "SELECT_OPTION_2079", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_2079", action = "action_EVENT_SELECT_OPTION_2079", trigger_count = 0 },
	-- 房间D -- 延迟1秒打开操作台3
	{ config_id = 1002080, name = "TIMER_EVENT_2080", event = EventType.EVENT_TIMER_EVENT, source = "time3", condition = "", action = "action_EVENT_TIMER_EVENT_2080", trigger_count = 0 },
	-- 房间D -- 操作房间C旋转完成切state
	{ config_id = 1002081, name = "GADGET_STATE_CHANGE_2081", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2081", action = "action_EVENT_GADGET_STATE_CHANGE_2081", trigger_count = 0 },
	-- 房间C -- 交互不关闭墙
	{ config_id = 1002082, name = "SELECT_OPTION_2082", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_2082", action = "action_EVENT_SELECT_OPTION_2082", trigger_count = 0 },
	-- 房间C -- 延迟1秒打开操作台
	{ config_id = 1002083, name = "TIMER_EVENT_2083", event = EventType.EVENT_TIMER_EVENT, source = "time5", condition = "", action = "action_EVENT_TIMER_EVENT_2083", trigger_count = 0 },
	-- 加载所有房间trigger
	{ config_id = 1002084, name = "GROUP_LOAD_2084", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_2084", trigger_count = 0 },
	-- 房间C -- 倒立——正立（3004没开）
	{ config_id = 1002085, name = "SELECT_OPTION_2085", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_2085", action = "action_EVENT_SELECT_OPTION_2085", trigger_count = 0 },
	-- 开反面门（platform6=1)
	{ config_id = 1002087, name = "VARIABLE_CHANGE_2087", event = EventType.EVENT_VARIABLE_CHANGE, source = "platform6", condition = "condition_EVENT_VARIABLE_CHANGE_2087", action = "action_EVENT_VARIABLE_CHANGE_2087", trigger_count = 0 },
	-- 开正面门（platform6=0)
	{ config_id = 1002089, name = "VARIABLE_CHANGE_2089", event = EventType.EVENT_VARIABLE_CHANGE, source = "platform6", condition = "condition_EVENT_VARIABLE_CHANGE_2089", action = "action_EVENT_VARIABLE_CHANGE_2089", trigger_count = 0 },
	-- 房间A -- 交互后不关闭墙光桥开
	{ config_id = 1002095, name = "SELECT_OPTION_2095", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_2095", action = "action_EVENT_SELECT_OPTION_2095", trigger_count = 0 },
	-- 房间B -- 小怪清完且房间朝向正确
	{ config_id = 1002096, name = "VARIABLE_CHANGE_2096", event = EventType.EVENT_VARIABLE_CHANGE, source = "platform1", condition = "condition_EVENT_VARIABLE_CHANGE_2096", action = "action_EVENT_VARIABLE_CHANGE_2096", trigger_count = 0 },
	-- 交互选项-反
	{ config_id = 1002097, name = "GADGET_STATE_CHANGE_2097", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2097", action = "action_EVENT_GADGET_STATE_CHANGE_2097", trigger_count = 0 },
	-- 交互选项-正
	{ config_id = 1002098, name = "GADGET_STATE_CHANGE_2098", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2098", action = "action_EVENT_GADGET_STATE_CHANGE_2098", trigger_count = 0 },
	-- 房间A -- 交互关闭墙（光桥2没开）去掉引导2016
	{ config_id = 1002100, name = "SELECT_OPTION_2100", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_2100", action = "action_EVENT_SELECT_OPTION_2100", trigger_count = 0 },
	{ config_id = 1002102, name = "GADGET_CREATE_2102", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_2102", action = "action_EVENT_GADGET_CREATE_2102", trigger_count = 0 },
	-- 操作台2014上锁
	{ config_id = 1002103, name = "VARIABLE_CHANGE_2103", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_2103", action = "action_EVENT_VARIABLE_CHANGE_2103", trigger_count = 0 },
	-- 操作台2014解锁
	{ config_id = 1002104, name = "VARIABLE_CHANGE_2104", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_2104", action = "action_EVENT_VARIABLE_CHANGE_2104", trigger_count = 0 },
	-- 房间A -- 交互关闭墙去掉指引
	{ config_id = 1002105, name = "SELECT_OPTION_2105", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_2105", action = "action_EVENT_SELECT_OPTION_2105", trigger_count = 0 },
	-- 交互选项 - 正（3004开）
	{ config_id = 1002106, name = "GADGET_STATE_CHANGE_2106", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2106", action = "action_EVENT_GADGET_STATE_CHANGE_2106", trigger_count = 0 },
	-- 保底_通关后死亡回到复活点
	{ config_id = 1002107, name = "VARIABLE_CHANGE_2107", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_2107", action = "action_EVENT_VARIABLE_CHANGE_2107", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "platform1", value = 0, no_refresh = true },
	{ config_id = 2, name = "platform2", value = 0, no_refresh = true },
	{ config_id = 3, name = "platform3", value = 0, no_refresh = true },
	{ config_id = 4, name = "platform4", value = 0, no_refresh = true },
	{ config_id = 5, name = "platform5", value = 0, no_refresh = true },
	{ config_id = 6, name = "isOpen", value = 0, no_refresh = true },
	{ config_id = 7, name = "Door", value = 0, no_refresh = true },
	{ config_id = 8, name = "gameState", value = 0, no_refresh = true },
	{ config_id = 13, name = "platform6", value = 0, no_refresh = true },
	{ config_id = 14, name = "_gearOpen", value = 0, no_refresh = true },
	{ config_id = 15, name = "rotate_c1", value = 0, no_refresh = true },
	{ config_id = 16, name = "rotate_c2", value = 0, no_refresh = true },
	{ config_id = 17, name = "rotate_c3", value = 0, no_refresh = true },
	{ config_id = 18, name = "isGuideFinish", value = 0, no_refresh = true },
	{ config_id = 19, name = "p3_rotate", value = 0, no_refresh = true },
	{ config_id = 20, name = "default", value = 0, no_refresh = true },
	{ config_id = 21, name = "p5_rotate", value = 0, no_refresh = true },
	{ config_id = 22, name = "gearOpen4", value = 0, no_refresh = true },
	{ config_id = 23, name = "guide2Create", value = 0, no_refresh = true },
	{ config_id = 24, name = "levelFinished", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 2090, gadget_id = 70800215, pos = { x = 11.820, y = 49.297, z = 117.635 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
		{ config_id = 2108, gadget_id = 70310001, pos = { x = 13.835, y = 49.222, z = 115.104 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart }
	},
	regions = {
		{ config_id = 2045, shape = RegionShape.SPHERE, radius = 4, pos = { x = 22.882, y = 41.713, z = 79.644 } }
	},
	triggers = {
		{ config_id = 1002024, name = "VARIABLE_CHANGE_2024", event = EventType.EVENT_VARIABLE_CHANGE, source = "platform1", condition = "condition_EVENT_VARIABLE_CHANGE_2024", action = "action_EVENT_VARIABLE_CHANGE_2024", trigger_count = 0 },
		{ config_id = 1002037, name = "VARIABLE_CHANGE_2037", event = EventType.EVENT_VARIABLE_CHANGE, source = "reminder1", condition = "condition_EVENT_VARIABLE_CHANGE_2037", action = "action_EVENT_VARIABLE_CHANGE_2037" },
		{ config_id = 1002045, name = "ENTER_REGION_2045", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_2045" },
		{ config_id = 1002052, name = "GADGET_STATE_CHANGE_2052", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2052", action = "action_EVENT_GADGET_STATE_CHANGE_2052", trigger_count = 0 },
		{ config_id = 1002055, name = "VARIABLE_CHANGE_2055", event = EventType.EVENT_VARIABLE_CHANGE, source = "platform5", condition = "condition_EVENT_VARIABLE_CHANGE_2055", action = "action_EVENT_VARIABLE_CHANGE_2055", trigger_count = 0 },
		{ config_id = 1002056, name = "SELECT_OPTION_2056", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_2056", action = "action_EVENT_SELECT_OPTION_2056", trigger_count = 0 },
		{ config_id = 1002057, name = "VARIABLE_CHANGE_2057", event = EventType.EVENT_VARIABLE_CHANGE, source = "platform5", condition = "condition_EVENT_VARIABLE_CHANGE_2057", action = "action_EVENT_VARIABLE_CHANGE_2057", trigger_count = 0 },
		{ config_id = 1002058, name = "GADGET_STATE_CHANGE_2058", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2058", action = "action_EVENT_GADGET_STATE_CHANGE_2058", trigger_count = 0 },
		{ config_id = 1002060, name = "GADGET_STATE_CHANGE_2060", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2060", action = "action_EVENT_GADGET_STATE_CHANGE_2060", trigger_count = 0 },
		{ config_id = 1002086, name = "GADGET_STATE_CHANGE_2086", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2086", action = "action_EVENT_GADGET_STATE_CHANGE_2086", trigger_count = 0 },
		{ config_id = 1002088, name = "SELECT_OPTION_2088", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_2088", action = "action_EVENT_SELECT_OPTION_2088", trigger_count = 0 },
		{ config_id = 1002094, name = "VARIABLE_CHANGE_2094", event = EventType.EVENT_VARIABLE_CHANGE, source = "platform1", condition = "condition_EVENT_VARIABLE_CHANGE_2094", action = "action_EVENT_VARIABLE_CHANGE_2094", trigger_count = 0 },
		{ config_id = 1002099, name = "VARIABLE_CHANGE_2099", event = EventType.EVENT_VARIABLE_CHANGE, source = "addGuide", condition = "condition_EVENT_VARIABLE_CHANGE_2099", action = "action_EVENT_VARIABLE_CHANGE_2099" },
		{ config_id = 1002101, name = "SELECT_OPTION_2101", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_2101", action = "action_EVENT_SELECT_OPTION_2101", trigger_count = 0 }
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
		monsters = { },
		gadgets = { 2001, 2002, 2010, 2014, 2039, 2040, 2041, 2042, 2043, 2066, 2067, 2068, 2069, 2070, 2071, 2091, 2092, 2093 },
		regions = { 2059, 2061 },
		triggers = { "GADGET_CREATE_2003", "VARIABLE_CHANGE_2035", "VARIABLE_CHANGE_2036", "ENTER_REGION_2059", "ENTER_REGION_2061", "GROUP_LOAD_2084" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = -----------房间A------------,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "SELECT_OPTION_2004", "GADGET_STATE_CHANGE_2005", "VARIABLE_CHANGE_2021", "VARIABLE_CHANGE_2022", "VARIABLE_CHANGE_2023", "VARIABLE_CHANGE_2025", "SELECT_OPTION_2038", "SELECT_OPTION_2062", "VARIABLE_CHANGE_2063", "VARIABLE_CHANGE_2064", "SELECT_OPTION_2072", "TIMER_EVENT_2075", "SELECT_OPTION_2095", "SELECT_OPTION_2100", "GADGET_CREATE_2102", "SELECT_OPTION_2105" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = -----------房间B------------,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_2006", "SELECT_OPTION_2007", "VARIABLE_CHANGE_2026", "VARIABLE_CHANGE_2027", "VARIABLE_CHANGE_2028", "SELECT_OPTION_2044", "GADGET_STATE_CHANGE_2051", "VARIABLE_CHANGE_2065", "GADGET_STATE_CHANGE_2076", "TIMER_EVENT_2077", "SELECT_OPTION_2078" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = -----------房间D------------,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_2011", "SELECT_OPTION_2012", "VARIABLE_CHANGE_2029", "VARIABLE_CHANGE_2030", "VARIABLE_CHANGE_2031", "VARIABLE_CHANGE_2049", "VARIABLE_CHANGE_2050", "SELECT_OPTION_2079", "TIMER_EVENT_2080", "GADGET_STATE_CHANGE_2081" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = -----------房间C------------,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_2013", "SELECT_OPTION_2019", "GADGET_STATE_CHANGE_2020", "VARIABLE_CHANGE_2032", "VARIABLE_CHANGE_2033", "VARIABLE_CHANGE_2034", "SELECT_OPTION_2046", "SELECT_OPTION_2082", "TIMER_EVENT_2083", "VARIABLE_CHANGE_2107" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = --------房间C（倒立面）-------,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_2008", "TIMER_EVENT_2009", "VARIABLE_CHANGE_2015", "SELECT_OPTION_2018", "VARIABLE_CHANGE_2047", "VARIABLE_CHANGE_2048", "GADGET_STATE_CHANGE_2053", "SELECT_OPTION_2054", "VARIABLE_CHANGE_2073", "VARIABLE_CHANGE_2074", "SELECT_OPTION_2085", "VARIABLE_CHANGE_2087", "VARIABLE_CHANGE_2089", "VARIABLE_CHANGE_2096", "GADGET_STATE_CHANGE_2097", "GADGET_STATE_CHANGE_2098", "VARIABLE_CHANGE_2103", "VARIABLE_CHANGE_2104", "GADGET_STATE_CHANGE_2106" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
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
function condition_EVENT_GADGET_CREATE_2003(context, evt)
	if 2001 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"levelFinished"为0
	if ScriptLib.GetGroupVariableValue(context, "levelFinished") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_2003(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220127002, 2001, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_2004(context, evt)
	-- 判断是gadgetid 2001 option_id 31
	if 2001 ~= evt.param1 then
		return false	
	end
	
	if 31 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_2004(context, evt)
	LF_Rotate(context,2040,203)
	
	ScriptLib.ShowReminder(context, 201270101)
	
	ScriptLib.DelWorktopOptionByGroupId(context, 220127002, 2001, 31)
	-- ScriptLib.RemoveEntityByConfigId(context, 220127002, EntityType.GADGET, 2016 )
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2005(context, evt)
	if 2040 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2005(context, evt)
	-- 针对当前group内变量名为 "platform1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "platform1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 延迟1秒后,向groupId为：220127002的对象,请求一次调用,并将string参数："time1" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220127002, "time1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2006(context, evt)
	if 2002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"isGuideFinish"为0
	if ScriptLib.GetGroupVariableValue(context, "isGuideFinish") ~= 0 then
			return false
	end
	
	-- 判断变量"levelFinished"为0
	if ScriptLib.GetGroupVariableValue(context, "levelFinished") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2006(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220127002, 2002, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220127002, EntityType.GADGET, 2091 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 创建id为2017的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2017 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_2007(context, evt)
	-- 判断是gadgetid 2002 option_id 31
	if 2002 ~= evt.param1 then
		return false	
	end
	
	if 31 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"isGuideFinish"为1
	if ScriptLib.GetGroupVariableValue(context, "isGuideFinish") ~= 1 then
			return false
	end
	
	-- 判断变量"platform2"为0
	if ScriptLib.GetGroupVariableValue(context, "platform2") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_2007(context, evt)
	LF_Rotate(context,2041,202)
	
	ScriptLib.DelWorktopOptionByGroupId(context, 220127002, 2002, 31)
	ScriptLib.SetGroupVariableValue(context, "rotate_c1", 1)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2008(context, evt)
	if 2041 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	-- 判断变量"rotate_c3"为1
	if ScriptLib.GetGroupVariableValue(context, "rotate_c3") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2008(context, evt)
	-- 延迟1秒后,向groupId为：220127002的对象,请求一次调用,并将string参数："time4" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220127002, "time4", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 针对当前group内变量名为 "platform6" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "platform6", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "rotate_c3" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "rotate_c3", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_2009(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220127002, 2002, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2011(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 220127002, 2010) then
		return false
	end
	
	-- 判断变量"levelFinished"为0
	if ScriptLib.GetGroupVariableValue(context, "levelFinished") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2011(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220127002, 2010, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220127002, EntityType.GADGET, 2092 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_2012(context, evt)
	-- 判断是gadgetid 2010 option_id 31
	if 2010 ~= evt.param1 then
		return false	
	end
	
	if 31 ~= evt.param2 then
		return false
	end
	
	
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 220127002, 2069) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_2012(context, evt)
	LF_Rotate(context,2041,203)
	
	
	ScriptLib.SetGroupVariableValue(context, "rotate_c2", 1)
	ScriptLib.DelWorktopOptionByGroupId(context, 220127002, 2010, 31)
	
	ScriptLib.SetGadgetStateByConfigId(context, 2070, GadgetState.Default) ScriptLib.SetGroupGadgetStateByConfigId(context, 220127003, 3002, GadgetState.Default)
	ScriptLib.SetGroupGadgetStateByConfigId(context, 220127003, 3003, GadgetState.Default)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2013(context, evt)
	if 2014 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"levelFinished"为0
	if ScriptLib.GetGroupVariableValue(context, "levelFinished") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2013(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220127002, 2014, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220127002, EntityType.GADGET, 2093 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 将本组内变量名为 "gearOpen4" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "gearOpen4", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_2015(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"platform6"为2
	if ScriptLib.GetGroupVariableValue(context, "platform6") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_2015(context, evt)
	-- 将本组内变量名为 "platform6" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "platform6", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_2018(context, evt)
	-- 判断是gadgetid 2002 option_id 31
	if 2002 ~= evt.param1 then
		return false	
	end
	
	if 31 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"platform6"为0
	if ScriptLib.GetGroupVariableValue(context, "platform6") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_2018(context, evt)
	ScriptLib.DelWorktopOptionByGroupId(context, 220127002, 2002, 31) ScriptLib.CreateGadget(context, { config_id = 2068 })
	LF_Rotate(context,2041,202)
	
	ScriptLib.SetGroupVariableValue(context, "rotate_c3", 1)
	ScriptLib.SetGadgetStateByConfigId(context, 2070, 0) ScriptLib.SetGadgetStateByConfigId(context, 2067, 302)
	ScriptLib.SetGadgetStateByConfigId(context, 2069, 0)
	ScriptLib.SetGroupGadgetStateByConfigId(context, 220127003, 3002, 0) ScriptLib.SetGroupGadgetStateByConfigId(context, 220127003, 3003, 0) 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_2019(context, evt)
	-- 判断是gadgetid 2014 option_id 31
	if 2014 ~= evt.param1 then
		return false	
	end
	
	if 31 ~= evt.param2 then
		return false
	end
	
	
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 220127002, 2068) then
		return false
	end
	
	-- 判断变量"default"为1
	if ScriptLib.GetGroupVariableValue(context, "default") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_2019(context, evt)
	LF_Rotate(context,2043,201)
	ScriptLib.DelWorktopOptionByGroupId(context, 220127002, 2014, 31)
	ScriptLib.SetGadgetStateByConfigId(context, 2068, 302)
	ScriptLib.SetGadgetStateByConfigId(context, 2071, 302)
	ScriptLib.SetGroupGadgetStateByConfigId(context, 220127003, 3004, GadgetState.Default)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2020(context, evt)
	if 2043 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2020(context, evt)
	-- 针对当前group内变量名为 "platform5" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "platform5", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 延迟1秒后,向groupId为：220127002的对象,请求一次调用,并将string参数："time5" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220127002, "time5", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_2021(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"platform1"为4
	if ScriptLib.GetGroupVariableValue(context, "platform1") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_2021(context, evt)
	-- 变量"platform1"赋值为0
	ScriptLib.SetGroupVariableValue(context, "platform1", 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_2022(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"platform1"为1
	if ScriptLib.GetGroupVariableValue(context, "platform1") ~= 1 then
			return false
	end
	
	-- 判断变量"p3_rotate"为0
	if ScriptLib.GetGroupVariableValue(context, "p3_rotate") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_2022(context, evt)
	-- 将configid为 2066 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2066, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 2067 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2067, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 改变指定group组220127003中， configid为3001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220127003, 3001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_2023(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"platform1"为2
	if ScriptLib.GetGroupVariableValue(context, "platform1") ~= 2 then
			return false
	end
	
	-- 判断变量"p3_rotate"为0
	if ScriptLib.GetGroupVariableValue(context, "p3_rotate") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_2023(context, evt)
	ScriptLib.DelWorktopOptionByGroupId(context, 220127002, 2002, 31) 
	ScriptLib.SetGadgetStateByConfigId(context, 2067, 202) 
	ScriptLib.SetGadgetStateByConfigId(context, 2066, GadgetState.GearStart) 
	ScriptLib.SetGroupGadgetStateByConfigId(context, 220127003, 3001, GadgetState.GearStart) 
	
	ScriptLib.SetGadgetStateByConfigId(context, 2002, GadgetState.GearStop)
	
	
	ScriptLib.CreateGadget(context, { config_id = 2091 })
	
	--ScriptLib.RemoveEntityByConfigId(context, 220127002, EntityType.GADGET, 2017 ) 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_2025(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"platform1"为0
	if ScriptLib.GetGroupVariableValue(context, "platform1") ~= 0 then
			return false
	end
	
	-- 判断变量"p3_rotate"为1
	if ScriptLib.GetGroupVariableValue(context, "p3_rotate") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_2025(context, evt)
	-- 删除指定group： 220127002 ；指定config：2002；物件身上指定option：31；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220127002, 2002, 31) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 改变指定group组220127003中， configid为3002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220127003, 3002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 将configid为 2067 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2067, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_2026(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"platform2"为2
	if ScriptLib.GetGroupVariableValue(context, "platform2") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_2026(context, evt)
	-- 将本组内变量名为 "platform2" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "platform2", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_2027(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"platform2"为1
	if ScriptLib.GetGroupVariableValue(context, "platform2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_2027(context, evt)
	-- 将configid为 2070 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2070, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 2067 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2067, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 2070 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2070, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 2069 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2069, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 改变指定group组220127003中， configid为3002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220127003, 3002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组220127003中， configid为3003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220127003, 3003, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220127002, EntityType.GADGET, 2068 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 将本组内变量名为 "p3_rotate" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "p3_rotate", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_2028(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"platform2"为0
	if ScriptLib.GetGroupVariableValue(context, "platform2") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_2028(context, evt)
	-- 改变指定group组220127003中， configid为3002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220127003, 3002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 创建id为2068的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2068 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将本组内变量名为 "p3_rotate" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "p3_rotate", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_2029(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"platform3"为4
	if ScriptLib.GetGroupVariableValue(context, "platform3") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_2029(context, evt)
	-- 变量"platform3"赋值为0
	ScriptLib.SetGroupVariableValue(context, "platform3", 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_2030(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"platform3"为2
	if ScriptLib.GetGroupVariableValue(context, "platform3") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_2030(context, evt)
	-- 将configid为 2070 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2070, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 改变指定group组220127003中， configid为3003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220127003, 3003, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组220127003中， configid为3002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220127003, 3002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_2031(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"platform3"为0
	if ScriptLib.GetGroupVariableValue(context, "platform3") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_2031(context, evt)
	-- 将configid为 2069 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2069, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 2070 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2070, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 2070 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2070, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 改变指定group组220127003中， configid为3003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220127003, 3003, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组220127003中， configid为3002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220127003, 3002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_2032(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"platform5"为4
	if ScriptLib.GetGroupVariableValue(context, "platform5") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_2032(context, evt)
	-- 变量"platform5"赋值为0
	ScriptLib.SetGroupVariableValue(context, "platform5", 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_2033(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"platform5"为1
	if ScriptLib.GetGroupVariableValue(context, "platform5") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_2033(context, evt)
	-- 将configid为 2071 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2071, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 2068 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2068, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 改变指定group组220127003中， configid为3004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220127003, 3004, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 将本组内变量名为 "p5_rotate" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "p5_rotate", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_2034(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"platform5"为2
	if ScriptLib.GetGroupVariableValue(context, "platform5") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_2034(context, evt)
	-- 将本组内变量名为 "p5_rotate" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "p5_rotate", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_2035(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"platform3"为3
	if ScriptLib.GetGroupVariableValue(context, "platform3") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_2035(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220127002, 6)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220127002, 3)
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220127002, 2002, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_2036(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"platform3"为0
	if ScriptLib.GetGroupVariableValue(context, "platform3") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_2036(context, evt)
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220127002, 6)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220127002, 3)
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220127002, 2002, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 将本组内变量名为 "platform6" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "platform6", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "rotate_c3" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "rotate_c3", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_2038(context, evt)
	-- 判断是gadgetid 2001 option_id 31
	if 2001 ~= evt.param1 then
		return false	
	end
	
	if 31 ~= evt.param2 then
		return false
	end
	
	
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 220127002, 2066) then
		return false
	end
	
	-- 判断变量"p3_rotate"为0
	if ScriptLib.GetGroupVariableValue(context, "p3_rotate") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_2038(context, evt)
	LF_Rotate(context,2040,203)
	
	ScriptLib.DelWorktopOptionByGroupId(context, 220127002, 2001, 31)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_2044(context, evt)
	-- 判断是gadgetid 2002 option_id 31
	if 2002 ~= evt.param1 then
		return false	
	end
	
	if 31 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"isGuideFinish"为0
	if ScriptLib.GetGroupVariableValue(context, "isGuideFinish") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_2044(context, evt)
	LF_Rotate(context,2041,202)
	
	ScriptLib.SetGroupVariableValue(context, "rotate_c1", 1)
	
	ScriptLib.SetGroupVariableValue(context, "isGuideFinish", 1)
	ScriptLib.ShowReminder(context, 201270301)
	ScriptLib.DelWorktopOptionByGroupId(context, 220127002, 2002, 31)
	ScriptLib.RemoveEntityByConfigId(context, 220127002, EntityType.GADGET, 2017 )
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_2046(context, evt)
	-- 判断是gadgetid 2014 option_id 31
	if 2014 ~= evt.param1 then
		return false	
	end
	
	if 31 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"default"为0
	if ScriptLib.GetGroupVariableValue(context, "default") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_2046(context, evt)
	LF_Rotate(context,2043,201)
	ScriptLib.DelWorktopOptionByGroupId(context, 220127002, 2014, 31)
	ScriptLib.SetGroupVariableValue(context, "default", 1)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_2047(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"platform6"为0
	if ScriptLib.GetGroupVariableValue(context, "platform6") ~= 0 then
			return false
	end
	
	-- 判断变量"isClear"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "isClear", 220127011) ~= 1 then
			return false
	end
	
	-- 判断变量"p5_rotate"为0
	if ScriptLib.GetGroupVariableValue(context, "p5_rotate") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_2047(context, evt)
	-- 将configid为 2070 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2070, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 2070 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2070, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 2067 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2067, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 改变指定group组220127003中， configid为3002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220127003, 3002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组220127003中， configid为3003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220127003, 3003, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220127002, EntityType.GADGET, 2068 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 将本组内变量名为 "p3_rotate" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "p3_rotate", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 2069 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2069, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_2048(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"platform6"为1
	if ScriptLib.GetGroupVariableValue(context, "platform6") ~= 1 then
			return false
	end
	
	-- 判断变量"isClear"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "isClear", 220127011) ~= 1 then
			return false
	end
	
	-- 判断变量"p5_rotate"为0
	if ScriptLib.GetGroupVariableValue(context, "p5_rotate") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_2048(context, evt)
	ScriptLib.SetGadgetStateByConfigId(context, 2068, 201)
	
	ScriptLib.SetGadgetStateByConfigId(context, 2067, 202)
	ScriptLib.SetGroupGadgetStateByConfigId(context, 220127003, 3002, GadgetState.GearStart)
	ScriptLib.RemoveEntityByConfigId(context, 220127002, EntityType.GADGET, 2070 )
	ScriptLib.SetGroupVariableValueByGroup(context, "p3_rotate", 1, 220127002)
	
	ScriptLib.SetGadgetStateByConfigId(context, 2068, 302)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_2049(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"platform3"为1
	if ScriptLib.GetGroupVariableValue(context, "platform3") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_2049(context, evt)
	-- 将configid为 2070 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2070, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 2069 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2069, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 改变指定group组220127003中， configid为3003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220127003, 3003, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_2050(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"platform3"为3
	if ScriptLib.GetGroupVariableValue(context, "platform3") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_2050(context, evt)
	-- 将configid为 2070 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2070, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 2069 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2069, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 2070 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2070, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 改变指定group组220127003中， configid为3003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220127003, 3003, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组220127003中， configid为3002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220127003, 3002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2051(context, evt)
	if 2002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"isGuideFinish"为1
	if ScriptLib.GetGroupVariableValue(context, "isGuideFinish") ~= 1 then
			return false
	end
	
	-- 判断变量"levelFinished"为0
	if ScriptLib.GetGroupVariableValue(context, "levelFinished") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2051(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220127002, 2002, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220127002, EntityType.GADGET, 2091 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2053(context, evt)
	if 2002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"p5_rotate"为1
	if ScriptLib.GetGroupVariableValue(context, "p5_rotate") ~= 1 then
			return false
	end
	
	-- 判断变量"platform6"为1
	if ScriptLib.GetGroupVariableValue(context, "platform6") ~= 1 then
			return false
	end
	
	-- 判断变量"levelFinished"为0
	if ScriptLib.GetGroupVariableValue(context, "levelFinished") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2053(context, evt)
	-- 将configid为 2067 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2067, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 2068 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2068, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220127002, 2002, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_2054(context, evt)
	-- 判断是gadgetid 2002 option_id 31
	if 2002 ~= evt.param1 then
		return false	
	end
	
	if 31 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"p5_rotate"为1
	if ScriptLib.GetGroupVariableValue(context, "p5_rotate") ~= 1 then
			return false
	end
	
	-- 判断变量"platform6"为1
	if ScriptLib.GetGroupVariableValue(context, "platform6") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_2054(context, evt)
	ScriptLib.DelWorktopOptionByGroupId(context, 220127002, 2002, 31) ScriptLib.CreateGadget(context, { config_id = 2070 }) LF_Rotate(context,2041,202)
	
	ScriptLib.SetGroupVariableValue(context, "rotate_c3", 1)
	ScriptLib.SetGadgetStateByConfigId(context, 2068, 301)
	ScriptLib.SetGadgetStateByConfigId(context, 2067, 302)
	ScriptLib.SetGadgetStateByConfigId(context, 2068, 302)
	ScriptLib.SetGadgetStateByConfigId(context, 2071, 302)
	ScriptLib.SetGroupGadgetStateByConfigId(context, 220127003, 3002, 0)
	ScriptLib.SetGroupGadgetStateByConfigId(context, 220127003, 3004, 0) 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2059(context, evt)
	if evt.param1 ~= 2059 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2061(context, evt)
	if evt.param1 ~= 2061 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_2062(context, evt)
	-- 判断是gadgetid 2001 option_id 31
	if 2001 ~= evt.param1 then
		return false	
	end
	
	if 31 ~= evt.param2 then
		return false
	end
	
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 220127002, 2066) then
		return false
	end
	
	-- 判断变量"p3_rotate"为1
	if ScriptLib.GetGroupVariableValue(context, "p3_rotate") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_2062(context, evt)
	LF_Rotate(context,2040,203)
	ScriptLib.DelWorktopOptionByGroupId(context, 220127002, 2001, 31)
	ScriptLib.SetGadgetStateByConfigId(context, 2066, 0)
	ScriptLib.SetGadgetStateByConfigId(context, 2067, 301)
	ScriptLib.SetGadgetStateByConfigId(context, 2067, 302)
	ScriptLib.SetGadgetStateByConfigId(context, 2068, 301)
	ScriptLib.SetGroupGadgetStateByConfigId(context, 220127003, 3001, 0)
	ScriptLib.SetGroupGadgetStateByConfigId(context, 220127003, 3002, 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_2063(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"platform1"为2
	if ScriptLib.GetGroupVariableValue(context, "platform1") ~= 2 then
			return false
	end
	
	-- 判断变量"p3_rotate"为1
	if ScriptLib.GetGroupVariableValue(context, "p3_rotate") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_2063(context, evt)
	ScriptLib.DelWorktopOptionByGroupId(context, 220127002, 2002, 31) 
	ScriptLib.SetGadgetStateByConfigId(context, 2067, 202) 
	ScriptLib.SetGadgetStateByConfigId(context, 2066, GadgetState.GearStart) 
	ScriptLib.SetGroupGadgetStateByConfigId(context, 220127003, 3001, GadgetState.GearStart) 
	
	ScriptLib.SetGadgetStateByConfigId(context, 2002, GadgetState.GearStop)
	
	ScriptLib.CreateGadget(context, { config_id = 2091 })
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_2064(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"platform1"为1
	if ScriptLib.GetGroupVariableValue(context, "platform1") ~= 1 then
			return false
	end
	
	-- 判断变量"p3_rotate"为1
	if ScriptLib.GetGroupVariableValue(context, "p3_rotate") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_2064(context, evt)
	-- 将configid为 2066 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2066, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 2067 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2067, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 改变指定group组220127003中， configid为3001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220127003, 3001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组220127003中， configid为3002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220127003, 3002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 将configid为 2067 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2067, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_2065(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"_gearOpen"为1
	if ScriptLib.GetGroupVariableValue(context, "_gearOpen") ~= 1 then
			return false
	end
	
	-- 判断变量"platform1"为1
	if ScriptLib.GetGroupVariableValue(context, "platform1") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_2065(context, evt)
	-- 将configid为 2002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_2072(context, evt)
	-- 判断是gadgetid 2001 option_id 31
	if 2001 ~= evt.param1 then
		return false	
	end
	
	if 31 ~= evt.param2 then
		return false
	end
	
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 220127002, 2066) then
		return false
	end
	
	-- 判断变量"p3_rotate"为0
	if ScriptLib.GetGroupVariableValue(context, "p3_rotate") ~= 0 then
			return false
	end
	
	-- 判断变量"guide2Create"为0
	if ScriptLib.GetGroupVariableValue(context, "guide2Create") ~= 0 then
			return false
	end
	
	-- 判断变量"addGuide"为0
	if ScriptLib.GetGroupVariableValueByGroup(context, "addGuide", 220127008) ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_2072(context, evt)
	LF_Rotate(context,2040,203)
	ScriptLib.DelWorktopOptionByGroupId(context, 220127002, 2001, 31)
	ScriptLib.SetGadgetStateByConfigId(context, 2066, 0)
	ScriptLib.SetGadgetStateByConfigId(context, 2067, 301)
	ScriptLib.SetGadgetStateByConfigId(context, 2067, 302)
	ScriptLib.SetGroupGadgetStateByConfigId(context, 220127003, 3001, 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_2073(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"platform6"为0
	if ScriptLib.GetGroupVariableValue(context, "platform6") ~= 0 then
			return false
	end
	
	-- 判断变量"isClear"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "isClear", 220127011) ~= 1 then
			return false
	end
	
	-- 判断变量"p5_rotate"为1
	if ScriptLib.GetGroupVariableValue(context, "p5_rotate") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_2073(context, evt)
	-- 将configid为 2070 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2070, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 2070 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2070, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 2067 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2067, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 改变指定group组220127003中， configid为3002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220127003, 3002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组220127003中， configid为3003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220127003, 3003, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220127002, EntityType.GADGET, 2068 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 将本组内变量名为 "p3_rotate" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "p3_rotate", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 2069 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2069, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_2074(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"platform6"为1
	if ScriptLib.GetGroupVariableValue(context, "platform6") ~= 1 then
			return false
	end
	
	-- 判断变量"isClear"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "isClear", 220127011) ~= 1 then
			return false
	end
	
	-- 判断变量"p5_rotate"为1
	if ScriptLib.GetGroupVariableValue(context, "p5_rotate") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_2074(context, evt)
	-- 将configid为 2068 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2068, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 2067 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2067, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 改变指定group组220127003中， configid为3002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220127003, 3002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220127002, EntityType.GADGET, 2070 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 将configid为 2068 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2068, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "p3_rotate" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "p3_rotate", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 2068 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2068, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 改变指定group组220127003中， configid为3004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220127003, 3004, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 将configid为 2071 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2071, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_2075(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220127002, 2001, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2076(context, evt)
	if 2041 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	-- 判断变量"platform3"为0
	if ScriptLib.GetGroupVariableValue(context, "platform3") ~= 0 then
			return false
	end
	
	-- 判断变量"rotate_c1"为1
	if ScriptLib.GetGroupVariableValue(context, "rotate_c1") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2076(context, evt)
	-- 针对当前group内变量名为 "platform2" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "platform2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 延迟1秒后,向groupId为：220127002的对象,请求一次调用,并将string参数："time2" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220127002, "time2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "rotate_c1" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "rotate_c1", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_2077(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220127002, 2002, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_2078(context, evt)
	-- 判断是gadgetid 2002 option_id 31
	if 2002 ~= evt.param1 then
		return false	
	end
	
	if 31 ~= evt.param2 then
		return false
	end
	
	
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 220127002, 2067) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_2078(context, evt)
	LF_Rotate(context,2041,202)
	ScriptLib.SetGroupVariableValue(context, "rotate_c1", 1)
	
	ScriptLib.DelWorktopOptionByGroupId(context, 220127002, 2002, 31)
	ScriptLib.SetGadgetStateByConfigId(context, 2070, 303)
	ScriptLib.SetGadgetStateByConfigId(context, 2070, 302) ScriptLib.SetGadgetStateByConfigId(context, 2067, 302)
	ScriptLib.SetGadgetStateByConfigId(context, 2069, 301)
	ScriptLib.SetGroupGadgetStateByConfigId(context, 220127003, 3002, GadgetState.Default)
	ScriptLib.SetGroupGadgetStateByConfigId(context, 220127003, 3003, GadgetState.Default)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_2079(context, evt)
	-- 判断是gadgetid 2010 option_id 31
	if 2010 ~= evt.param1 then
		return false	
	end
	
	if 31 ~= evt.param2 then
		return false
	end
	
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 220127002, 2069) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_2079(context, evt)
	LF_Rotate(context,2041,203)
	
	ScriptLib.SetGroupVariableValue(context, "rotate_c2", 1)
	ScriptLib.DelWorktopOptionByGroupId(context, 220127002, 2010, 31)
	ScriptLib.SetGadgetStateByConfigId(context, 2069, 0)
	ScriptLib.SetGadgetStateByConfigId(context, 2070, 0)
	ScriptLib.SetGroupGadgetStateByConfigId(context, 220127003, 3002, GadgetState.Default)
	ScriptLib.SetGroupGadgetStateByConfigId(context, 220127003, 3003, GadgetState.Default)
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_2080(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220127002, 2010, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2081(context, evt)
	if 2041 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	-- 判断变量"rotate_c2"为1
	if ScriptLib.GetGroupVariableValue(context, "rotate_c2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2081(context, evt)
	-- 针对当前group内变量名为 "platform3" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "platform3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 延迟1秒后,向groupId为：220127002的对象,请求一次调用,并将string参数："time3" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220127002, "time3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "rotate_c2" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "rotate_c2", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_2082(context, evt)
	-- 判断是gadgetid 2014 option_id 31
	if 2014 ~= evt.param1 then
		return false	
	end
	
	if 31 ~= evt.param2 then
		return false
	end
	
	
	if 302 ~= ScriptLib.GetGadgetStateByConfigId(context, 220127002, 2068) then
		return false
	end
	
	-- 判断变量"default"为1
	if ScriptLib.GetGroupVariableValue(context, "default") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_2082(context, evt)
	LF_Rotate(context,2043,201)
	ScriptLib.DelWorktopOptionByGroupId(context, 220127002, 2014, 31)
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_2083(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220127002, 2014, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_2084(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220127002, 2)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220127002, 3)
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220127002, 4)
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220127002, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_2085(context, evt)
	-- 判断是gadgetid 2002 option_id 31
	if 2002 ~= evt.param1 then
		return false	
	end
	
	if 31 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"platform6"为1
	if ScriptLib.GetGroupVariableValue(context, "platform6") ~= 1 then
			return false
	end
	
	-- 判断变量"p5_rotate"为0
	if ScriptLib.GetGroupVariableValue(context, "p5_rotate") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_2085(context, evt)
	ScriptLib.DelWorktopOptionByGroupId(context, 220127002, 2002, 31) ScriptLib.CreateGadget(context, { config_id = 2070 }) LF_Rotate(context,2041,202)
	
	ScriptLib.SetGroupVariableValue(context, "rotate_c3", 1)
	ScriptLib.SetGadgetStateByConfigId(context, 2068, 301)
	ScriptLib.SetGadgetStateByConfigId(context, 2067, 302)
	ScriptLib.SetGroupGadgetStateByConfigId(context, 220127003, 3002, 0) 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_2087(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"platform6"为1
	if ScriptLib.GetGroupVariableValue(context, "platform6") ~= 1 then
			return false
	end
	
	-- 判断变量"isClear"为0
	if ScriptLib.GetGroupVariableValueByGroup(context, "isClear", 220127011) ~= 0 then
			return false
	end
	
	-- 判断变量"p5_rotate"为0
	if ScriptLib.GetGroupVariableValue(context, "p5_rotate") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_2087(context, evt)
	-- 将configid为 2068 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2068, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 2067 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2067, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 改变指定group组220127003中， configid为3002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220127003, 3002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220127002, EntityType.GADGET, 2070 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 将本组内变量名为 "gameState" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "gameState", 1, 220127011) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "p3_rotate" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "p3_rotate", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_2089(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"platform6"为0
	if ScriptLib.GetGroupVariableValue(context, "platform6") ~= 0 then
			return false
	end
	
	-- 判断变量"isClear"为0
	if ScriptLib.GetGroupVariableValueByGroup(context, "isClear", 220127011) ~= 0 then
			return false
	end
	
	-- 判断变量"p5_rotate"为0
	if ScriptLib.GetGroupVariableValue(context, "p5_rotate") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_2089(context, evt)
	-- 将configid为 2070 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2070, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 2070 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2070, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 2067 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2067, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "gameState" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "gameState", 0, 220127011) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 改变指定group组220127003中， configid为3002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220127003, 3002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组220127003中， configid为3003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220127003, 3003, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220127002, EntityType.GADGET, 2068 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 将本组内变量名为 "p3_rotate" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "p3_rotate", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 2069 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2069, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_2095(context, evt)
	-- 判断是gadgetid 2001 option_id 31
	if 2001 ~= evt.param1 then
		return false	
	end
	
	if 31 ~= evt.param2 then
		return false
	end
	
	
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 220127002, 2066) then
		return false
	end
	
	-- 判断变量"p3_rotate"为1
	if ScriptLib.GetGroupVariableValue(context, "p3_rotate") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_2095(context, evt)
	LF_Rotate(context,2040,203)
	
	ScriptLib.DelWorktopOptionByGroupId(context, 220127002, 2001, 31)
	ScriptLib.SetGroupGadgetStateByConfigId(context, 220127003, 3002, 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_2096(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"platform1"为1
	if ScriptLib.GetGroupVariableValue(context, "platform1") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_2096(context, evt)
	-- 将configid为 2002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220127002, EntityType.GADGET, 2091 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2097(context, evt)
	if 2002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"p5_rotate"为0
	if ScriptLib.GetGroupVariableValue(context, "p5_rotate") ~= 0 then
			return false
	end
	
	-- 判断变量"platform6"为1
	if ScriptLib.GetGroupVariableValue(context, "platform6") ~= 1 then
			return false
	end
	
	-- 判断变量"levelFinished"为0
	if ScriptLib.GetGroupVariableValue(context, "levelFinished") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2097(context, evt)
	-- 将configid为 2067 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2067, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 2068 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2068, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220127002, 2002, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2098(context, evt)
	if 2002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"p5_rotate"为0
	if ScriptLib.GetGroupVariableValue(context, "p5_rotate") ~= 0 then
			return false
	end
	
	-- 判断变量"platform6"为0
	if ScriptLib.GetGroupVariableValue(context, "platform6") ~= 0 then
			return false
	end
	
	-- 判断变量"levelFinished"为0
	if ScriptLib.GetGroupVariableValue(context, "levelFinished") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2098(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220127002, 2002, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_2100(context, evt)
	-- 判断是gadgetid 2001 option_id 31
	if 2001 ~= evt.param1 then
		return false	
	end
	
	if 31 ~= evt.param2 then
		return false
	end
	
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 220127002, 2066) then
		return false
	end
	
	-- 判断变量"p3_rotate"为0
	if ScriptLib.GetGroupVariableValue(context, "p3_rotate") ~= 0 then
			return false
	end
	
	-- 判断变量"addGuide"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "addGuide", 220127008) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_2100(context, evt)
	LF_Rotate(context,2040,203)
	ScriptLib.DelWorktopOptionByGroupId(context, 220127002, 2001, 31)
	ScriptLib.SetGadgetStateByConfigId(context, 2066, 0)
	ScriptLib.SetGadgetStateByConfigId(context, 2067, 301)
	ScriptLib.SetGadgetStateByConfigId(context, 2067, 302)
	ScriptLib.SetGroupGadgetStateByConfigId(context, 220127003, 3001, 0)
	ScriptLib.RemoveEntityByConfigId(context, 220127002, EntityType.GADGET, 2016 )
	ScriptLib.RemoveEntityByConfigId(context, 220127008, EntityType.GADGET, 8012 )
	ScriptLib.SetGroupVariableValueByGroup(context, "addGuide", 0, 220127008)
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_2102(context, evt)
	if 2017 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_2102(context, evt)
	-- 将本组内变量名为 "guide2Create" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "guide2Create", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_2103(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 220127002, 2014) then
		return false
	end
	
	-- 判断变量"platform6"为0
	if ScriptLib.GetGroupVariableValue(context, "platform6") ~= 0 then
			return false
	end
	
	-- 判断变量"gearOpen4"为1
	if ScriptLib.GetGroupVariableValue(context, "gearOpen4") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_2103(context, evt)
	-- 将configid为 2014 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2014, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为2093的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2093 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除指定group： 220127002 ；指定config：2014；物件身上指定option：31；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220127002, 2014, 31) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_2104(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 220127002, 2014) then
		return false
	end
	
	-- 判断变量"platform6"为1
	if ScriptLib.GetGroupVariableValue(context, "platform6") ~= 1 then
			return false
	end
	
	-- 判断变量"gearOpen4"为1
	if ScriptLib.GetGroupVariableValue(context, "gearOpen4") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_2104(context, evt)
	-- 将configid为 2014 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2014, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_2105(context, evt)
	-- 判断是gadgetid 2001 option_id 31
	if 2001 ~= evt.param1 then
		return false	
	end
	
	if 31 ~= evt.param2 then
		return false
	end
	
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 220127002, 2066) then
		return false
	end
	
	-- 判断变量"p3_rotate"为0
	if ScriptLib.GetGroupVariableValue(context, "p3_rotate") ~= 0 then
			return false
	end
	
	-- 判断变量"guide2Create"为1
	if ScriptLib.GetGroupVariableValue(context, "guide2Create") ~= 1 then
			return false
	end
	
	-- 判断变量"addGuide"为0
	if ScriptLib.GetGroupVariableValueByGroup(context, "addGuide", 220127008) ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_2105(context, evt)
	LF_Rotate(context,2040,203)
	ScriptLib.DelWorktopOptionByGroupId(context, 220127002, 2001, 31)
	ScriptLib.SetGadgetStateByConfigId(context, 2066, 0)
	ScriptLib.SetGadgetStateByConfigId(context, 2067, 301)
	ScriptLib.SetGadgetStateByConfigId(context, 2067, 302)
	ScriptLib.SetGroupGadgetStateByConfigId(context, 220127003, 3001, 0)
	ScriptLib.RemoveEntityByConfigId(context, 220127002, EntityType.GADGET, 2017 )
	ScriptLib.SetGroupVariableValueByGroup(context, "guide2Create", 0, 220127002)
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2106(context, evt)
	if 2002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"p5_rotate"为1
	if ScriptLib.GetGroupVariableValue(context, "p5_rotate") ~= 1 then
			return false
	end
	
	-- 判断变量"platform6"为0
	if ScriptLib.GetGroupVariableValue(context, "platform6") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2106(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220127002, 2002, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_2107(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"levelFinished"为1
	if ScriptLib.GetGroupVariableValue(context, "levelFinished") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_2107(context, evt)
	-- 将configid为 2071 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2071, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 220127002 ；指定config：2014；物件身上指定option：31；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220127002, 2014, 31) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 220127002 ；指定config：2002；物件身上指定option：31；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220127002, 2002, 31) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 220127002 ；指定config：2001；物件身上指定option：31；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220127002, 2001, 31) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 220127002 ；指定config：2010；物件身上指定option：31；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220127002, 2010, 31) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 2001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 2002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 2010 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2010, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 2014 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2014, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V2_7/CYDungeon_CheckPoint_Controller"