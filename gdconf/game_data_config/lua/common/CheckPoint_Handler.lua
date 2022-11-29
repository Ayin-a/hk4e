--[[======================================
||	filename:      CheckPoint_Handler
||	owner:          weiwei.sun
||	description:    通用复活点控制器
||	LogName:        CheckPoint_Handler
||	Protection:     [Protection]
=======================================]]

--需求misc
--[[
    --key填regionid
    --value为pointid
    local Check_Point_List = {
        [1] = 1,
        [1] = 1,
        [1] = 1,
    }
]]

local temp_Tirgger = {
	{event = EventType.EVENT_ENTER_REGION, source = "", action = "action_EVENT_ENTER_REGION"},
}
function action_EVENT_ENTER_REGION(context,evt)
    ScriptLib.PrintContextLog(context,"##[CheckPoint_Handler] action_EVENT_ENTER_REGION:evt.param1="..evt.param1)
    for k , v in pairs(Check_Point_List) do
        if k == evt.param1 then 
            ScriptLib.PrintContextLog(context,"##[CheckPoint_Handler] action_EVENT_ENTER_REGION: ActivateDungeonCheckPoint = "..v)
            ScriptLib.ActivateDungeonCheckPoint(context,v)
        end
    end
    return 0
end
--初始化
function Initialize()
	--加触发器
    if temp_Tirgger ~= nil then 
        for k,v in pairs(temp_Tirgger) do
            v.name = "temp_Trigger_"..k
            v.config_id = 40000000 + k
            v.trigger_count = 0
            v.condition = ""
            table.insert(triggers, v)
            table.insert(suites[init_config.suite].triggers, v.name)
        end
    end
	--加变量
    if temp_Variables ~= nil then 
        for k,v in pairs(temp_Variables) do
            table.insert(variables,v)
        end
    end

	return 0
end
Initialize()