.class final Lcom/google/android/gms/analytics/internal/Command$1;
.super Ljava/lang/Object;
.source "Command.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/analytics/internal/Command;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/gms/analytics/internal/Command;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/analytics/internal/Command;
    .locals 1

    .line 57
    new-instance v0, Lcom/google/android/gms/analytics/internal/Command;

    invoke-direct {v0, p1}, Lcom/google/android/gms/analytics/internal/Command;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 54
    invoke-virtual {p0, p1}, Lcom/google/android/gms/analytics/internal/Command$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/analytics/internal/Command;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/google/android/gms/analytics/internal/Command;
    .locals 0

    .line 62
    new-array p1, p1, [Lcom/google/android/gms/analytics/internal/Command;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 54
    invoke-virtual {p0, p1}, Lcom/google/android/gms/analytics/internal/Command$1;->newArray(I)[Lcom/google/android/gms/analytics/internal/Command;

    move-result-object p1

    return-object p1
.end method
