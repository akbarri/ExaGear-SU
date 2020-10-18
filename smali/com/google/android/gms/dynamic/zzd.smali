.class final Lcom/google/android/gms/dynamic/zzd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/dynamic/zzi;


# instance fields
.field private synthetic zzaik:Landroid/os/Bundle;

.field private synthetic zzhct:Lcom/google/android/gms/dynamic/zza;


# direct methods
.method constructor <init>(Lcom/google/android/gms/dynamic/zza;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/dynamic/zzd;->zzhct:Lcom/google/android/gms/dynamic/zza;

    iput-object p2, p0, Lcom/google/android/gms/dynamic/zzd;->zzaik:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getState()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final zzb(Lcom/google/android/gms/dynamic/LifecycleDelegate;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/dynamic/zzd;->zzhct:Lcom/google/android/gms/dynamic/zza;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zza;->zzb(Lcom/google/android/gms/dynamic/zza;)Lcom/google/android/gms/dynamic/LifecycleDelegate;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/dynamic/zzd;->zzaik:Landroid/os/Bundle;

    invoke-interface {p1, v0}, Lcom/google/android/gms/dynamic/LifecycleDelegate;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
