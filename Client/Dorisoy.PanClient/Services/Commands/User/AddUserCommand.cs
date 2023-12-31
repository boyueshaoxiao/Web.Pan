﻿namespace Dorisoy.PanClient.Commands;

public class AddUserCommand 
{
    public Guid DepartmentId { get; set; }
    public string UserName { get; set; }
    public string Email { get; set; }
    public string RaleName { get; set; }
    public string Sex { get; set; }
    public string Password { get; set; }
    public string PhoneNumber { get; set; }
    public bool IsActive { get; set; }
    public string Address { get; set; }
    public bool IsAdmin { get; set; }
    public UserClaimDto UserClaims { get; set; }
}


public class UpdateUserCommand 
{
    public Guid Id { get; set; }
    public Guid DepartmentId { get; set; }
    public string Email { get; set; }
    public string RaleName { get; set; }
    public string PhoneNumber { get; set; }
    public bool IsActive { get; set; }
    public string Address { get; set; }
    public bool IsAdmin { get; set; }
    public UserClaimDto UserClaims { get; set; }
}
