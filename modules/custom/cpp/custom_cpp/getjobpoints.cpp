#include "common/logging.h"
#include "common/sql.h"
#include "lua/lua_baseentity.h"
#include "lua/luautils.h"
#include "map/utils/charutils.h"
#include "map/utils/moduleutils.h"
#include "map/job_points.h"
/************************************************************************
 *  Function: getJobPoints()
 *  Purpose : gets a specific jobs, job points.
 *  Example : player:getJobPoints()
 *  Notes   :
 ************************************************************************/
class GetJP : public CPPModule
{
    void OnInit() override // Called just before the server is ready to run.
    {
            lua["CBaseEntity"]["getJobPoints"] = [](CLuaBaseEntity* PLuaBaseEntity, uint8 jobID) -> uint16
            {
                TracyZoneScoped;
                CBaseEntity* PEntity = PLuaBaseEntity->GetBaseEntity();
                auto*       PChar = static_cast<CCharEntity*>(PEntity);
                const char* Query = "SELECT job_points FROM char_job_points WHERE charid = %u AND jobid = %u";
                int ret =  _sql->Query(Query, PChar->id, jobID);
                if (ret != SQL_ERROR && _sql->NextRow() == SQL_SUCCESS)
                {
                    return _sql->GetIntData(0);
                }
                return 0;
            };
    }
};
// You must call this to register your module with the program!
REGISTER_CPP_MODULE(GetJP);