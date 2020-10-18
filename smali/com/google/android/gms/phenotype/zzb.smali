.class final Lcom/google/android/gms/phenotype/zzb;
.super Landroid/database/ContentObserver;


# instance fields
.field private synthetic zzkfy:Lcom/google/android/gms/phenotype/zza;


# direct methods
.method constructor <init>(Lcom/google/android/gms/phenotype/zza;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/phenotype/zzb;->zzkfy:Lcom/google/android/gms/phenotype/zza;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/phenotype/zzb;->zzkfy:Lcom/google/android/gms/phenotype/zza;

    invoke-virtual {p1}, Lcom/google/android/gms/phenotype/zza;->zzbef()V

    return-void
.end method
