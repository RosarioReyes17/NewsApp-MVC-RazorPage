using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;

#nullable disable

namespace NewsAppRazorPage
{
    public partial class NewsAppContext : DbContext
    {
        public NewsAppContext()
        {
        }

        public NewsAppContext(DbContextOptions<NewsAppContext> options)
            : base(options)
        {
        }

        public virtual DbSet<Articulo> Articulos { get; set; }
        public virtual DbSet<Categoria> Categorias { get; set; }
        public virtual DbSet<Fuente> Fuentes { get; set; }
        public virtual DbSet<Paise> Paises { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
                optionsBuilder.UseSqlServer("Data Source=DESKTOP-ANTHONY;Initial Catalog=NewsApp;Integrated Security=True");
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.HasAnnotation("Relational:Collation", "Modern_Spanish_CI_AS");

            modelBuilder.Entity<Articulo>(entity =>
            {
                entity.HasKey(e => e.IdArticulo)
                    .HasName("pk_IdArticulo");

                entity.ToTable("ARTICULOS");

                entity.Property(e => e.ArticuloUrl)
                    .IsUnicode(false)
                    .HasColumnName("ArticuloURL");

                entity.Property(e => e.Autor)
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.Property(e => e.Contenido).IsUnicode(false);

                entity.Property(e => e.Descripcion).IsUnicode(false);

                entity.Property(e => e.FechaPublicacion).HasColumnType("date");

                entity.Property(e => e.ImagenUrl)
                    .IsUnicode(false)
                    .HasColumnName("ImagenURL");

                entity.Property(e => e.Titulo).IsUnicode(false);

                entity.HasOne(d => d.IdCategoriaNavigation)
                    .WithMany(p => p.Articulos)
                    .HasForeignKey(d => d.IdCategoria)
                    .HasConstraintName("Fk_IdCategoria");

                entity.HasOne(d => d.IdFuenteNavigation)
                    .WithMany(p => p.Articulos)
                    .HasForeignKey(d => d.IdFuente)
                    .HasConstraintName("Fk_IdFuente");

                entity.HasOne(d => d.IdPaisNavigation)
                    .WithMany(p => p.Articulos)
                    .HasForeignKey(d => d.IdPais)
                    .HasConstraintName("Fk_IdPais");
            });

            modelBuilder.Entity<Categoria>(entity =>
            {
                entity.HasKey(e => e.IdCategoria)
                    .HasName("pk_IdCategoria");

                entity.ToTable("CATEGORIAS");

                entity.Property(e => e.NombreCategoria)
                    .HasMaxLength(50)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<Fuente>(entity =>
            {
                entity.HasKey(e => e.IdFuente)
                    .HasName("pk_IdFuente");

                entity.ToTable("FUENTES");

                entity.Property(e => e.NombreFuente)
                    .HasMaxLength(50)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<Paise>(entity =>
            {
                entity.HasKey(e => e.IdPais)
                    .HasName("pk_IdPais");

                entity.ToTable("PAISES");

                entity.Property(e => e.NombrePais)
                    .HasMaxLength(50)
                    .IsUnicode(false);
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
