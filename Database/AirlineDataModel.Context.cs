﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Database
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class DbAirlineEntities : DbContext
    {
        public DbAirlineEntities()
            : base("name=DbAirlineEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<tbBooking> tbBookings { get; set; }
        public virtual DbSet<tbContact> tbContacts { get; set; }
        public virtual DbSet<tbPlane> tbPlanes { get; set; }
    }
}