.class public final Lcom/google/android/gms/internal/zzfhw$zza;
.super Lcom/google/android/gms/internal/zzfhu$zza;

# interfaces
.implements Lcom/google/android/gms/internal/zzfje;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzfhw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzfhu$zza<",
        "Lcom/google/android/gms/internal/zzfhw;",
        "Lcom/google/android/gms/internal/zzfhw$zza;",
        ">;",
        "Lcom/google/android/gms/internal/zzfje;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zzfhw;->zzdac()Lcom/google/android/gms/internal/zzfhw;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzfhu$zza;-><init>(Lcom/google/android/gms/internal/zzfhu;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzfhx;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzfhw$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzmj(I)Lcom/google/android/gms/internal/zzfhw$zza;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzfhu$zza;->zzczv()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfhw$zza;->zzppl:Lcom/google/android/gms/internal/zzfhu;

    check-cast v0, Lcom/google/android/gms/internal/zzfhw;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzfhw;->zza(Lcom/google/android/gms/internal/zzfhw;I)V

    return-object p0
.end method
