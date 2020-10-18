.class abstract Lcom/google/android/gms/internal/zzfkq$zzd;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzfkq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "zzd"
.end annotation


# instance fields
.field zzptw:Lsun/misc/Unsafe;


# direct methods
.method constructor <init>(Lsun/misc/Unsafe;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfkq$zzd;->zzptw:Lsun/misc/Unsafe;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;J)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfkq$zzd;->zzptw:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p1

    return p1
.end method

.method public abstract zze(Ljava/lang/Object;JB)V
.end method

.method public abstract zzf(Ljava/lang/Object;J)B
.end method
