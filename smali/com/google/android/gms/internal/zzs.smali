.class final Lcom/google/android/gms/internal/zzs;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzas:Ljava/lang/String;

.field private synthetic zzat:J

.field private synthetic zzau:Lcom/google/android/gms/internal/zzr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzr;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzs;->zzau:Lcom/google/android/gms/internal/zzr;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzs;->zzas:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/internal/zzs;->zzat:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzs;->zzau:Lcom/google/android/gms/internal/zzr;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzr;->zzd(Lcom/google/android/gms/internal/zzr;)Lcom/google/android/gms/internal/zzaf$zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzs;->zzas:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzs;->zzat:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzaf$zza;->zza(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzs;->zzau:Lcom/google/android/gms/internal/zzr;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzr;->zzd(Lcom/google/android/gms/internal/zzr;)Lcom/google/android/gms/internal/zzaf$zza;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaf$zza;->zzc(Ljava/lang/String;)V

    return-void
.end method
