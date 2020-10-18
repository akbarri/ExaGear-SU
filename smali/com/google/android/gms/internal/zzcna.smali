.class final synthetic Lcom/google/android/gms/internal/zzcna;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzjrv:Lcom/google/android/gms/internal/zzcmy;

.field private final zzjry:Lcom/google/android/gms/internal/zzcjj;

.field private final zzjrz:Landroid/app/job/JobParameters;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcmy;Lcom/google/android/gms/internal/zzcjj;Landroid/app/job/JobParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcna;->zzjrv:Lcom/google/android/gms/internal/zzcmy;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcna;->zzjry:Lcom/google/android/gms/internal/zzcjj;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcna;->zzjrz:Landroid/app/job/JobParameters;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcna;->zzjrv:Lcom/google/android/gms/internal/zzcmy;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcna;->zzjry:Lcom/google/android/gms/internal/zzcjj;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcna;->zzjrz:Landroid/app/job/JobParameters;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcmy;->zza(Lcom/google/android/gms/internal/zzcjj;Landroid/app/job/JobParameters;)V

    return-void
.end method
