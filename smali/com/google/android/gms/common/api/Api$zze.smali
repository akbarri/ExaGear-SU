.class public interface abstract Lcom/google/android/gms/common/api/Api$zze;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Api$zzb;


# annotations
.annotation build Lcom/google/android/gms/common/internal/Hide;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/Api;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "zze"
.end annotation


# virtual methods
.method public abstract disconnect()V
.end method

.method public abstract dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract getSignInIntent()Landroid/content/Intent;
.end method

.method public abstract isConnected()Z
.end method

.method public abstract isConnecting()Z
.end method

.method public abstract zza(Lcom/google/android/gms/common/internal/zzan;Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/internal/zzan;",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract zza(Lcom/google/android/gms/common/internal/zzj;)V
.end method

.method public abstract zza(Lcom/google/android/gms/common/internal/zzp;)V
.end method

.method public abstract zzacc()Z
.end method

.method public abstract zzacn()Z
.end method

.method public abstract zzahn()Z
.end method

.method public abstract zzaho()Landroid/os/IBinder;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract zzahp()Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation
.end method

.method public abstract zzahq()I
    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation
.end method
