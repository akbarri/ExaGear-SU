.class final Lcom/google/android/gms/internal/zzclt;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic val$name:Ljava/lang/String;

.field private synthetic zzjpm:Ljava/lang/String;

.field private synthetic zzjpy:Lcom/google/android/gms/internal/zzclk;

.field private synthetic zzjqd:J

.field private synthetic zzjqi:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzclk;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzclt;->zzjpy:Lcom/google/android/gms/internal/zzclk;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzclt;->zzjpm:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzclt;->val$name:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzclt;->zzjqi:Ljava/lang/Object;

    iput-wide p5, p0, Lcom/google/android/gms/internal/zzclt;->zzjqd:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzclt;->zzjpy:Lcom/google/android/gms/internal/zzclk;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzclt;->zzjpm:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzclt;->val$name:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzclt;->zzjqi:Ljava/lang/Object;

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzclt;->zzjqd:J

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/zzclk;->zza(Lcom/google/android/gms/internal/zzclk;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    return-void
.end method
