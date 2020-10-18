.class public abstract Lcom/google/android/gms/common/internal/zzar;
.super Lcom/google/android/gms/internal/zzew;

# interfaces
.implements Lcom/google/android/gms/common/internal/zzaq;


# direct methods
.method public static zzal(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/zzaq;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.common.internal.ICancelToken"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/common/internal/zzaq;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/common/internal/zzaq;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/common/internal/zzas;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/internal/zzas;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1
.end method
