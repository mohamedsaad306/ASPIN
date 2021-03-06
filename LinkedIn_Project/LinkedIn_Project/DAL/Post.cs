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
    
    public partial class Post
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Post()
        {
            this.Group_Post = new HashSet<Group_Post>();
            this.Post_Comment = new HashSet<Post_Comment>();
            this.Post_Like = new HashSet<Post_Like>();
            this.Post_Share = new HashSet<Post_Share>();
        }
    
        public int Id { get; set; }
        public System.Guid Fk_UserId { get; set; }
        public string Text { get; set; }
        public string Image { get; set; }
        public int Fk_PrivacyId { get; set; }
        public Nullable<System.DateTime> CreatedAt { get; set; }
        public Nullable<int> NumLike { get; set; }
        public Nullable<int> NumShare { get; set; }
        public Nullable<int> NumComment { get; set; }
        public bool IsInGroup { get; set; }
        public Nullable<System.DateTime> CreationDate { get; set; }
        public Nullable<System.DateTime> ModifiedDate { get; set; }
        public bool IsDeleted { get; set; }
    
        public virtual aspnet_Users aspnet_Users { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Group_Post> Group_Post { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Post_Comment> Post_Comment { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Post_Like> Post_Like { get; set; }
        public virtual Privacy Privacy { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Post_Share> Post_Share { get; set; }
    }
}
