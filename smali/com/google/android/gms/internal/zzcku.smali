.class final Lcom/google/android/gms/internal/zzcku;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "Lcom/google/android/gms/internal/zzcnn;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic zzjpj:Lcom/google/android/gms/internal/zzcif;

.field private synthetic zzjpk:Lcom/google/android/gms/internal/zzcko;

.field private synthetic zzjpm:Ljava/lang/String;

.field private synthetic zzjpn:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcko;Lcom/google/android/gms/internal/zzcif;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcku;->zzjpk:Lcom/google/android/gms/internal/zzcko;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcku;->zzjpj:Lcom/google/android/gms/internal/zzcif;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcku;->zzjpm:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcku;->zzjpn:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcku;->zzjpk:Lcom/google/android/gms/internal/zzcko;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcko;->zza(Lcom/google/android/gms/internal/zzcko;)Lcom/google/android/gms/internal/zzckj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzckj;->zzbcc()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcku;->zzjpk:Lcom/google/android/gms/internal/zzcko;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcko;->zza(Lcom/google/android/gms/internal/zzcko;)Lcom/google/android/gms/internal/zzckj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzckj;->zzayj()Lcom/google/android/gms/internal/zzcil;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcku;->zzjpj:Lcom/google/android/gms/internal/zzcif;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzcif;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcku;->zzjpm:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcku;->zzjpn:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzcil;->zzh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
