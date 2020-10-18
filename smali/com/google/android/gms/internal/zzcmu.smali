.class final Lcom/google/android/gms/internal/zzcmu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic val$name:Landroid/content/ComponentName;

.field private synthetic zzjrs:Lcom/google/android/gms/internal/zzcms;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcms;Landroid/content/ComponentName;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcmu;->zzjrs:Lcom/google/android/gms/internal/zzcms;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcmu;->val$name:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcmu;->zzjrs:Lcom/google/android/gms/internal/zzcms;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcms;->zzjri:Lcom/google/android/gms/internal/zzcme;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcmu;->val$name:Landroid/content/ComponentName;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzcme;->zza(Lcom/google/android/gms/internal/zzcme;Landroid/content/ComponentName;)V

    return-void
.end method
