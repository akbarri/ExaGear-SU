.class public final Lcom/google/android/gms/internal/zzfkk$zza;
.super Lcom/google/android/gms/internal/zzfhu$zza;

# interfaces
.implements Lcom/google/android/gms/internal/zzfje;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzfkk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzfhu$zza<",
        "Lcom/google/android/gms/internal/zzfkk;",
        "Lcom/google/android/gms/internal/zzfkk$zza;",
        ">;",
        "Lcom/google/android/gms/internal/zzfje;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zzfkk;->zzdby()Lcom/google/android/gms/internal/zzfkk;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzfhu$zza;-><init>(Lcom/google/android/gms/internal/zzfhu;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzfkl;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzfkk$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzdh(J)Lcom/google/android/gms/internal/zzfkk$zza;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzfhu$zza;->zzczv()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfkk$zza;->zzppl:Lcom/google/android/gms/internal/zzfhu;

    check-cast v0, Lcom/google/android/gms/internal/zzfkk;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/zzfkk;->zza(Lcom/google/android/gms/internal/zzfkk;J)V

    return-object p0
.end method

.method public final zzmt(I)Lcom/google/android/gms/internal/zzfkk$zza;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzfhu$zza;->zzczv()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfkk$zza;->zzppl:Lcom/google/android/gms/internal/zzfhu;

    check-cast v0, Lcom/google/android/gms/internal/zzfkk;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzfkk;->zza(Lcom/google/android/gms/internal/zzfkk;I)V

    return-object p0
.end method
