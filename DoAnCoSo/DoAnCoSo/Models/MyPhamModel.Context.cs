﻿//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DoAnCoSo.Models
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class MyPhamEntities : DbContext
    {
        public MyPhamEntities()
            : base("name=MyPhamEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public DbSet<Banner> Banners { get; set; }
        public DbSet<ChuyenMuc> ChuyenMucs { get; set; }
        public DbSet<SanPham> SanPhams { get; set; }
        public DbSet<Slideshow> Slideshows { get; set; }
        public DbSet<sysdiagram> sysdiagrams { get; set; }
        public DbSet<ThanhVien> ThanhViens { get; set; }
        public DbSet<ThuongHieu> ThuongHieux { get; set; }
        public DbSet<TinTuc> TinTucs { get; set; }
    }
}