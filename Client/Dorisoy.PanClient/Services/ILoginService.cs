﻿using Dorisoy.PanClient.Common;

namespace Dorisoy.PanClient.Services
{
    public interface ILoginService
    {
        Task<ServiceResult<UserInformationModel>> LoginAsync(ClientMode mode, string username, string password);
    }
}
