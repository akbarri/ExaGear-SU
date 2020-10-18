.class final Lcom/google/android/gms/internal/zzcnn;
.super Ljava/lang/Object;


# instance fields
.field final name:Ljava/lang/String;

.field final value:Ljava/lang/Object;

.field final zzcm:Ljava/lang/String;

.field final zzjgm:Ljava/lang/String;

.field final zzjsi:J


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->zzgv(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzbq;->zzgv(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p6}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcnn;->zzcm:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcnn;->zzjgm:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcnn;->name:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/gms/internal/zzcnn;->zzjsi:J

    iput-object p6, p0, Lcom/google/android/gms/internal/zzcnn;->value:Ljava/lang/Object;

    return-void
.end method
