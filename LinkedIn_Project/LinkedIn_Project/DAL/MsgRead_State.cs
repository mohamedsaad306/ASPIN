//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace LinkedIn_Project.DAL
{
    using System;
    using System.Collections.Generic;
    
    public partial class MsgRead_State
    {
        public int Fk_MessageId { get; set; }
        public System.Guid Fk_UserId { get; set; }
        public int Fk_MsgThreadId { get; set; }
        public bool IsRead { get; set; }
        public Nullable<System.DateTime> CreationDate { get; set; }
        public Nullable<System.DateTime> ModifiedDate { get; set; }
        public bool IsDeleted { get; set; }
    
        public virtual aspnet_Users aspnet_Users { get; set; }
        public virtual Message Message { get; set; }
        public virtual MessageThread MessageThread { get; set; }
    }
}
