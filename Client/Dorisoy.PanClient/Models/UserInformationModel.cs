﻿using Dorisoy.PanClient.Common;

namespace Dorisoy.PanClient.Models
{
    public class UserInformationModel
    {
        public ClientMode ClientMode { get; set; }

        public Guid UserId { get; set; }

        public string FullName { get; set; }

        public bool IsAdmin { get; set; }
    }
}
